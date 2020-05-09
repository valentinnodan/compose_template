package smvDebugger.nusmv;

/*Generated by MPS */

import java.util.Objects;

public class VariableData {
  private static final String NAME_DELIMITER = "[.]";
  private static final String EVENT_PORT_DELIMITER = "_";
  private static final String TIME_EVENT_PORT_VALUE = "value";
  private static final String ECC_END_FEATURE = "Q_smv";

  private final String fullName;
  private final String[] values;
  private final String[] nameParts;

  public VariableData(final String fullName, final String[] values) {
    this.fullName = fullName;
    this.values = values;
    this.nameParts = fullName.split(NAME_DELIMITER);
  }

  public String fullName() {
    return fullName;
  }

  public String simpleName() {
    if (isECC()) {
      return fbName() + ".ECC";
    }
    if (isEventPort() || isVarPort()) {
      return fbName() + "." + portName();
    }
    return null;
  }

  public String[] values() {
    return values;
  }

  public String getValue(final int index) {
    return values[index];
  }

  public String fbName() {
    if (isEventPort()) {
      return nameParts[1].split(EVENT_PORT_DELIMITER)[0];
    }
    if (isVarPort() || isECC()) {
      return nameParts[1];
    }
    return null;
  }

  public String portName() {
    if (isEventPort()) {
      return nameParts[1].split(EVENT_PORT_DELIMITER)[1];
    }
    if (isVarPort()) {
      return nameParts[2];
    }
    return null;
  }

  public boolean isPort() {
    return nameParts.length > 1;
  }

  public boolean isEventPort() {
    return isPort() && nameParts[1].contains(EVENT_PORT_DELIMITER) && (nameParts.length == 2 || Objects.equals(nameParts[2], TIME_EVENT_PORT_VALUE));
  }

  public boolean isVarPort() {
    return isPort() && nameParts.length > 2;
  }

  public boolean isECC() {
    return nameParts.length == 3 && Objects.equals(nameParts[2], ECC_END_FEATURE);
  }
}