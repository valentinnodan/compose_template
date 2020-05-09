package smvDebugger.condition;

/*Generated by MPS */

import java.util.Map;

public class Negation implements Expression {
  private final Expression content;

  public Negation(final Expression content) {
    this.content = content;
  }

  public Expression getContent() {
    return content;
  }

  @Override
  public boolean evaluate(final Map<String, String> stepValues) {
    return !(content.evaluate(stepValues));
  }
}