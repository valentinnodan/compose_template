package smvDebugger.visualization;

/*Generated by MPS */

import java.awt.Color;
import jetbrains.mps.project.MPSProject;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import java.util.List;
import java.util.ArrayList;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import jetbrains.mps.openapi.editor.Editor;
import org.fbme.ide.richediting.editor.NetworkInstanceNavigationSupport;
import jetbrains.mps.openapi.editor.EditorComponent;
import org.fbme.ide.richediting.inspections.InspectionManager;
import org.fbme.ide.richediting.inspections.InspectionManagerImpl;
import org.fbme.ide.richediting.inspections.NetworkInspector;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.Objects;
import org.fbme.ide.richediting.inspections.Inspection;
import java.util.Set;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.lib.common.Declaration;
import jetbrains.mps.internal.collections.runtime.SetSequence;

public class CompositeFBHighlighter {
  private static final Color HIGHLIGHT_COLOR = Color.GREEN.darker().darker();

  private final MPSProject project;
  private final CompositeFBTypeDeclaration compositeFB;

  public CompositeFBHighlighter(final MPSProject project, final CompositeFBTypeDeclaration compositeFB) {
    this.project = project;
    this.compositeFB = compositeFB;
  }

  public void highlight(final List<HiglhightObject> objects) {
    runReadAction(ReadActionType.HIGHTLIGHT, objects);
  }

  public void clear() {
    runReadAction(ReadActionType.CLEAR, new ArrayList<HiglhightObject>());
  }

  private void runReadAction(final ReadActionType actionType, final List<HiglhightObject> objects) {
    this.project.getModelAccess().runReadAction(new Runnable() {
      public void run() {
        final NetworkInstance networkInstance = NetworkInstance.createForCompositeFBType(compositeFB);
        final Editor editor = NetworkInstanceNavigationSupport.navigate(project, networkInstance, false);
        final EditorComponent editorComponent = editor.getCurrentEditorComponent();
        final InspectionManager inspectionManager = InspectionManagerImpl.getInstance(editorComponent);
        final NetworkInspector networkInspector = inspectionManager.installInspector(networkInstance, new Runnable() {
          public void run() {
          }
        });

        if (actionType == ReadActionType.CLEAR) {
          networkInspector.clear();
          return;
        }

        final FBNetwork fbNethwork = CompositeFBHighlighter.this.compositeFB.getNetwork();
        final List<FunctionBlockDeclaration> components = fbNethwork.getFunctionBlocks();

        for (final HiglhightObject object : objects) {
          final FunctionBlockDeclaration component = ListSequence.fromList(components).findFirst(new IWhereFilter<FunctionBlockDeclaration>() {
            public boolean accept(FunctionBlockDeclaration it) {
              return Objects.equals(it.getName(), object.fbName());
            }
          });
          if (component != null) {
            if (object.isECC()) {
              networkInspector.setInspectionForComponent(component, new Inspection(object.value(), HIGHLIGHT_COLOR));
            } else {
              final Set<PortPath<? extends Declaration>> ports = component.getPorts();
              final PortPath<? extends Declaration> port = SetSequence.fromSet(ports).findFirst(new IWhereFilter<PortPath<? extends Declaration>>() {
                public boolean accept(PortPath<? extends Declaration> it) {
                  return Objects.equals(it.getPortTarget().getName(), object.portName());
                }
              });
              if (port != null) {
                networkInspector.setInspectionForPort(port, new Inspection(object.value(), HIGHLIGHT_COLOR));
              }
            }
          }
        }
      }
    });
  }

  private enum ReadActionType {
    HIGHTLIGHT(),
    CLEAR()
  }
}