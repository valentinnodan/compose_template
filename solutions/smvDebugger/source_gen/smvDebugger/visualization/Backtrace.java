package smvDebugger.visualization;

/*Generated by MPS */

import java.util.Map;
import java.util.Set;
import java.util.HashMap;
import java.util.HashSet;
import jetbrains.mps.project.MPSProject;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import java.util.List;
import smvDebugger.nusmv.VariableData;
import java.util.function.Consumer;
import java.util.ArrayList;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.Objects;
import org.fbme.lib.iec61499.ecc.StateTransition;
import java.util.function.Predicate;
import org.fbme.lib.iec61499.ecc.ECTransitionCondition;
import java.util.Optional;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.fbme.ide.iec61499.adapter.interfacepart.BasicFBTypeByNode;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class Backtrace {
  private final Map<String, Set<String>> graph = new HashMap<String, Set<String>>();
  private final Set<String> visited = new HashSet<String>();
  private final MPSProject project;
  private final CompositeFBTypeDeclaration fb;

  public Backtrace(final MPSProject project, final CompositeFBTypeDeclaration fb) {
    this.project = project;
    this.fb = fb;
  }

  public List<String> getRelatedObjects(final VariableData var, final String eccName) {
    graph.clear();
    visited.clear();

    if (var.isECC()) {
      backtraceEccState(var.fbName(), eccName);
    } else if (var.isEventPort()) {
      backtraceEvent(var.fbName(), var.portName());
    } else if (var.isVarPort()) {
      backtraceVar(var.fbName(), var.portName());
    }

    final Set<String> relatedObjects = new HashSet<String>();
    relatedObjects.addAll(graph.keySet());
    graph.values().forEach(new Consumer<Set<String>>() {
      public void accept(final Set<String> set) {
        relatedObjects.addAll(set);
      }
    });

    return new ArrayList<String>(relatedObjects);
  }

  private void backtraceEccState(final String curFbName, final String state) {
    this.project.getModelAccess().runReadAction(new Runnable() {
      public void run() {
        final FBNetwork fbNethwork = fb.getNetwork();
        final List<FunctionBlockDeclaration> fbs = fbNethwork.getFunctionBlocks();
        final BasicFBTypeDeclaration curFb = (BasicFBTypeDeclaration) ListSequence.fromList(fbs).findFirst(new IWhereFilter<FunctionBlockDeclaration>() {
          public boolean accept(FunctionBlockDeclaration it) {
            return Objects.equals(it.getName(), curFbName);
          }
        }).getTypeReference().getTarget();
        final List<StateTransition> transitions = curFb.getEcc().getTransitions();
        transitions.stream().filter(new Predicate<StateTransition>() {
          public boolean test(final StateTransition transition) {
            return Objects.equals(transition.getTargetReference().getTarget().getName(), state);
          }
        }).forEach(new Consumer<StateTransition>() {
          public void accept(final StateTransition transition) {
            final ECTransitionCondition condition = transition.getCondition();
            final String fbName = condition.getEventReference().getTarget().getFunctionBlock().getName();
            final String eventName = condition.getEventReference().getTarget().getPortTarget().getName();
            final String fullName = fbName + "." + eventName;
            if (!(visited.contains(fullName))) {
              visited.add(fullName);
              graph.putIfAbsent(fullName, new HashSet<String>());
              graph.get(fullName).add(curFbName + "." + state);
              backtraceEvent(fbName, eventName);
            }
          }
        });
      }
    });
  }

  private void backtraceEvent(final String curFbName, final String event) {
    this.project.getModelAccess().runReadAction(new Runnable() {
      public void run() {
        final FBNetwork fbNethwork = fb.getNetwork();
        final List<FunctionBlockDeclaration> fbs = fbNethwork.getFunctionBlocks();
        final BasicFBTypeDeclaration curFb = (BasicFBTypeDeclaration) ListSequence.fromList(fbs).findFirst(new IWhereFilter<FunctionBlockDeclaration>() {
          public boolean accept(FunctionBlockDeclaration it) {
            return Objects.equals(it.getName(), curFbName);
          }
        }).getTypeReference().getTarget();
        final Optional<EventDeclaration> inputEventOpt = curFb.getInputEvents().stream().filter(new Predicate<EventDeclaration>() {
          public boolean test(final EventDeclaration eventD) {
            return Objects.equals(eventD.getName(), event);
          }
        }).findFirst();
        if (inputEventOpt.isPresent()) {
          final EventDeclaration inputEvent = inputEventOpt.get();
          fbNethwork.getEventConnections().stream().filter(new Predicate<FBNetworkConnection>() {
            public boolean test(FBNetworkConnection con) {
              final String target = (con.getTargetReference().getTarget().getPortTarget()).getName();
              return Objects.equals(target, event);
            }
          }).forEach(new Consumer<FBNetworkConnection>() {
            public void accept(FBNetworkConnection con) {
              final String fbName = con.getSourceReference().getTarget().getFunctionBlock().getName();
              final String eventName = ((EventDeclaration) con.getSourceReference().getTarget().getPortTarget()).getName();
              final String fullName = fbName + "." + eventName;

              if (!(visited.contains(fullName))) {
                visited.add(fullName);
                graph.putIfAbsent(fullName, new HashSet<String>());
                graph.get(fullName).add(curFbName + "." + event);
                backtraceEvent(fbName, eventName);
              }
            }
          });
        }
      }
    });
  }

  private void backtraceVar(final String fb, final String var) {
    final List<List<String>> trace = new ArrayList<List<String>>();
    this.project.getModelAccess().runReadAction(new Runnable() {
      public void run() {
        final FBNetwork fbNethwork = Backtrace.this.compositeFB.getNetwork();
        final List<FunctionBlockDeclarationBase> components = fbNethwork.getContextComponents();
        final List<FBNetworkConnection> connections = fbNethwork.getDataConnections();

        final FunctionBlockDeclarationBase component = ListSequence.fromList(components).findFirst(new IWhereFilter<FunctionBlockDeclarationBase>() {
          public boolean accept(FunctionBlockDeclarationBase it) {
            return it instanceof FunctionBlockDeclaration && Objects.equals(((FunctionBlockDeclaration) it).getName(), fbName);
          }
        });


        if (component instanceof FunctionBlockDeclaration) {
          final FunctionBlockDeclaration blockDeclaration = (FunctionBlockDeclaration) component;
          final  declaration = blockDeclaration.getType().getDeclaration();
          if (declaration instanceof BasicFBTypeByNode) {
            final BasicFBTypeByNode fbTypeByNode = (BasicFBTypeByNode) declaration;
            final SNode node = fbTypeByNode.getNode();
            SLinkOperations.getChildren(node, LINKS.transitions$HOmT);

            for (final SNode algorithm : SLinkOperations.getChildren(node, LINKS.algorithms$xmT2)) {
              SLinkOperations.getTarget(algorithm, LINKS.body$Dbk);
            }
          }
        }
      }
    });
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink transitions$HOmT = MetaAdapterFactory.getContainmentLink(0x6594f3404d734027L, 0xb7d3c6ca2e70a53bL, 0x3b67570398f9c4c1L, 0x3b67570398fc0f65L, "transitions");
    /*package*/ static final SContainmentLink body$Dbk = MetaAdapterFactory.getContainmentLink(0x6594f3404d734027L, 0xb7d3c6ca2e70a53bL, 0x3b67570398fc0e9aL, 0x18e716ae4586366fL, "body");
    /*package*/ static final SContainmentLink algorithms$xmT2 = MetaAdapterFactory.getContainmentLink(0x6594f3404d734027L, 0xb7d3c6ca2e70a53bL, 0x3b67570398f9c4c1L, 0x3b67570398fc0f3bL, "algorithms");
  }
}