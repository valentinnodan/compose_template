<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:dcc8041c-4feb-4a59-913c-c4ff83a14df3(richediting.adapters.fbnetwork)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="5lkm" ref="r:7effb02f-bde4-4d2f-b844-eefa6ab09c8c(scenes.controllers.diagram)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="rvgs" ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(scenes.controllers)" />
    <import index="ubo9" ref="r:15c6feaa-d38f-494f-a105-0b74d654dd08(richediting.adapters.fb)" />
    <import index="xxy3" ref="r:b09c5f9b-eaf5-42ce-8c06-05ad1ccd4ce3(scenes.controllers.components)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="hyqd" ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(scenes.viewmodel)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4ZaR9mNllb3">
    <property role="TrG5h" value="FBConnectionController" />
    <node concept="Wx3nA" id="6tmliaABBg3" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="SELECTION_PADDING" />
      <node concept="3Tm6S6" id="6tmliaABBg0" role="1B3o_S" />
      <node concept="10Oyi0" id="6tmliaABBg1" role="1tU5fm" />
      <node concept="3cmrfG" id="6tmliaABBg2" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="Wx3nA" id="6tmliaB1FmK" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ENDPOINT_HOVER_LENGTH" />
      <node concept="3Tm1VV" id="6$FGuy64ahO" role="1B3o_S" />
      <node concept="10Oyi0" id="6tmliaB1FmI" role="1tU5fm" />
      <node concept="3cmrfG" id="6tmliaB1FmJ" role="33vP2m">
        <property role="3cmrfH" value="20" />
      </node>
    </node>
    <node concept="Wx3nA" id="1CY1mmC1W5R" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ENDPOINTS_PADDING" />
      <node concept="3Tm6S6" id="1CY1mmC1W5O" role="1B3o_S" />
      <node concept="10Oyi0" id="1CY1mmC1W5P" role="1tU5fm" />
      <node concept="10M0yZ" id="4y$DvIXxEyD" role="33vP2m">
        <ref role="3cqZAo" node="4y$DvIXxByO" resolve="ENDPOINTS_PADDING" />
        <ref role="1PxDUh" node="4y$DvIXxa0C" resolve="FBConnectionUtils" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW2Wl5" role="jymVt" />
    <node concept="312cEg" id="4y$DvIW2X6s" role="jymVt">
      <property role="TrG5h" value="myKind" />
      <node concept="3uibUv" id="4y$DvIW2X6t" role="1tU5fm">
        <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
      </node>
      <node concept="3Tm6S6" id="4y$DvIW2X6u" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4y$DvIW2X6v" role="jymVt">
      <property role="TrG5h" value="myIsTemplate" />
      <node concept="3Tm6S6" id="4y$DvIW2X6w" role="1B3o_S" />
      <node concept="10P_77" id="4y$DvIW2X6x" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4y$DvIW3Wia" role="jymVt" />
    <node concept="312cEg" id="4y$DvIW42Im" role="jymVt">
      <property role="TrG5h" value="myView" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIW3X57" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIW42qA" role="1tU5fm">
        <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
      </node>
    </node>
    <node concept="2tJIrI" id="309fsJ6f41u" role="jymVt" />
    <node concept="3clFbW" id="309fsJ6enBS" role="jymVt">
      <node concept="3cqZAl" id="309fsJ6enBT" role="3clF45" />
      <node concept="3Tm1VV" id="309fsJ6enBU" role="1B3o_S" />
      <node concept="3clFbS" id="309fsJ6enBW" role="3clF47">
        <node concept="3clFbF" id="4y$DvIW4nGr" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIW4oxN" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIW4o$W" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIW4mPe" resolve="view" />
            </node>
            <node concept="37vLTw" id="4y$DvIW4nGp" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIW42Im" resolve="myView" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIW4mPe" role="3clF46">
        <property role="TrG5h" value="view" />
        <node concept="3uibUv" id="4y$DvIW4nf_" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW3_DG" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW3ArG" role="jymVt">
      <property role="TrG5h" value="synchronize" />
      <node concept="3Tm1VV" id="4y$DvIW3ArI" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW3ArJ" role="3clF45" />
      <node concept="3clFbS" id="4y$DvIW3ArN" role="3clF47">
        <node concept="3clFbF" id="4y$DvIW3Keu" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIW3LfX" role="3clFbG">
            <node concept="2OqwBi" id="4y$DvIW3LIU" role="37vLTx">
              <node concept="37vLTw" id="4y$DvIW48Aj" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIW42Im" resolve="myView" />
              </node>
              <node concept="liA8E" id="4y$DvIW3MuU" role="2OqNvi">
                <ref role="37wK5l" to="tphl:7qPnRGFNgg3" resolve="getKind" />
              </node>
            </node>
            <node concept="37vLTw" id="4y$DvIW3Ket" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIW2X6s" resolve="myKind" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIW3MAj" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIW3NCK" role="3clFbG">
            <node concept="2OqwBi" id="4y$DvIW3OcA" role="37vLTx">
              <node concept="37vLTw" id="4y$DvIW491P" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIW42Im" resolve="myView" />
              </node>
              <node concept="liA8E" id="4y$DvIW3OFH" role="2OqNvi">
                <ref role="37wK5l" to="tphl:1HEL0zVYR2t" resolve="isTemplate" />
              </node>
            </node>
            <node concept="37vLTw" id="4y$DvIW3MAh" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIW2X6v" resolve="myIsTemplate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW3ArO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPla3V" role="jymVt" />
    <node concept="3clFb_" id="4ZaR9mNllej" role="jymVt">
      <property role="TrG5h" value="paintConneciton" />
      <node concept="3Tm1VV" id="4ZaR9mNllel" role="1B3o_S" />
      <node concept="3cqZAl" id="4ZaR9mNllem" role="3clF45" />
      <node concept="37vLTG" id="1iOpS25mLmM" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1iOpS25tisD" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25mWVE" role="3clF46">
        <property role="TrG5h" value="cursor" />
        <node concept="3uibUv" id="1iOpS25tiON" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25tbmK" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="1iOpS25tbqp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4ZaR9mNllen" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="17nGqbJD_Cb" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="4ZaR9mNllet" role="3clF47">
        <node concept="3clFbF" id="6tmlia_Qo9P" role="3cqZAp">
          <node concept="37vLTI" id="6tmlia_Qoyn" role="3clFbG">
            <node concept="2OqwBi" id="6tmlia_Qp0P" role="37vLTx">
              <node concept="37vLTw" id="17nGqbJD_iO" role="2Oq$k0">
                <ref role="3cqZAo" node="4ZaR9mNllen" resolve="graphics" />
              </node>
              <node concept="liA8E" id="6tmlia_Qpgq" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.create():java.awt.Graphics" resolve="create" />
              </node>
            </node>
            <node concept="37vLTw" id="6tmlia_Qo9N" role="37vLTJ">
              <ref role="3cqZAo" node="4ZaR9mNllen" resolve="graphics" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="309fsJ6tDc9" role="3cqZAp">
          <node concept="2OqwBi" id="309fsJ6tDz0" role="3clFbG">
            <node concept="37vLTw" id="309fsJ6tDjP" role="2Oq$k0">
              <ref role="3cqZAo" node="4ZaR9mNllen" resolve="graphics" />
            </node>
            <node concept="liA8E" id="309fsJ6tE0B" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
              <node concept="2OqwBi" id="6tmliaAKrhT" role="37wK5m">
                <node concept="liA8E" id="6tmliaAKtQ5" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Color.darker():java.awt.Color" resolve="darker" />
                </node>
                <node concept="2YIFZM" id="7pEplJkt3jq" role="2Oq$k0">
                  <ref role="37wK5l" to="ubo9:7pEplJksrRt" resolve="getColorFor" />
                  <ref role="1Pybhc" to="ubo9:2JGKyjit8pv" resolve="DiagramColors" />
                  <node concept="37vLTw" id="4y$DvIW3PRT" role="37wK5m">
                    <ref role="3cqZAo" node="4y$DvIW2X6s" resolve="myKind" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1gL472EC9Zp" role="3cqZAp">
          <node concept="3clFbS" id="1gL472EC9Zr" role="3clFbx">
            <node concept="3clFbF" id="1gL472ECeCp" role="3cqZAp">
              <node concept="2YIFZM" id="1gL472ECeCq" role="3clFbG">
                <ref role="1Pybhc" node="309fsJ6oq8i" resolve="FBConnectionPathPainter" />
                <ref role="37wK5l" node="6$FGuy68ufj" resolve="setupSelectedPathPaint" />
                <node concept="37vLTw" id="1gL472ECeCr" role="37wK5m">
                  <ref role="3cqZAo" node="4ZaR9mNllen" resolve="graphics" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1gL472ECeYI" role="9aQIa">
            <node concept="3clFbS" id="1gL472ECeYJ" role="9aQI4">
              <node concept="3clFbF" id="1gL472ECf6n" role="3cqZAp">
                <node concept="2YIFZM" id="1gL472ECfqi" role="3clFbG">
                  <ref role="37wK5l" node="6$FGuy68w61" resolve="setupRegularPathPaint" />
                  <ref role="1Pybhc" node="309fsJ6oq8i" resolve="FBConnectionPathPainter" />
                  <node concept="37vLTw" id="1gL472ECfqj" role="37wK5m">
                    <ref role="3cqZAo" node="4ZaR9mNllen" resolve="graphics" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1iOpS25ti6Y" role="3clFbw">
            <ref role="3cqZAo" node="1iOpS25tbmK" resolve="selected" />
          </node>
        </node>
        <node concept="3clFbF" id="1gL472ECgH$" role="3cqZAp">
          <node concept="2OqwBi" id="1gL472ECyvI" role="3clFbG">
            <node concept="2ShNRf" id="1gL472ECgHw" role="2Oq$k0">
              <node concept="1pGfFk" id="1gL472ECilQ" role="2ShVmc">
                <ref role="37wK5l" node="309fsJ6owEe" resolve="FBConnectionPathPainter" />
                <node concept="37vLTw" id="1iOpS25uKKt" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS25mLmM" resolve="path" />
                </node>
                <node concept="37vLTw" id="1iOpS25uLk4" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS25mWVE" resolve="cursor" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1gL472ECDg3" role="2OqNvi">
              <ref role="37wK5l" node="309fsJ6oyo$" resolve="paint" />
              <node concept="37vLTw" id="1gL472ECDJX" role="37wK5m">
                <ref role="3cqZAo" node="4ZaR9mNllen" resolve="graphics" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4ZaR9mNlleu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS25tja_" role="jymVt" />
    <node concept="2tJIrI" id="1iOpS25uAMz" role="jymVt" />
    <node concept="3clFb_" id="1iOpS25uEzO" role="jymVt">
      <property role="TrG5h" value="paintTrace" />
      <node concept="3Tm1VV" id="1iOpS25uEzQ" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS25uEzR" role="3clF45" />
      <node concept="37vLTG" id="1iOpS25uEzS" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1iOpS25uEzW" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25uEzU" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="1iOpS25uEzV" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS25uEzX" role="3clF47">
        <node concept="3clFbF" id="1gL472ECGKu" role="3cqZAp">
          <node concept="2YIFZM" id="1gL472ECH5R" role="3clFbG">
            <ref role="37wK5l" node="6$FGuy68xM2" resolve="setupShadowPathPaint" />
            <ref role="1Pybhc" node="309fsJ6oq8i" resolve="FBConnectionPathPainter" />
            <node concept="37vLTw" id="1gL472ECH5S" role="37wK5m">
              <ref role="3cqZAo" node="1iOpS25uEzU" resolve="graphics" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1gL472ECIiD" role="3cqZAp">
          <node concept="2OqwBi" id="1gL472ECIiF" role="3clFbG">
            <node concept="2ShNRf" id="1gL472ECIiG" role="2Oq$k0">
              <node concept="1pGfFk" id="1gL472ECIiH" role="2ShVmc">
                <ref role="37wK5l" node="309fsJ6owEe" resolve="FBConnectionPathPainter" />
                <node concept="37vLTw" id="1iOpS25uJiD" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS25uEzS" resolve="path" />
                </node>
                <node concept="10Nm6u" id="1gL472ECJhT" role="37wK5m" />
              </node>
            </node>
            <node concept="liA8E" id="1gL472ECIiO" role="2OqNvi">
              <ref role="37wK5l" node="309fsJ6oyo$" resolve="paint" />
              <node concept="37vLTw" id="1gL472ECIiP" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS25uEzU" resolve="graphics" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS25uEzY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1gL472E1ucv" role="jymVt" />
    <node concept="3clFb_" id="4ZaR9mNllev" role="jymVt">
      <property role="TrG5h" value="getEdgeTransformation" />
      <node concept="37vLTG" id="1iOpS25tnPG" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1iOpS25tnPH" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="IMWzYPnloS" role="3clF46">
        <property role="TrG5h" value="ex" />
        <node concept="10Oyi0" id="IMWzYPnpxP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IMWzYPnpDt" role="3clF46">
        <property role="TrG5h" value="ey" />
        <node concept="10Oyi0" id="IMWzYPntR4" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4ZaR9mNllex" role="1B3o_S" />
      <node concept="3uibUv" id="IMWzYPoeRe" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="IMWzYPoncz" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="IMWzYPoV9y" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4ZaR9mNlleB" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="4ZaR9mNlleC" role="3clF47">
        <node concept="3clFbH" id="309fsJ6h6dX" role="3cqZAp" />
        <node concept="3cpWs8" id="309fsJ6h6ek" role="3cqZAp">
          <node concept="3cpWsn" id="309fsJ6h6el" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="309fsJ6h6em" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="309fsJ6_s0p" role="33vP2m">
              <node concept="37vLTw" id="IMWzYPo2Cx" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25tnPG" resolve="path" />
              </node>
              <node concept="liA8E" id="309fsJ6_t4j" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="309fsJ6h6eq" role="3cqZAp">
          <node concept="3cpWsn" id="309fsJ6h6er" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="3uibUv" id="309fsJ6h6es" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="309fsJ6_u36" role="33vP2m">
              <node concept="liA8E" id="309fsJ6_wfw" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
              </node>
              <node concept="37vLTw" id="IMWzYPo2Cy" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25tnPG" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4KEbQai8pD5" role="3cqZAp">
          <node concept="3cpWsn" id="4KEbQai8pD6" role="3cpWs9">
            <property role="TrG5h" value="x1" />
            <node concept="10Oyi0" id="4KEbQai8pD7" role="1tU5fm" />
            <node concept="2OqwBi" id="IMWzYPnQ2G" role="33vP2m">
              <node concept="37vLTw" id="IMWzYPo2Cz" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25tnPG" resolve="path" />
              </node>
              <node concept="liA8E" id="IMWzYPnUg1" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4KEbQai0v$z" role="3cqZAp">
          <node concept="3cpWsn" id="4KEbQai0v$$" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="4KEbQai0v$_" role="1tU5fm" />
            <node concept="2OqwBi" id="IMWzYPnVEa" role="33vP2m">
              <node concept="37vLTw" id="IMWzYPo2C$" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25tnPG" resolve="path" />
              </node>
              <node concept="liA8E" id="IMWzYPnVEe" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmW" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4KEbQai0v$K" role="3cqZAp">
          <node concept="3cpWsn" id="4KEbQai0v$L" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10Oyi0" id="4KEbQai0v$M" role="1tU5fm" />
            <node concept="2OqwBi" id="IMWzYPnYAx" role="33vP2m">
              <node concept="37vLTw" id="IMWzYPo2C_" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25tnPG" resolve="path" />
              </node>
              <node concept="liA8E" id="IMWzYPnYA_" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="309fsJ6h6f5" role="3cqZAp" />
        <node concept="3KaCP$" id="309fsJ6h6f6" role="3cqZAp">
          <node concept="2OqwBi" id="6$FGuy5IxGz" role="3KbGdf">
            <node concept="37vLTw" id="IMWzYPodJr" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS25tnPG" resolve="path" />
            </node>
            <node concept="liA8E" id="6$FGuy5IAgK" role="2OqNvi">
              <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
            </node>
          </node>
          <node concept="3KbdKl" id="309fsJ6h6fa" role="3KbHQx">
            <node concept="Rm8GO" id="309fsJ6h6fb" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
            </node>
            <node concept="3clFbS" id="309fsJ6h6fc" role="3Kbo56">
              <node concept="3clFbJ" id="5FPxgJnvvhc" role="3cqZAp">
                <node concept="3clFbS" id="5FPxgJnvvhe" role="3clFbx">
                  <node concept="3cpWs6" id="7_KjZP985oX" role="3cqZAp">
                    <node concept="1rXfSq" id="7_KjZP98rdV" role="3cqZAk">
                      <ref role="37wK5l" node="IMWzYPsCLv" resolve="getX1EdgePathTransformation" />
                      <node concept="37vLTw" id="7_KjZP98wK9" role="37wK5m">
                        <ref role="3cqZAo" node="1iOpS25tnPG" resolve="path" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="5FPxgJnvw6z" role="3clFbw">
                  <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                  <node concept="37vLTw" id="5FPxgJnvxYA" role="37wK5m">
                    <ref role="3cqZAo" node="IMWzYPnpDt" resolve="ey" />
                  </node>
                  <node concept="37vLTw" id="5FPxgJnvwxm" role="37wK5m">
                    <ref role="3cqZAo" node="IMWzYPnloS" resolve="ex" />
                  </node>
                  <node concept="2OqwBi" id="5FPxgJnvzN4" role="37wK5m">
                    <node concept="37vLTw" id="5FPxgJnvz$k" role="2Oq$k0">
                      <ref role="3cqZAo" node="309fsJ6h6el" resolve="s" />
                    </node>
                    <node concept="2OwXpG" id="5FPxgJnvD$1" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4KEbQai0J48" role="37wK5m">
                    <ref role="3cqZAo" node="4KEbQai8pD6" resolve="x1" />
                  </node>
                  <node concept="2OqwBi" id="5FPxgJnvFwU" role="37wK5m">
                    <node concept="37vLTw" id="5FPxgJnvFcP" role="2Oq$k0">
                      <ref role="3cqZAo" node="309fsJ6h6er" resolve="t" />
                    </node>
                    <node concept="2OwXpG" id="5FPxgJnvLhV" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="309fsJ6o3BV" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="309fsJ6h6fO" role="3KbHQx">
            <node concept="Rm8GO" id="309fsJ6h6fP" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
            </node>
            <node concept="3clFbS" id="309fsJ6h6fQ" role="3Kbo56">
              <node concept="3clFbJ" id="309fsJ6h6fR" role="3cqZAp">
                <node concept="1Wc70l" id="309fsJ6h6fS" role="3clFbw">
                  <node concept="1Wc70l" id="309fsJ6h6fT" role="3uHU7B">
                    <node concept="3eOVzh" id="309fsJ6h6fU" role="3uHU7B">
                      <node concept="2YIFZM" id="309fsJ6h6fV" role="3uHU7B">
                        <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                        <ref role="37wK5l" to="wyt6:~Math.abs(int):int" resolve="abs" />
                        <node concept="3cpWsd" id="309fsJ6h6fW" role="37wK5m">
                          <node concept="37vLTw" id="4KEbQai0J21" role="3uHU7w">
                            <ref role="3cqZAo" node="4KEbQai8pD6" resolve="x1" />
                          </node>
                          <node concept="37vLTw" id="309fsJ6nd5R" role="3uHU7B">
                            <ref role="3cqZAo" node="IMWzYPnloS" resolve="ex" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6tmliaABBgd" role="3uHU7w">
                        <ref role="3cqZAo" node="6tmliaABBg3" resolve="SELECTION_PADDING" />
                      </node>
                    </node>
                    <node concept="3eOSWO" id="309fsJ6h6g0" role="3uHU7w">
                      <node concept="37vLTw" id="309fsJ6ngL_" role="3uHU7B">
                        <ref role="3cqZAo" node="IMWzYPnpDt" resolve="ey" />
                      </node>
                      <node concept="2YIFZM" id="309fsJ6h6g2" role="3uHU7w">
                        <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                        <ref role="37wK5l" to="wyt6:~Math.min(int,int):int" resolve="min" />
                        <node concept="2OqwBi" id="309fsJ6h6g3" role="37wK5m">
                          <node concept="37vLTw" id="309fsJ6h6g4" role="2Oq$k0">
                            <ref role="3cqZAo" node="309fsJ6h6el" resolve="s" />
                          </node>
                          <node concept="2OwXpG" id="309fsJ6h6g5" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4KEbQai0Jtq" role="37wK5m">
                          <ref role="3cqZAo" node="4KEbQai0v$$" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOVzh" id="309fsJ6h6g7" role="3uHU7w">
                    <node concept="37vLTw" id="309fsJ6ni0C" role="3uHU7B">
                      <ref role="3cqZAo" node="IMWzYPnpDt" resolve="ey" />
                    </node>
                    <node concept="2YIFZM" id="309fsJ6h6g9" role="3uHU7w">
                      <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                      <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
                      <node concept="2OqwBi" id="309fsJ6h6ga" role="37wK5m">
                        <node concept="37vLTw" id="309fsJ6h6gb" role="2Oq$k0">
                          <ref role="3cqZAo" node="309fsJ6h6el" resolve="s" />
                        </node>
                        <node concept="2OwXpG" id="309fsJ6h6gc" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4KEbQai0J6f" role="37wK5m">
                        <ref role="3cqZAo" node="4KEbQai0v$$" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="309fsJ6h6ge" role="3clFbx">
                  <node concept="3cpWs6" id="7_KjZP98JAg" role="3cqZAp">
                    <node concept="1rXfSq" id="7_KjZP98JAh" role="3cqZAk">
                      <ref role="37wK5l" node="IMWzYPsCLv" resolve="getX1EdgePathTransformation" />
                      <node concept="37vLTw" id="7_KjZP98JAi" role="37wK5m">
                        <ref role="3cqZAo" node="1iOpS25tnPG" resolve="path" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="5FPxgJnwwIU" role="3eNLev">
                  <node concept="3clFbS" id="5FPxgJnwwIW" role="3eOfB_">
                    <node concept="3cpWs6" id="7_KjZP98MOY" role="3cqZAp">
                      <node concept="1rXfSq" id="7_KjZP98MOZ" role="3cqZAk">
                        <ref role="37wK5l" node="7_KjZP96TFr" resolve="getYEdgePathTransformation" />
                        <node concept="37vLTw" id="7_KjZP98MP0" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS25tnPG" resolve="path" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="309fsJ6h6gr" role="3eO9$A">
                    <node concept="1Wc70l" id="309fsJ6h6gs" role="3uHU7B">
                      <node concept="3eOVzh" id="309fsJ6h6gt" role="3uHU7B">
                        <node concept="2YIFZM" id="309fsJ6h6gu" role="3uHU7B">
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <ref role="37wK5l" to="wyt6:~Math.abs(int):int" resolve="abs" />
                          <node concept="3cpWsd" id="309fsJ6h6gv" role="37wK5m">
                            <node concept="37vLTw" id="4KEbQai0JeE" role="3uHU7w">
                              <ref role="3cqZAo" node="4KEbQai0v$$" resolve="y" />
                            </node>
                            <node concept="37vLTw" id="309fsJ6nekV" role="3uHU7B">
                              <ref role="3cqZAo" node="IMWzYPnpDt" resolve="ey" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="5FPxgJnw$h1" role="3uHU7w">
                          <ref role="3cqZAo" node="6tmliaABBg3" resolve="SELECTION_PADDING" />
                        </node>
                      </node>
                      <node concept="3eOSWO" id="309fsJ6h6gz" role="3uHU7w">
                        <node concept="37vLTw" id="309fsJ6nlK9" role="3uHU7B">
                          <ref role="3cqZAo" node="IMWzYPnloS" resolve="ex" />
                        </node>
                        <node concept="2YIFZM" id="309fsJ6h6g_" role="3uHU7w">
                          <ref role="37wK5l" to="wyt6:~Math.min(int,int):int" resolve="min" />
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <node concept="37vLTw" id="4KEbQai0J8m" role="37wK5m">
                            <ref role="3cqZAo" node="4KEbQai8pD6" resolve="x1" />
                          </node>
                          <node concept="37vLTw" id="4KEbQai0IZV" role="37wK5m">
                            <ref role="3cqZAo" node="4KEbQai0v$L" resolve="x2" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eOVzh" id="309fsJ6h6gC" role="3uHU7w">
                      <node concept="37vLTw" id="309fsJ6nn5o" role="3uHU7B">
                        <ref role="3cqZAo" node="IMWzYPnloS" resolve="ex" />
                      </node>
                      <node concept="2YIFZM" id="309fsJ6h6gE" role="3uHU7w">
                        <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                        <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
                        <node concept="37vLTw" id="4KEbQai0IXO" role="37wK5m">
                          <ref role="3cqZAo" node="4KEbQai8pD6" resolve="x1" />
                        </node>
                        <node concept="37vLTw" id="4KEbQai0Jpd" role="37wK5m">
                          <ref role="3cqZAo" node="4KEbQai0v$L" resolve="x2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="5FPxgJnwHwd" role="3eNLev">
                  <node concept="3clFbS" id="5FPxgJnwHwf" role="3eOfB_">
                    <node concept="3cpWs6" id="7_KjZP98WOP" role="3cqZAp">
                      <node concept="1rXfSq" id="7_KjZP98WOQ" role="3cqZAk">
                        <ref role="37wK5l" node="7_KjZP95MaH" resolve="getX2EdgePathTransformation" />
                        <node concept="37vLTw" id="7_KjZP98WOR" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS25tnPG" resolve="path" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="309fsJ6h6gU" role="3eO9$A">
                    <node concept="1Wc70l" id="309fsJ6h6gV" role="3uHU7B">
                      <node concept="3eOVzh" id="309fsJ6h6gW" role="3uHU7B">
                        <node concept="2YIFZM" id="309fsJ6h6gX" role="3uHU7B">
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <ref role="37wK5l" to="wyt6:~Math.abs(int):int" resolve="abs" />
                          <node concept="3cpWsd" id="309fsJ6h6gY" role="37wK5m">
                            <node concept="37vLTw" id="4KEbQai0Jrj" role="3uHU7w">
                              <ref role="3cqZAo" node="4KEbQai0v$L" resolve="x2" />
                            </node>
                            <node concept="37vLTw" id="309fsJ6nfzZ" role="3uHU7B">
                              <ref role="3cqZAo" node="IMWzYPnloS" resolve="ex" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="5FPxgJnwIrK" role="3uHU7w">
                          <ref role="3cqZAo" node="6tmliaABBg3" resolve="SELECTION_PADDING" />
                        </node>
                      </node>
                      <node concept="3eOSWO" id="309fsJ6h6h2" role="3uHU7w">
                        <node concept="37vLTw" id="309fsJ6nkvk" role="3uHU7B">
                          <ref role="3cqZAo" node="IMWzYPnpDt" resolve="ey" />
                        </node>
                        <node concept="2YIFZM" id="309fsJ6h6h4" role="3uHU7w">
                          <ref role="37wK5l" to="wyt6:~Math.min(int,int):int" resolve="min" />
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <node concept="37vLTw" id="4KEbQai0Jn6" role="37wK5m">
                            <ref role="3cqZAo" node="4KEbQai0v$$" resolve="y" />
                          </node>
                          <node concept="2OqwBi" id="309fsJ6h6h6" role="37wK5m">
                            <node concept="2OwXpG" id="309fsJ6h6h7" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                            <node concept="37vLTw" id="309fsJ6h6h8" role="2Oq$k0">
                              <ref role="3cqZAo" node="309fsJ6h6er" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eOVzh" id="309fsJ6h6h9" role="3uHU7w">
                      <node concept="37vLTw" id="309fsJ6njfF" role="3uHU7B">
                        <ref role="3cqZAo" node="IMWzYPnpDt" resolve="ey" />
                      </node>
                      <node concept="2YIFZM" id="309fsJ6h6hb" role="3uHU7w">
                        <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
                        <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                        <node concept="37vLTw" id="4KEbQai0JkZ" role="37wK5m">
                          <ref role="3cqZAo" node="4KEbQai0v$$" resolve="y" />
                        </node>
                        <node concept="2OqwBi" id="309fsJ6h6hd" role="37wK5m">
                          <node concept="2OwXpG" id="309fsJ6h6he" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                          </node>
                          <node concept="37vLTw" id="309fsJ6h6hf" role="2Oq$k0">
                            <ref role="3cqZAo" node="309fsJ6h6er" resolve="t" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="309fsJ6o46P" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="309fsJ6o9cY" role="3cqZAp">
          <node concept="10Nm6u" id="7_KjZP998dh" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4ZaR9mNlleD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1gL472E1$g5" role="jymVt" />
    <node concept="3clFb_" id="1gL472E1E8x" role="jymVt">
      <property role="TrG5h" value="isSourceTransformableAt" />
      <node concept="3Tm1VV" id="1gL472E1E8z" role="1B3o_S" />
      <node concept="10P_77" id="1gL472E1E8$" role="3clF45" />
      <node concept="37vLTG" id="1iOpS25t_g6" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1iOpS25t_g7" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="1gL472E1E8_" role="3clF46">
        <property role="TrG5h" value="ex" />
        <node concept="10Oyi0" id="1gL472E1E8A" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1gL472E1E8B" role="3clF46">
        <property role="TrG5h" value="ey" />
        <node concept="10Oyi0" id="1gL472E1E8C" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1gL472E1E8D" role="3clF47">
        <node concept="3cpWs8" id="1gL472E1Kc6" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472E1Kc7" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="1gL472E1Kc8" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="1gL472E1Kc9" role="33vP2m">
              <node concept="37vLTw" id="1iOpS25tInC" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25t_g6" resolve="path" />
              </node>
              <node concept="liA8E" id="1gL472E1Kcb" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1gL472E1Kci" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472E1Kcj" role="3cpWs9">
            <property role="TrG5h" value="x1" />
            <node concept="10Oyi0" id="1gL472E1Kck" role="1tU5fm" />
            <node concept="2OqwBi" id="1gL472E1Kcl" role="33vP2m">
              <node concept="37vLTw" id="1iOpS25tIpY" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25t_g6" resolve="path" />
              </node>
              <node concept="liA8E" id="1gL472E1Kcn" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1gL472E3243" role="3cqZAp" />
        <node concept="3cpWs6" id="1gL472E2u9S" role="3cqZAp">
          <node concept="1rXfSq" id="1gL472E1O6Q" role="3cqZAk">
            <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
            <node concept="37vLTw" id="1gL472E1O6R" role="37wK5m">
              <ref role="3cqZAo" node="1gL472E1E8_" resolve="ex" />
            </node>
            <node concept="37vLTw" id="1gL472E1O6S" role="37wK5m">
              <ref role="3cqZAo" node="1gL472E1E8B" resolve="ey" />
            </node>
            <node concept="2OqwBi" id="1gL472E1O6T" role="37wK5m">
              <node concept="2OwXpG" id="1gL472E1O6U" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
              </node>
              <node concept="37vLTw" id="1gL472E1O6V" role="2Oq$k0">
                <ref role="3cqZAo" node="1gL472E1Kc7" resolve="s" />
              </node>
            </node>
            <node concept="2OqwBi" id="1gL472E1O6W" role="37wK5m">
              <node concept="2OwXpG" id="1gL472E1O6X" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
              </node>
              <node concept="37vLTw" id="1gL472E1O6Y" role="2Oq$k0">
                <ref role="3cqZAo" node="1gL472E1Kc7" resolve="s" />
              </node>
            </node>
            <node concept="2YIFZM" id="1gL472E1O6Z" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="2OqwBi" id="1gL472E1O70" role="37wK5m">
                <node concept="2OwXpG" id="1gL472E1O71" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
                <node concept="37vLTw" id="1gL472E1O72" role="2Oq$k0">
                  <ref role="3cqZAo" node="1gL472E1Kc7" resolve="s" />
                </node>
              </node>
              <node concept="2YIFZM" id="1gL472E1O73" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Math.min(int,int):int" resolve="min" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="3cpWs3" id="1gL472E1O74" role="37wK5m">
                  <node concept="2OqwBi" id="1gL472E1O75" role="3uHU7B">
                    <node concept="2OwXpG" id="1gL472E1O76" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="1gL472E1O77" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472E1Kc7" resolve="s" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1gL472E2u9Z" role="3uHU7w">
                    <ref role="3cqZAo" node="6tmliaB1FmK" resolve="ENDPOINT_HOVER_LENGTH" />
                  </node>
                </node>
                <node concept="37vLTw" id="1gL472E1O78" role="37wK5m">
                  <ref role="3cqZAo" node="1gL472E1Kcj" resolve="x1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1gL472E1NHK" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="1gL472E1E8E" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1gL472E1E8H" role="jymVt">
      <property role="TrG5h" value="isTargetTransformableAt" />
      <node concept="3Tm1VV" id="1gL472E1E8J" role="1B3o_S" />
      <node concept="10P_77" id="1gL472E1E8K" role="3clF45" />
      <node concept="37vLTG" id="1iOpS25tMi7" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1iOpS25tMi8" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="1gL472E1E8L" role="3clF46">
        <property role="TrG5h" value="ex" />
        <node concept="10Oyi0" id="1gL472E1E8M" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1gL472E1E8N" role="3clF46">
        <property role="TrG5h" value="ey" />
        <node concept="10Oyi0" id="1gL472E1E8O" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1gL472E1E8P" role="3clF47">
        <node concept="3cpWs8" id="1gL472E3k9t" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472E3k9u" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="3uibUv" id="1gL472E3k9v" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="1gL472E3k9w" role="33vP2m">
              <node concept="liA8E" id="1gL472E3k9x" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
              </node>
              <node concept="37vLTw" id="1gL472E3k9y" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25tMi7" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1gL472E3k9z" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472E3k9$" role="3cpWs9">
            <property role="TrG5h" value="x1" />
            <node concept="10Oyi0" id="1gL472E3k9_" role="1tU5fm" />
            <node concept="2OqwBi" id="1gL472E3k9A" role="33vP2m">
              <node concept="37vLTw" id="1gL472E3k9B" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25tMi7" resolve="path" />
              </node>
              <node concept="liA8E" id="1gL472E3k9C" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1gL472E3k9J" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472E3k9K" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10Oyi0" id="1gL472E3k9L" role="1tU5fm" />
            <node concept="2OqwBi" id="1gL472E3k9M" role="33vP2m">
              <node concept="37vLTw" id="1gL472E3k9N" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25tMi7" resolve="path" />
              </node>
              <node concept="liA8E" id="1gL472E3k9O" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1gL472E3k9P" role="3cqZAp" />
        <node concept="3KaCP$" id="1gL472E3k9Q" role="3cqZAp">
          <node concept="2OqwBi" id="1gL472E3k9R" role="3KbGdf">
            <node concept="37vLTw" id="1gL472E3k9S" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS25tMi7" resolve="path" />
            </node>
            <node concept="liA8E" id="1gL472E3k9T" role="2OqNvi">
              <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
            </node>
          </node>
          <node concept="3KbdKl" id="1gL472E3k9U" role="3KbHQx">
            <node concept="Rm8GO" id="1gL472E3k9V" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
            </node>
            <node concept="3clFbS" id="1gL472E3k9W" role="3Kbo56">
              <node concept="3cpWs6" id="1gL472E3Ao8" role="3cqZAp">
                <node concept="1rXfSq" id="1gL472E3kaP" role="3cqZAk">
                  <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                  <node concept="37vLTw" id="1gL472E3kaQ" role="37wK5m">
                    <ref role="3cqZAo" node="1gL472E1E8L" resolve="ex" />
                  </node>
                  <node concept="37vLTw" id="1gL472E3kaR" role="37wK5m">
                    <ref role="3cqZAo" node="1gL472E1E8N" resolve="ey" />
                  </node>
                  <node concept="2OqwBi" id="1gL472E3kaS" role="37wK5m">
                    <node concept="2OwXpG" id="1gL472E3kaT" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="1gL472E3kaU" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472E3k9u" resolve="t" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1gL472E3kaV" role="37wK5m">
                    <node concept="2OwXpG" id="1gL472E3kaW" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="1gL472E3kaX" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472E3k9u" resolve="t" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="1gL472E3kaY" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                    <ref role="37wK5l" to="wyt6:~Math.min(int,int):int" resolve="min" />
                    <node concept="2OqwBi" id="1gL472E3kaZ" role="37wK5m">
                      <node concept="2OwXpG" id="1gL472E3kb0" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="1gL472E3kb1" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472E3k9u" resolve="t" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="1gL472E3kb2" role="37wK5m">
                      <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
                      <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                      <node concept="3cpWsd" id="1gL472E3kb3" role="37wK5m">
                        <node concept="37vLTw" id="1gL472E3Aof" role="3uHU7w">
                          <ref role="3cqZAo" node="6tmliaB1FmK" resolve="ENDPOINT_HOVER_LENGTH" />
                        </node>
                        <node concept="2OqwBi" id="1gL472E3kb4" role="3uHU7B">
                          <node concept="37vLTw" id="1gL472E3kb5" role="2Oq$k0">
                            <ref role="3cqZAo" node="1gL472E3k9u" resolve="t" />
                          </node>
                          <node concept="2OwXpG" id="1gL472E3kb6" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1gL472E3kb7" role="37wK5m">
                        <ref role="3cqZAo" node="1gL472E3k9$" resolve="x1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1gL472E3kb9" role="3KbHQx">
            <node concept="Rm8GO" id="1gL472E3kba" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
            </node>
            <node concept="3clFbS" id="1gL472E3kbb" role="3Kbo56">
              <node concept="3cpWs6" id="1gL472E3XnI" role="3cqZAp">
                <node concept="1rXfSq" id="1gL472E3kcZ" role="3cqZAk">
                  <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                  <node concept="37vLTw" id="1gL472E3kd0" role="37wK5m">
                    <ref role="3cqZAo" node="1gL472E1E8L" resolve="ex" />
                  </node>
                  <node concept="37vLTw" id="1gL472E3kd1" role="37wK5m">
                    <ref role="3cqZAo" node="1gL472E1E8N" resolve="ey" />
                  </node>
                  <node concept="2OqwBi" id="1gL472E3kd2" role="37wK5m">
                    <node concept="2OwXpG" id="1gL472E3kd3" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="1gL472E3kd4" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472E3k9u" resolve="t" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1gL472E3kd5" role="37wK5m">
                    <node concept="2OwXpG" id="1gL472E3kd6" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="1gL472E3kd7" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472E3k9u" resolve="t" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="1gL472E3kd8" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~Math.min(int,int):int" resolve="min" />
                    <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                    <node concept="2OqwBi" id="1gL472E3kd9" role="37wK5m">
                      <node concept="2OwXpG" id="1gL472E3kda" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="1gL472E3kdb" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472E3k9u" resolve="t" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="1gL472E3kdc" role="37wK5m">
                      <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
                      <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                      <node concept="3cpWsd" id="1gL472E3kdd" role="37wK5m">
                        <node concept="37vLTw" id="1gL472E3XnP" role="3uHU7w">
                          <ref role="3cqZAo" node="6tmliaB1FmK" resolve="ENDPOINT_HOVER_LENGTH" />
                        </node>
                        <node concept="2OqwBi" id="1gL472E3kde" role="3uHU7B">
                          <node concept="37vLTw" id="1gL472E3kdf" role="2Oq$k0">
                            <ref role="3cqZAo" node="1gL472E3k9u" resolve="t" />
                          </node>
                          <node concept="2OwXpG" id="1gL472E3kdg" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1gL472E3kdh" role="37wK5m">
                        <ref role="3cqZAo" node="1gL472E3k9K" resolve="x2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1gL472E3kdQ" role="3cqZAp">
          <node concept="3clFbT" id="1gL472E43wC" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1gL472E1E8Q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1gL472DYDUu" role="jymVt">
      <property role="TrG5h" value="getSourceTransformation" />
      <node concept="37vLTG" id="1iOpS25tY8U" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1iOpS25tY8V" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1gL472DYDUz" role="1B3o_S" />
      <node concept="3uibUv" id="1gL472DYDU$" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="1gL472DYDU_" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1gL472DYDUA" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1gL472DYDUB" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1gL472DYDUC" role="3clF47">
        <node concept="3clFbF" id="1gL472DZDr4" role="3cqZAp">
          <node concept="1rXfSq" id="1gL472DZDr2" role="3clFbG">
            <ref role="37wK5l" node="7_KjZP9o5S0" resolve="getConnectionSourceTransformation" />
            <node concept="37vLTw" id="1iOpS25u1BW" role="37wK5m">
              <ref role="3cqZAo" node="1iOpS25tY8U" resolve="path" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1gL472DYDYP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1gL472E0Ayb" role="jymVt">
      <property role="TrG5h" value="getTargetTransformation" />
      <node concept="37vLTG" id="1iOpS25u1V5" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1iOpS25u1V6" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1gL472E0Ayc" role="1B3o_S" />
      <node concept="3uibUv" id="1gL472E0Ayd" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="1gL472E0Aye" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1gL472E0Ayf" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1gL472E0Ayg" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1gL472E0Ayh" role="3clF47">
        <node concept="3clFbF" id="1gL472E0Ayi" role="3cqZAp">
          <node concept="1rXfSq" id="1gL472E0Ayj" role="3clFbG">
            <ref role="37wK5l" node="1gL472D$BK5" resolve="getConnectionTargetTransformation" />
            <node concept="37vLTw" id="1iOpS25u5hg" role="37wK5m">
              <ref role="3cqZAo" node="1iOpS25u1V5" resolve="path" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1gL472E0Ayn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1gL472E0eCO" role="jymVt">
      <property role="TrG5h" value="getEndpointsTransformation" />
      <node concept="37vLTG" id="1iOpS25u5_J" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1iOpS25u5_K" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1gL472E0eCP" role="1B3o_S" />
      <node concept="3uibUv" id="1gL472E0eCQ" role="3clF45">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="1iOpS25aiId" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1gL472E0eCR" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1gL472E0eCS" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1gL472E0eCT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1gL472E0eCU" role="3clF47">
        <node concept="3clFbF" id="1gL472EBdUL" role="3cqZAp">
          <node concept="1bVj0M" id="1gL472EBdUH" role="3clFbG">
            <node concept="3clFbS" id="1gL472EBdUJ" role="1bW5cS">
              <node concept="3cpWs8" id="1iOpS25aLof" role="3cqZAp">
                <node concept="3cpWsn" id="1iOpS25aLog" role="3cpWs9">
                  <property role="TrG5h" value="originalSourcePosition" />
                  <node concept="3uibUv" id="1iOpS25aLod" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                  <node concept="2OqwBi" id="1iOpS25aLoh" role="33vP2m">
                    <node concept="37vLTw" id="1iOpS25aLoi" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS25u5_J" resolve="path" />
                    </node>
                    <node concept="liA8E" id="1iOpS25aLoj" role="2OqNvi">
                      <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1iOpS25avcC" role="3cqZAp">
                <node concept="3cpWsn" id="1iOpS25avcF" role="3cpWs9">
                  <property role="TrG5h" value="dx" />
                  <node concept="10Oyi0" id="1iOpS25avcA" role="1tU5fm" />
                  <node concept="3cpWsd" id="1iOpS25awBP" role="33vP2m">
                    <node concept="2OqwBi" id="1iOpS25aCLI" role="3uHU7w">
                      <node concept="37vLTw" id="1iOpS25aLok" role="2Oq$k0">
                        <ref role="3cqZAo" node="1iOpS25aLog" resolve="originalSourcePosition" />
                      </node>
                      <node concept="2OwXpG" id="1iOpS25aH2F" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1iOpS25axBv" role="3uHU7B">
                      <node concept="37vLTw" id="1iOpS25avZn" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472EBe0b" resolve="sourcePosition" />
                      </node>
                      <node concept="2OwXpG" id="1iOpS25ay0Y" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1iOpS25aJrM" role="3cqZAp">
                <node concept="3cpWsn" id="1iOpS25aJrN" role="3cpWs9">
                  <property role="TrG5h" value="dy" />
                  <node concept="10Oyi0" id="1iOpS25aJrO" role="1tU5fm" />
                  <node concept="3cpWsd" id="1iOpS25aJrP" role="33vP2m">
                    <node concept="2OqwBi" id="1iOpS25aJrQ" role="3uHU7w">
                      <node concept="37vLTw" id="1iOpS25aRXP" role="2Oq$k0">
                        <ref role="3cqZAo" node="1iOpS25aLog" resolve="originalSourcePosition" />
                      </node>
                      <node concept="2OwXpG" id="1iOpS25aWU4" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1iOpS25aJrV" role="3uHU7B">
                      <node concept="37vLTw" id="1iOpS25aJrW" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472EBe0b" resolve="sourcePosition" />
                      </node>
                      <node concept="2OwXpG" id="1iOpS25aZpF" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1gL472EBfUO" role="3cqZAp">
                <node concept="2ShNRf" id="1gL472EBfUM" role="3clFbG">
                  <node concept="1pGfFk" id="1gL472EBgAn" role="2ShVmc">
                    <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                    <node concept="37vLTw" id="1iOpS25b7Ik" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472EBe0b" resolve="sourcePosition" />
                    </node>
                    <node concept="37vLTw" id="1iOpS25b7K_" role="37wK5m">
                      <ref role="3cqZAo" node="1iOpS25arnh" resolve="targetPosition" />
                    </node>
                    <node concept="2OqwBi" id="1gL472EBHLN" role="37wK5m">
                      <node concept="37vLTw" id="1gL472EBHyT" role="2Oq$k0">
                        <ref role="3cqZAo" node="1iOpS25u5_J" resolve="path" />
                      </node>
                      <node concept="liA8E" id="1gL472EBI1j" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="1gL472EBPzY" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS25bbXt" role="3uHU7w">
                        <ref role="3cqZAo" node="1iOpS25avcF" resolve="dx" />
                      </node>
                      <node concept="2OqwBi" id="1gL472EBIFU" role="3uHU7B">
                        <node concept="37vLTw" id="1gL472EBIs9" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25u5_J" resolve="path" />
                        </node>
                        <node concept="liA8E" id="1gL472EBNcX" role="2OqNvi">
                          <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs3" id="1gL472EBS_9" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS25b8XM" role="3uHU7w">
                        <ref role="3cqZAo" node="1iOpS25aJrN" resolve="dy" />
                      </node>
                      <node concept="2OqwBi" id="1gL472EBS_d" role="3uHU7B">
                        <node concept="37vLTw" id="1gL472EBS_e" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25u5_J" resolve="path" />
                        </node>
                        <node concept="liA8E" id="1gL472EBS_f" role="2OqNvi">
                          <ref role="37wK5l" node="IMWzYPgcmW" resolve="getY" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs3" id="1gL472EBXuI" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS25ba3X" role="3uHU7w">
                        <ref role="3cqZAo" node="1iOpS25avcF" resolve="dx" />
                      </node>
                      <node concept="2OqwBi" id="1gL472EBXuM" role="3uHU7B">
                        <node concept="37vLTw" id="1gL472EBXuN" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25u5_J" resolve="path" />
                        </node>
                        <node concept="liA8E" id="1gL472EBXuO" role="2OqNvi">
                          <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="1gL472EBe0b" role="1bW2Oz">
              <property role="TrG5h" value="sourcePosition" />
              <node concept="3uibUv" id="1gL472EBe0a" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
            <node concept="37vLTG" id="1iOpS25arnh" role="1bW2Oz">
              <property role="TrG5h" value="targetPosition" />
              <node concept="3uibUv" id="1iOpS25arJT" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1gL472E0eD0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaACUA9" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAD31G" role="jymVt">
      <property role="TrG5h" value="checkLineSelection" />
      <node concept="3clFbS" id="6tmliaAD31J" role="3clF47">
        <node concept="3clFbJ" id="6tmliaADJkJ" role="3cqZAp">
          <node concept="3clFbS" id="6tmliaADJkL" role="3clFbx">
            <node concept="3clFbJ" id="6tmliaADBOZ" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaADBP1" role="3clFbx">
                <node concept="3cpWs6" id="6tmliaADOCA" role="3cqZAp">
                  <node concept="1Wc70l" id="6tmliaADXLM" role="3cqZAk">
                    <node concept="3eOVzh" id="6tmliaAE67t" role="3uHU7w">
                      <node concept="37vLTw" id="6tmliaAE7Nv" role="3uHU7w">
                        <ref role="3cqZAo" node="6tmliaADpw9" resolve="lx2" />
                      </node>
                      <node concept="37vLTw" id="6tmliaAE1FL" role="3uHU7B">
                        <ref role="3cqZAo" node="6tmliaADahC" resolve="sx" />
                      </node>
                    </node>
                    <node concept="3eOVzh" id="6tmliaADRpm" role="3uHU7B">
                      <node concept="37vLTw" id="6tmliaADOF3" role="3uHU7B">
                        <ref role="3cqZAo" node="6tmliaADhGD" resolve="lx1" />
                      </node>
                      <node concept="37vLTw" id="6tmliaADTgq" role="3uHU7w">
                        <ref role="3cqZAo" node="6tmliaADahC" resolve="sx" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="6tmliaADNLg" role="3clFbw">
                <node concept="37vLTw" id="6tmliaADNNu" role="3uHU7w">
                  <ref role="3cqZAo" node="6tmliaADpw9" resolve="lx2" />
                </node>
                <node concept="37vLTw" id="6tmliaADMPA" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmliaADhGD" resolve="lx1" />
                </node>
              </node>
              <node concept="9aQIb" id="6tmliaAEboB" role="9aQIa">
                <node concept="3clFbS" id="6tmliaAEboC" role="9aQI4">
                  <node concept="3cpWs6" id="6tmliaAEeWB" role="3cqZAp">
                    <node concept="1Wc70l" id="6tmliaAEeWC" role="3cqZAk">
                      <node concept="3eOSWO" id="6tmliaAEiU7" role="3uHU7w">
                        <node concept="37vLTw" id="6tmliaAEeWF" role="3uHU7B">
                          <ref role="3cqZAo" node="6tmliaADahC" resolve="sx" />
                        </node>
                        <node concept="37vLTw" id="6tmliaAEeWE" role="3uHU7w">
                          <ref role="3cqZAo" node="6tmliaADpw9" resolve="lx2" />
                        </node>
                      </node>
                      <node concept="3eOSWO" id="6tmliaAEfd1" role="3uHU7B">
                        <node concept="37vLTw" id="6tmliaAEeWH" role="3uHU7B">
                          <ref role="3cqZAo" node="6tmliaADhGD" resolve="lx1" />
                        </node>
                        <node concept="37vLTw" id="6tmliaAEeWI" role="3uHU7w">
                          <ref role="3cqZAo" node="6tmliaADahC" resolve="sx" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="6tmliaADtCK" role="3clFbw">
            <node concept="2YIFZM" id="6tmliaADtCL" role="3uHU7B">
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <ref role="37wK5l" to="wyt6:~Math.abs(int):int" resolve="abs" />
              <node concept="3cpWsd" id="6tmliaADtCM" role="37wK5m">
                <node concept="37vLTw" id="6tmliaADwo0" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmliaADe4K" resolve="sy" />
                </node>
                <node concept="37vLTw" id="6tmliaADy3z" role="3uHU7w">
                  <ref role="3cqZAo" node="6tmliaADlsn" resolve="ly" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6tmliaADJXt" role="3uHU7w">
              <ref role="3cqZAo" node="6tmliaABBg3" resolve="SELECTION_PADDING" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6tmliaAEqvb" role="3cqZAp">
          <node concept="3clFbT" id="6tmliaAEqxR" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6tmliaACZ5F" role="1B3o_S" />
      <node concept="10P_77" id="6tmliaAD2L_" role="3clF45" />
      <node concept="37vLTG" id="6tmliaADahC" role="3clF46">
        <property role="TrG5h" value="sx" />
        <node concept="10Oyi0" id="6tmliaADahB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmliaADe4K" role="3clF46">
        <property role="TrG5h" value="sy" />
        <node concept="10Oyi0" id="6tmliaADhxm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmliaADhGD" role="3clF46">
        <property role="TrG5h" value="lx1" />
        <node concept="10Oyi0" id="6tmliaADlaJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmliaADlsn" role="3clF46">
        <property role="TrG5h" value="ly" />
        <node concept="10Oyi0" id="6tmliaADpkQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmliaADpw9" role="3clF46">
        <property role="TrG5h" value="lx2" />
        <node concept="10Oyi0" id="6tmliaADtsq" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAn3jy" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP97WAn" role="jymVt">
      <property role="TrG5h" value="isSelectableAt" />
      <node concept="3Tm1VV" id="7_KjZP97WAp" role="1B3o_S" />
      <node concept="10P_77" id="7_KjZP97WAq" role="3clF45" />
      <node concept="37vLTG" id="1iOpS25ueZE" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1iOpS25ueZF" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP97WAr" role="3clF46">
        <property role="TrG5h" value="ex" />
        <node concept="10Oyi0" id="7_KjZP97WAs" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7_KjZP97WAt" role="3clF46">
        <property role="TrG5h" value="ey" />
        <node concept="10Oyi0" id="7_KjZP97WAu" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7_KjZP97WAv" role="3clF47">
        <node concept="3cpWs8" id="5MmYuOgCQyu" role="3cqZAp">
          <node concept="3cpWsn" id="5MmYuOgCQyv" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="5MmYuOgCQyw" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="5MmYuOgCQyx" role="33vP2m">
              <node concept="37vLTw" id="5MmYuOgCQyy" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25ueZE" resolve="path" />
              </node>
              <node concept="liA8E" id="5MmYuOgCQyz" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5MmYuOgCQy$" role="3cqZAp">
          <node concept="3cpWsn" id="5MmYuOgCQy_" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="3uibUv" id="5MmYuOgCQyA" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="5MmYuOgCQyB" role="33vP2m">
              <node concept="liA8E" id="5MmYuOgCQyC" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
              </node>
              <node concept="37vLTw" id="5MmYuOgCQyD" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25ueZE" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5MmYuOgCQyE" role="3cqZAp">
          <node concept="3cpWsn" id="5MmYuOgCQyF" role="3cpWs9">
            <property role="TrG5h" value="x1" />
            <node concept="10Oyi0" id="5MmYuOgCQyG" role="1tU5fm" />
            <node concept="2OqwBi" id="5MmYuOgCQyH" role="33vP2m">
              <node concept="37vLTw" id="5MmYuOgCQyI" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25ueZE" resolve="path" />
              </node>
              <node concept="liA8E" id="5MmYuOgCQyJ" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5MmYuOgCQyK" role="3cqZAp">
          <node concept="3cpWsn" id="5MmYuOgCQyL" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="5MmYuOgCQyM" role="1tU5fm" />
            <node concept="2OqwBi" id="5MmYuOgCQyN" role="33vP2m">
              <node concept="37vLTw" id="5MmYuOgCQyO" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25ueZE" resolve="path" />
              </node>
              <node concept="liA8E" id="5MmYuOgCQyP" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmW" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5MmYuOgCQyQ" role="3cqZAp">
          <node concept="3cpWsn" id="5MmYuOgCQyR" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10Oyi0" id="5MmYuOgCQyS" role="1tU5fm" />
            <node concept="2OqwBi" id="5MmYuOgCQyT" role="33vP2m">
              <node concept="37vLTw" id="5MmYuOgCQyU" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25ueZE" resolve="path" />
              </node>
              <node concept="liA8E" id="5MmYuOgCQyV" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5MmYuOgCSYR" role="3cqZAp" />
        <node concept="3KaCP$" id="5MmYuOgCT42" role="3cqZAp">
          <node concept="3KbdKl" id="5MmYuOgCT43" role="3KbHQx">
            <node concept="Rm8GO" id="5MmYuOgCT44" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
            </node>
            <node concept="3clFbS" id="5MmYuOgCT45" role="3Kbo56">
              <node concept="3cpWs6" id="5MmYuOgDbHN" role="3cqZAp">
                <node concept="22lmx$" id="5MmYuOgDHan" role="3cqZAk">
                  <node concept="22lmx$" id="5MmYuOgDoNw" role="3uHU7B">
                    <node concept="1rXfSq" id="5MmYuOgDklY" role="3uHU7B">
                      <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                      <node concept="37vLTw" id="5MmYuOgDklZ" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP97WAr" resolve="ex" />
                      </node>
                      <node concept="37vLTw" id="5MmYuOgDkm0" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP97WAt" resolve="ey" />
                      </node>
                      <node concept="2OqwBi" id="5MmYuOgDkm1" role="37wK5m">
                        <node concept="2OwXpG" id="5MmYuOgDkm2" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="5MmYuOgDkm3" role="2Oq$k0">
                          <ref role="3cqZAo" node="5MmYuOgCQyv" resolve="s" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5MmYuOgDkm4" role="37wK5m">
                        <node concept="2OwXpG" id="5MmYuOgDkm5" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                        </node>
                        <node concept="37vLTw" id="5MmYuOgDkm6" role="2Oq$k0">
                          <ref role="3cqZAo" node="5MmYuOgCQyv" resolve="s" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5MmYuOgDkm7" role="37wK5m">
                        <ref role="3cqZAo" node="5MmYuOgCQyF" resolve="x1" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="5MmYuOgDsX5" role="3uHU7w">
                      <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                      <node concept="37vLTw" id="5MmYuOgDsX6" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP97WAt" resolve="ey" />
                      </node>
                      <node concept="37vLTw" id="5MmYuOgDsX7" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP97WAr" resolve="ex" />
                      </node>
                      <node concept="2OqwBi" id="5MmYuOgDsX8" role="37wK5m">
                        <node concept="37vLTw" id="5MmYuOgDsX9" role="2Oq$k0">
                          <ref role="3cqZAo" node="5MmYuOgCQyv" resolve="s" />
                        </node>
                        <node concept="2OwXpG" id="5MmYuOgDsXa" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5MmYuOgDsXb" role="37wK5m">
                        <ref role="3cqZAo" node="5MmYuOgCQyF" resolve="x1" />
                      </node>
                      <node concept="2OqwBi" id="5MmYuOgDsXc" role="37wK5m">
                        <node concept="37vLTw" id="5MmYuOgDsXd" role="2Oq$k0">
                          <ref role="3cqZAo" node="5MmYuOgCQy_" resolve="t" />
                        </node>
                        <node concept="2OwXpG" id="5MmYuOgDsXe" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="5MmYuOgDLu1" role="3uHU7w">
                    <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                    <node concept="37vLTw" id="5MmYuOgDLu2" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAr" resolve="ex" />
                    </node>
                    <node concept="37vLTw" id="5MmYuOgDLu3" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAt" resolve="ey" />
                    </node>
                    <node concept="37vLTw" id="5MmYuOgDZ13" role="37wK5m">
                      <ref role="3cqZAo" node="5MmYuOgCQyF" resolve="x1" />
                    </node>
                    <node concept="2OqwBi" id="5MmYuOgDLu5" role="37wK5m">
                      <node concept="37vLTw" id="5MmYuOgDLu6" role="2Oq$k0">
                        <ref role="3cqZAo" node="5MmYuOgCQy_" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="5MmYuOgDLu7" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5MmYuOgDLu8" role="37wK5m">
                      <node concept="37vLTw" id="5MmYuOgDLu9" role="2Oq$k0">
                        <ref role="3cqZAo" node="5MmYuOgCQy_" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="5MmYuOgDLua" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="5MmYuOgCT58" role="3KbHQx">
            <node concept="Rm8GO" id="5MmYuOgCT59" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
            </node>
            <node concept="3clFbS" id="5MmYuOgCT5a" role="3Kbo56">
              <node concept="3cpWs6" id="5MmYuOgE7ZQ" role="3cqZAp">
                <node concept="22lmx$" id="5MmYuOgEck1" role="3cqZAk">
                  <node concept="22lmx$" id="5MmYuOgEqr7" role="3uHU7B">
                    <node concept="22lmx$" id="5MmYuOgEibt" role="3uHU7B">
                      <node concept="22lmx$" id="5MmYuOgEck2" role="3uHU7B">
                        <node concept="1rXfSq" id="5MmYuOgEck3" role="3uHU7B">
                          <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                          <node concept="37vLTw" id="5MmYuOgEck4" role="37wK5m">
                            <ref role="3cqZAo" node="7_KjZP97WAr" resolve="ex" />
                          </node>
                          <node concept="37vLTw" id="5MmYuOgEck5" role="37wK5m">
                            <ref role="3cqZAo" node="7_KjZP97WAt" resolve="ey" />
                          </node>
                          <node concept="2OqwBi" id="5MmYuOgEck6" role="37wK5m">
                            <node concept="2OwXpG" id="5MmYuOgEck7" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="5MmYuOgEck8" role="2Oq$k0">
                              <ref role="3cqZAo" node="5MmYuOgCQyv" resolve="s" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5MmYuOgEck9" role="37wK5m">
                            <node concept="2OwXpG" id="5MmYuOgEcka" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                            <node concept="37vLTw" id="5MmYuOgEckb" role="2Oq$k0">
                              <ref role="3cqZAo" node="5MmYuOgCQyv" resolve="s" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="5MmYuOgEckc" role="37wK5m">
                            <ref role="3cqZAo" node="5MmYuOgCQyF" resolve="x1" />
                          </node>
                        </node>
                        <node concept="1rXfSq" id="5MmYuOgEckd" role="3uHU7w">
                          <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                          <node concept="37vLTw" id="5MmYuOgEcke" role="37wK5m">
                            <ref role="3cqZAo" node="7_KjZP97WAt" resolve="ey" />
                          </node>
                          <node concept="37vLTw" id="5MmYuOgEckf" role="37wK5m">
                            <ref role="3cqZAo" node="7_KjZP97WAr" resolve="ex" />
                          </node>
                          <node concept="2OqwBi" id="5MmYuOgEckg" role="37wK5m">
                            <node concept="37vLTw" id="5MmYuOgEckh" role="2Oq$k0">
                              <ref role="3cqZAo" node="5MmYuOgCQyv" resolve="s" />
                            </node>
                            <node concept="2OwXpG" id="5MmYuOgEcki" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="5MmYuOgEckj" role="37wK5m">
                            <ref role="3cqZAo" node="5MmYuOgCQyF" resolve="x1" />
                          </node>
                          <node concept="37vLTw" id="5MmYuOgEhkN" role="37wK5m">
                            <ref role="3cqZAo" node="5MmYuOgCQyL" resolve="y" />
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="5MmYuOgEk6J" role="3uHU7w">
                        <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                        <node concept="37vLTw" id="5MmYuOgEk6K" role="37wK5m">
                          <ref role="3cqZAo" node="7_KjZP97WAr" resolve="ex" />
                        </node>
                        <node concept="37vLTw" id="5MmYuOgEk6L" role="37wK5m">
                          <ref role="3cqZAo" node="7_KjZP97WAt" resolve="ey" />
                        </node>
                        <node concept="37vLTw" id="5MmYuOgEk6S" role="37wK5m">
                          <ref role="3cqZAo" node="5MmYuOgCQyF" resolve="x1" />
                        </node>
                        <node concept="37vLTw" id="5MmYuOgEoTO" role="37wK5m">
                          <ref role="3cqZAo" node="5MmYuOgCQyL" resolve="y" />
                        </node>
                        <node concept="37vLTw" id="5MmYuOgEp8P" role="37wK5m">
                          <ref role="3cqZAo" node="5MmYuOgCQyR" resolve="x2" />
                        </node>
                      </node>
                    </node>
                    <node concept="1rXfSq" id="5MmYuOgEsrM" role="3uHU7w">
                      <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                      <node concept="37vLTw" id="5MmYuOgEsrO" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP97WAt" resolve="ey" />
                      </node>
                      <node concept="37vLTw" id="5MmYuOgEsrN" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP97WAr" resolve="ex" />
                      </node>
                      <node concept="37vLTw" id="5MmYuOgEsrQ" role="37wK5m">
                        <ref role="3cqZAo" node="5MmYuOgCQyL" resolve="y" />
                      </node>
                      <node concept="37vLTw" id="5MmYuOgEsrR" role="37wK5m">
                        <ref role="3cqZAo" node="5MmYuOgCQyR" resolve="x2" />
                      </node>
                      <node concept="2OqwBi" id="5MmYuOgEuB5" role="37wK5m">
                        <node concept="37vLTw" id="5MmYuOgEudj" role="2Oq$k0">
                          <ref role="3cqZAo" node="5MmYuOgCQy_" resolve="t" />
                        </node>
                        <node concept="2OwXpG" id="5MmYuOgEz4W" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="5MmYuOgEckn" role="3uHU7w">
                    <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                    <node concept="37vLTw" id="5MmYuOgEcko" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAr" resolve="ex" />
                    </node>
                    <node concept="37vLTw" id="5MmYuOgEckp" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAt" resolve="ey" />
                    </node>
                    <node concept="37vLTw" id="5MmYuOgEgZs" role="37wK5m">
                      <ref role="3cqZAo" node="5MmYuOgCQyR" resolve="x2" />
                    </node>
                    <node concept="2OqwBi" id="5MmYuOgEckr" role="37wK5m">
                      <node concept="37vLTw" id="5MmYuOgEcks" role="2Oq$k0">
                        <ref role="3cqZAo" node="5MmYuOgCQy_" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="5MmYuOgEckt" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5MmYuOgEcku" role="37wK5m">
                      <node concept="37vLTw" id="5MmYuOgEckv" role="2Oq$k0">
                        <ref role="3cqZAo" node="5MmYuOgCQy_" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="5MmYuOgEckw" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5MmYuOgCT6z" role="3KbGdf">
            <node concept="37vLTw" id="5MmYuOgCT6$" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS25ueZE" resolve="path" />
            </node>
            <node concept="liA8E" id="5MmYuOgCT6_" role="2OqNvi">
              <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5MmYuOgFpdA" role="3cqZAp">
          <node concept="3clFbT" id="5MmYuOgFphP" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7_KjZP97WAw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5MmYuOgCJWG" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP97WAz" role="jymVt">
      <property role="TrG5h" value="getCursorAt" />
      <node concept="3Tm1VV" id="7_KjZP97WA_" role="1B3o_S" />
      <node concept="3uibUv" id="7_KjZP97WAF" role="3clF45">
        <ref role="3uigEE" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
      </node>
      <node concept="37vLTG" id="1iOpS25uqxU" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1iOpS25uqxV" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP97WAB" role="3clF46">
        <property role="TrG5h" value="ex" />
        <node concept="10Oyi0" id="7_KjZP97WAC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7_KjZP97WAD" role="3clF46">
        <property role="TrG5h" value="ey" />
        <node concept="10Oyi0" id="7_KjZP97WAE" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7_KjZP97WAG" role="3clF47">
        <node concept="3cpWs8" id="1gL472E51Aq" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472E51Ar" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="1gL472E51As" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="1gL472E51At" role="33vP2m">
              <node concept="37vLTw" id="1gL472E51Au" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25uqxU" resolve="path" />
              </node>
              <node concept="liA8E" id="1gL472E51Av" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1gL472E51Aw" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472E51Ax" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="3uibUv" id="1gL472E51Ay" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="1gL472E51Az" role="33vP2m">
              <node concept="liA8E" id="1gL472E51A$" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
              </node>
              <node concept="37vLTw" id="1gL472E51A_" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25uqxU" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1gL472E51AA" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472E51AB" role="3cpWs9">
            <property role="TrG5h" value="x1" />
            <node concept="10Oyi0" id="1gL472E51AC" role="1tU5fm" />
            <node concept="2OqwBi" id="1gL472E51AD" role="33vP2m">
              <node concept="37vLTw" id="1gL472E51AE" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25uqxU" resolve="path" />
              </node>
              <node concept="liA8E" id="1gL472E51AF" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1gL472E51AG" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472E51AH" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="1gL472E51AI" role="1tU5fm" />
            <node concept="2OqwBi" id="1gL472E51AJ" role="33vP2m">
              <node concept="37vLTw" id="1gL472E51AK" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25uqxU" resolve="path" />
              </node>
              <node concept="liA8E" id="1gL472E51AL" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmW" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1gL472E51AM" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472E51AN" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10Oyi0" id="1gL472E51AO" role="1tU5fm" />
            <node concept="2OqwBi" id="1gL472E51AP" role="33vP2m">
              <node concept="37vLTw" id="1gL472E51AQ" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25uqxU" resolve="path" />
              </node>
              <node concept="liA8E" id="1gL472E51AR" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6tmliaAk0cO" role="3cqZAp" />
        <node concept="3KaCP$" id="6tmliaAk0cP" role="3cqZAp">
          <node concept="3KbdKl" id="6tmliaAk0cR" role="3KbHQx">
            <node concept="Rm8GO" id="6tmliaAk0cS" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
            </node>
            <node concept="3clFbS" id="6tmliaAk0cT" role="3Kbo56">
              <node concept="3clFbJ" id="1gL472E5giv" role="3cqZAp">
                <node concept="3clFbS" id="1gL472E5gix" role="3clFbx">
                  <node concept="3clFbJ" id="1gL472E$Mjw" role="3cqZAp">
                    <node concept="3clFbS" id="1gL472E$Mjy" role="3clFbx">
                      <node concept="3cpWs6" id="1gL472E5nB_" role="3cqZAp">
                        <node concept="Rm8GO" id="1gL472E$wlW" role="3cqZAk">
                          <ref role="Rm8GQ" node="IMWzYPgjNJ" resolve="SOURCE_ENDPOINT" />
                          <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                        </node>
                      </node>
                    </node>
                    <node concept="3eOVzh" id="1gL472E_1Ga" role="3clFbw">
                      <node concept="37vLTw" id="1gL472E_1I$" role="3uHU7w">
                        <ref role="3cqZAo" node="1gL472E51AB" resolve="x1" />
                      </node>
                      <node concept="3cpWs3" id="1gL472E5sjw" role="3uHU7B">
                        <node concept="2OqwBi" id="1gL472E5sjx" role="3uHU7B">
                          <node concept="2OwXpG" id="1gL472E5sjy" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                          <node concept="37vLTw" id="1gL472E5sjz" role="2Oq$k0">
                            <ref role="3cqZAo" node="1gL472E51Ar" resolve="s" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1gL472E$XWT" role="3uHU7w">
                          <ref role="3cqZAo" node="6tmliaB1FmK" resolve="ENDPOINT_HOVER_LENGTH" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="1gL472E_cnE" role="9aQIa">
                      <node concept="3clFbS" id="1gL472E_cnF" role="9aQI4">
                        <node concept="3cpWs6" id="1gL472E_gll" role="3cqZAp">
                          <node concept="Rm8GO" id="1gL472E_gA5" role="3cqZAk">
                            <ref role="Rm8GQ" node="IMWzYPgk1c" resolve="SOURCE_EDGE" />
                            <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="1gL472E5sji" role="3clFbw">
                  <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                  <node concept="37vLTw" id="1gL472EkTEH" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP97WAB" resolve="ex" />
                  </node>
                  <node concept="37vLTw" id="1gL472EmKIq" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP97WAD" resolve="ey" />
                  </node>
                  <node concept="2OqwBi" id="1gL472E5sjl" role="37wK5m">
                    <node concept="2OwXpG" id="1gL472E5sjm" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="1gL472E5sjn" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472E51Ar" resolve="s" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1gL472E5sjo" role="37wK5m">
                    <node concept="2OwXpG" id="1gL472E5sjp" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="1gL472E5sjq" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472E51Ar" resolve="s" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1gL472E5sj$" role="37wK5m">
                    <ref role="3cqZAo" node="1gL472E51AB" resolve="x1" />
                  </node>
                </node>
                <node concept="3eNFk2" id="1gL472E_tSD" role="3eNLev">
                  <node concept="3clFbS" id="1gL472E_tSE" role="3eOfB_">
                    <node concept="3cpWs6" id="1gL472E_AC8" role="3cqZAp">
                      <node concept="Rm8GO" id="1gL472E_ASU" role="3cqZAk">
                        <ref role="Rm8GQ" node="IMWzYPgjRG" resolve="X1_EDGE" />
                        <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="6tmliaAFx57" role="3eO9$A">
                    <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                    <node concept="37vLTw" id="1gL472EnG0T" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAD" resolve="ey" />
                    </node>
                    <node concept="37vLTw" id="1gL472EvbIp" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAB" resolve="ex" />
                    </node>
                    <node concept="2OqwBi" id="6tmliaAF$uE" role="37wK5m">
                      <node concept="37vLTw" id="1gL472E58Kd" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472E51Ar" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="6tmliaAFSkr" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6tmliaAF$uK" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472E51AB" resolve="x1" />
                    </node>
                    <node concept="2OqwBi" id="6tmliaAG1Ph" role="37wK5m">
                      <node concept="37vLTw" id="6tmliaAG0aO" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472E51Ax" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="6tmliaAG64k" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="1gL472E_Faa" role="3eNLev">
                  <node concept="3clFbS" id="1gL472E_Fab" role="3eOfB_">
                    <node concept="3clFbJ" id="1gL472E_NjM" role="3cqZAp">
                      <node concept="3clFbS" id="1gL472E_NjN" role="3clFbx">
                        <node concept="3cpWs6" id="1gL472E_NjO" role="3cqZAp">
                          <node concept="Rm8GO" id="1gL472E_RlA" role="3cqZAk">
                            <ref role="Rm8GQ" node="IMWzYPgjPN" resolve="TARGET_ENDPOINT" />
                            <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                          </node>
                        </node>
                      </node>
                      <node concept="3eOSWO" id="1gL472EA1Xq" role="3clFbw">
                        <node concept="3cpWsd" id="1gL472EA05Q" role="3uHU7B">
                          <node concept="2OqwBi" id="1gL472E_NjT" role="3uHU7B">
                            <node concept="2OwXpG" id="1gL472E_NjU" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="1gL472E_ZJV" role="2Oq$k0">
                              <ref role="3cqZAo" node="1gL472E51Ax" resolve="t" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1gL472E_Nk3" role="3uHU7w">
                            <ref role="3cqZAo" node="6tmliaB1FmK" resolve="ENDPOINT_HOVER_LENGTH" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1gL472E_NjR" role="3uHU7w">
                          <ref role="3cqZAo" node="1gL472E51AB" resolve="x1" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="1gL472E_NjW" role="9aQIa">
                        <node concept="3clFbS" id="1gL472E_NjX" role="9aQI4">
                          <node concept="3cpWs6" id="1gL472E_NjY" role="3cqZAp">
                            <node concept="Rm8GO" id="1gL472E_VFS" role="3cqZAk">
                              <ref role="Rm8GQ" node="IMWzYPgkb0" resolve="TARGET_EDGE" />
                              <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="1gL472E_J86" role="3eO9$A">
                    <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                    <node concept="37vLTw" id="1gL472E_J87" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAB" resolve="ex" />
                    </node>
                    <node concept="37vLTw" id="1gL472E_J88" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAD" resolve="ey" />
                    </node>
                    <node concept="37vLTw" id="1gL472E_J89" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472E51AB" resolve="x1" />
                    </node>
                    <node concept="2OqwBi" id="1gL472E_J8a" role="37wK5m">
                      <node concept="37vLTw" id="1gL472E_J8b" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472E51Ax" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="1gL472E_J8c" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1gL472E_J8d" role="37wK5m">
                      <node concept="37vLTw" id="1gL472E_J8e" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472E51Ax" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="1gL472E_J8f" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="6tmliaAk0dw" role="3KbHQx">
            <node concept="Rm8GO" id="6tmliaAk0dx" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
            </node>
            <node concept="3clFbS" id="6tmliaAk0dy" role="3Kbo56">
              <node concept="3clFbJ" id="1gL472EAl8d" role="3cqZAp">
                <node concept="3clFbS" id="1gL472EAl8e" role="3clFbx">
                  <node concept="3clFbJ" id="1gL472EAl8f" role="3cqZAp">
                    <node concept="3clFbS" id="1gL472EAl8g" role="3clFbx">
                      <node concept="3cpWs6" id="1gL472EAl8h" role="3cqZAp">
                        <node concept="Rm8GO" id="1gL472EAl8i" role="3cqZAk">
                          <ref role="Rm8GQ" node="IMWzYPgjNJ" resolve="SOURCE_ENDPOINT" />
                          <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                        </node>
                      </node>
                    </node>
                    <node concept="3eOVzh" id="1gL472EAl8j" role="3clFbw">
                      <node concept="37vLTw" id="1gL472EAl8k" role="3uHU7w">
                        <ref role="3cqZAo" node="1gL472E51AB" resolve="x1" />
                      </node>
                      <node concept="3cpWs3" id="1gL472EAl8l" role="3uHU7B">
                        <node concept="2OqwBi" id="1gL472EAl8m" role="3uHU7B">
                          <node concept="2OwXpG" id="1gL472EAl8n" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                          <node concept="37vLTw" id="1gL472EAl8o" role="2Oq$k0">
                            <ref role="3cqZAo" node="1gL472E51Ar" resolve="s" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1gL472EAl9i" role="3uHU7w">
                          <ref role="3cqZAo" node="6tmliaB1FmK" resolve="ENDPOINT_HOVER_LENGTH" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="1gL472EAl8p" role="9aQIa">
                      <node concept="3clFbS" id="1gL472EAl8q" role="9aQI4">
                        <node concept="3cpWs6" id="1gL472EAl8r" role="3cqZAp">
                          <node concept="Rm8GO" id="1gL472EAl8s" role="3cqZAk">
                            <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                            <ref role="Rm8GQ" node="IMWzYPgk1c" resolve="SOURCE_EDGE" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="1gL472EAl8t" role="3clFbw">
                  <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                  <node concept="37vLTw" id="1gL472EAl8u" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP97WAB" resolve="ex" />
                  </node>
                  <node concept="37vLTw" id="1gL472EAl8v" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP97WAD" resolve="ey" />
                  </node>
                  <node concept="2OqwBi" id="1gL472EAl8w" role="37wK5m">
                    <node concept="2OwXpG" id="1gL472EAl8x" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAl8y" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472E51Ar" resolve="s" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1gL472EAl8z" role="37wK5m">
                    <node concept="2OwXpG" id="1gL472EAl8$" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAl8_" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472E51Ar" resolve="s" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1gL472EAl8A" role="37wK5m">
                    <ref role="3cqZAo" node="1gL472E51AB" resolve="x1" />
                  </node>
                </node>
                <node concept="3eNFk2" id="1gL472EAl8B" role="3eNLev">
                  <node concept="3clFbS" id="1gL472EAl8C" role="3eOfB_">
                    <node concept="3cpWs6" id="1gL472EAl8D" role="3cqZAp">
                      <node concept="Rm8GO" id="1gL472EAl8E" role="3cqZAk">
                        <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                        <ref role="Rm8GQ" node="IMWzYPgjRG" resolve="X1_EDGE" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="1gL472EAl8F" role="3eO9$A">
                    <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                    <node concept="37vLTw" id="1gL472EAl8G" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAD" resolve="ey" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAl8H" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAB" resolve="ex" />
                    </node>
                    <node concept="2OqwBi" id="1gL472EAl8I" role="37wK5m">
                      <node concept="37vLTw" id="1gL472EAl8J" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472E51Ar" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="1gL472EAl8K" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1gL472EAl8L" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472E51AB" resolve="x1" />
                    </node>
                    <node concept="37vLTw" id="5MmYuOgDGqe" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472E51AH" resolve="y" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="1gL472EApcr" role="3eNLev">
                  <node concept="3clFbS" id="1gL472EApcs" role="3eOfB_">
                    <node concept="3cpWs6" id="1gL472EApct" role="3cqZAp">
                      <node concept="Rm8GO" id="1gL472EAtg2" role="3cqZAk">
                        <ref role="Rm8GQ" node="IMWzYPgkeu" resolve="Y_EDGE" />
                        <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="1gL472EAxeW" role="3eO9$A">
                    <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                    <node concept="37vLTw" id="1gL472EAxeX" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAB" resolve="ex" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAxeY" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAD" resolve="ey" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAxeZ" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472E51AB" resolve="x1" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAxf0" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472E51AH" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAxf1" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472E51AN" resolve="x2" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="1gL472EAIqY" role="3eNLev">
                  <node concept="3clFbS" id="1gL472EAIqZ" role="3eOfB_">
                    <node concept="3cpWs6" id="1gL472EAIr0" role="3cqZAp">
                      <node concept="Rm8GO" id="1gL472EAQZj" role="3cqZAk">
                        <ref role="Rm8GQ" node="IMWzYPgjVi" resolve="X2_EDGE" />
                        <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="1gL472EAMTp" role="3eO9$A">
                    <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                    <node concept="37vLTw" id="1gL472EAMTq" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAD" resolve="ey" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAMTr" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAB" resolve="ex" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAMTs" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472E51AH" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAMTt" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472E51AN" resolve="x2" />
                    </node>
                    <node concept="2OqwBi" id="1gL472EAMTu" role="37wK5m">
                      <node concept="37vLTw" id="1gL472EAMTv" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472E51Ax" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="1gL472EAMTw" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="1gL472EAl8P" role="3eNLev">
                  <node concept="3clFbS" id="1gL472EAl8Q" role="3eOfB_">
                    <node concept="3clFbJ" id="1gL472EAl8R" role="3cqZAp">
                      <node concept="3clFbS" id="1gL472EAl8S" role="3clFbx">
                        <node concept="3cpWs6" id="1gL472EAl8T" role="3cqZAp">
                          <node concept="Rm8GO" id="1gL472EAl8U" role="3cqZAk">
                            <ref role="Rm8GQ" node="IMWzYPgjPN" resolve="TARGET_ENDPOINT" />
                            <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                          </node>
                        </node>
                      </node>
                      <node concept="3eOSWO" id="1gL472EAl8V" role="3clFbw">
                        <node concept="3cpWsd" id="1gL472EAl8W" role="3uHU7B">
                          <node concept="2OqwBi" id="1gL472EAl8X" role="3uHU7B">
                            <node concept="2OwXpG" id="1gL472EAl8Y" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="1gL472EAl8Z" role="2Oq$k0">
                              <ref role="3cqZAo" node="1gL472E51Ax" resolve="t" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1gL472EAl9n" role="3uHU7w">
                            <ref role="3cqZAo" node="6tmliaB1FmK" resolve="ENDPOINT_HOVER_LENGTH" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1gL472EAVgG" role="3uHU7w">
                          <ref role="3cqZAo" node="1gL472E51AN" resolve="x2" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="1gL472EAl91" role="9aQIa">
                        <node concept="3clFbS" id="1gL472EAl92" role="9aQI4">
                          <node concept="3cpWs6" id="1gL472EAl93" role="3cqZAp">
                            <node concept="Rm8GO" id="1gL472EAl94" role="3cqZAk">
                              <ref role="Rm8GQ" node="IMWzYPgkb0" resolve="TARGET_EDGE" />
                              <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="1gL472EAl95" role="3eO9$A">
                    <ref role="37wK5l" node="6tmliaAD31G" resolve="checkLineSelection" />
                    <node concept="37vLTw" id="1gL472EAl96" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAB" resolve="ex" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAl97" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP97WAD" resolve="ey" />
                    </node>
                    <node concept="37vLTw" id="1gL472EAV5g" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472E51AN" resolve="x2" />
                    </node>
                    <node concept="2OqwBi" id="1gL472EAl99" role="37wK5m">
                      <node concept="37vLTw" id="1gL472EAl9a" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472E51Ax" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="1gL472EAl9b" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1gL472EAl9c" role="37wK5m">
                      <node concept="37vLTw" id="1gL472EAl9d" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472E51Ax" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="1gL472EAl9e" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6$FGuy5Jnz6" role="3KbGdf">
            <node concept="37vLTw" id="1gL472E56SI" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS25uqxU" resolve="path" />
            </node>
            <node concept="liA8E" id="6$FGuy5Jnz8" role="2OqNvi">
              <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1gL472EAl9p" role="3cqZAp">
          <node concept="10Nm6u" id="1gL472EAl9q" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7_KjZP97WAH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1gL472DA2PM" role="jymVt" />
    <node concept="2YIFZL" id="7_KjZP9o5S0" role="jymVt">
      <property role="TrG5h" value="getConnectionSourceTransformation" />
      <node concept="3clFbS" id="7_KjZP9o5S1" role="3clF47">
        <node concept="3cpWs8" id="1gL472Dzu7_" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472Dzu7A" role="3cpWs9">
            <property role="TrG5h" value="calculator" />
            <node concept="3uibUv" id="1gL472Dzu7x" role="1tU5fm">
              <ref role="3uigEE" node="1CY1mmChqiE" resolve="FBConnectionController.PathSourceChangeDiffCalculator" />
            </node>
            <node concept="2ShNRf" id="1gL472Dzu7B" role="33vP2m">
              <node concept="1pGfFk" id="1gL472Dzu7C" role="2ShVmc">
                <ref role="37wK5l" node="7_KjZP9Op1x" resolve="FBConnectionController.PathSourceChangeDiffCalculator" />
                <node concept="37vLTw" id="1gL472Dzu7D" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9o5T5" resolve="originalPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7_KjZP9o5S2" role="3cqZAp">
          <node concept="1bVj0M" id="7_KjZP9o5S3" role="3clFbG">
            <node concept="3clFbS" id="7_KjZP9o5S4" role="1bW5cS">
              <node concept="3clFbF" id="1gL472D$kF5" role="3cqZAp">
                <node concept="2OqwBi" id="1gL472D$laW" role="3clFbG">
                  <node concept="37vLTw" id="1gL472D$kF4" role="2Oq$k0">
                    <ref role="3cqZAo" node="1gL472Dzu7A" resolve="calculator" />
                  </node>
                  <node concept="liA8E" id="1gL472D$mto" role="2OqNvi">
                    <ref role="37wK5l" node="1gL472CV83X" resolve="calculatePath" />
                    <node concept="37vLTw" id="1gL472D$v9D" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9o5SZ" resolve="position" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7_KjZP9o5SZ" role="1bW2Oz">
              <property role="TrG5h" value="position" />
              <node concept="3uibUv" id="7_KjZP9o5T0" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7_KjZP9o5T1" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="7_KjZP9o5T2" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="7_KjZP9o5T3" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7_KjZP9o5T4" role="1B3o_S" />
      <node concept="37vLTG" id="7_KjZP9o5T5" role="3clF46">
        <property role="TrG5h" value="originalPath" />
        <node concept="3uibUv" id="7_KjZP9o5T6" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1gL472D$BK5" role="jymVt">
      <property role="TrG5h" value="getConnectionTargetTransformation" />
      <node concept="3clFbS" id="1gL472D$BK6" role="3clF47">
        <node concept="3cpWs8" id="1gL472D$BK7" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472D$BK8" role="3cpWs9">
            <property role="TrG5h" value="calculator" />
            <node concept="3uibUv" id="1gL472D_qpO" role="1tU5fm">
              <ref role="3uigEE" node="1CY1mmCcbMB" resolve="FBConnectionController.PathTargetChangeDiffCalculator" />
            </node>
            <node concept="2ShNRf" id="1gL472D$BKa" role="33vP2m">
              <node concept="1pGfFk" id="1gL472D$BKb" role="2ShVmc">
                <ref role="37wK5l" node="1CY1mmCcIfS" resolve="FBConnectionController.PathTargetChangeDiffCalculator" />
                <node concept="37vLTw" id="1gL472D$BKc" role="37wK5m">
                  <ref role="3cqZAo" node="1gL472D$BKr" resolve="originalPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1gL472D$BKd" role="3cqZAp">
          <node concept="1bVj0M" id="1gL472D$BKe" role="3clFbG">
            <node concept="3clFbS" id="1gL472D$BKf" role="1bW5cS">
              <node concept="3clFbF" id="1gL472D$BKg" role="3cqZAp">
                <node concept="2OqwBi" id="1gL472D$BKh" role="3clFbG">
                  <node concept="37vLTw" id="1gL472D$BKi" role="2Oq$k0">
                    <ref role="3cqZAo" node="1gL472D$BK8" resolve="calculator" />
                  </node>
                  <node concept="liA8E" id="1gL472D$BKj" role="2OqNvi">
                    <ref role="37wK5l" node="7_KjZP9qIQD" resolve="calculatePath" />
                    <node concept="37vLTw" id="1gL472D$BKk" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472D$BKl" resolve="position" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="1gL472D$BKl" role="1bW2Oz">
              <property role="TrG5h" value="position" />
              <node concept="3uibUv" id="1gL472D$BKm" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1gL472D$BKn" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="1gL472D$BKo" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1gL472D$BKp" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1gL472D$BKq" role="1B3o_S" />
      <node concept="37vLTG" id="1gL472D$BKr" role="3clF46">
        <property role="TrG5h" value="originalPath" />
        <node concept="3uibUv" id="1gL472D$BKs" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="IMWzYPsCLv" role="jymVt">
      <property role="TrG5h" value="getX1EdgePathTransformation" />
      <node concept="3clFbS" id="IMWzYPsCLx" role="3clF47">
        <node concept="3clFbF" id="IMWzYPvX8N" role="3cqZAp">
          <node concept="1bVj0M" id="IMWzYPvX8L" role="3clFbG">
            <node concept="3clFbS" id="IMWzYPvX8M" role="1bW5cS">
              <node concept="3clFbJ" id="IMWzYPwOZC" role="3cqZAp">
                <node concept="3clFbS" id="IMWzYPwOZD" role="3clFbx">
                  <node concept="3cpWs8" id="IMWzYPwOZE" role="3cqZAp">
                    <node concept="3cpWsn" id="IMWzYPwOZF" role="3cpWs9">
                      <property role="TrG5h" value="x2" />
                      <node concept="10Oyi0" id="IMWzYPwOZG" role="1tU5fm" />
                      <node concept="2OqwBi" id="7_KjZP94rAH" role="33vP2m">
                        <node concept="37vLTw" id="7_KjZP94rbN" role="2Oq$k0">
                          <ref role="3cqZAo" node="IMWzYPtYAp" resolve="originalPath" />
                        </node>
                        <node concept="liA8E" id="7_KjZP952jW" role="2OqNvi">
                          <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="IMWzYPwOZN" role="3cqZAp">
                    <node concept="3clFbS" id="IMWzYPwOZO" role="3clFbx">
                      <node concept="3clFbH" id="7_KjZP9623n" role="3cqZAp" />
                      <node concept="3cpWs6" id="IMWzYPxM_2" role="3cqZAp">
                        <node concept="2ShNRf" id="IMWzYPy4zt" role="3cqZAk">
                          <node concept="1pGfFk" id="7_KjZP94Mqu" role="2ShVmc">
                            <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                            <node concept="2OqwBi" id="7_KjZP94NEz" role="37wK5m">
                              <node concept="37vLTw" id="7_KjZP94NdE" role="2Oq$k0">
                                <ref role="3cqZAo" node="IMWzYPtYAp" resolve="originalPath" />
                              </node>
                              <node concept="liA8E" id="7_KjZP94On$" role="2OqNvi">
                                <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7_KjZP94Pjq" role="37wK5m">
                              <node concept="37vLTw" id="7_KjZP94Pjr" role="2Oq$k0">
                                <ref role="3cqZAo" node="IMWzYPtYAp" resolve="originalPath" />
                              </node>
                              <node concept="liA8E" id="7_KjZP94Pjs" role="2OqNvi">
                                <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
                              </node>
                            </node>
                            <node concept="Rm8GO" id="7_KjZP9573X" role="37wK5m">
                              <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
                              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                            </node>
                            <node concept="37vLTw" id="7_KjZP959Ck" role="37wK5m">
                              <ref role="3cqZAo" node="IMWzYPwOZF" resolve="x2" />
                            </node>
                            <node concept="3cmrfG" id="7_KjZP95huY" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="3cmrfG" id="7_KjZP95hXt" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eOVzh" id="IMWzYPwP04" role="3clFbw">
                      <node concept="37vLTw" id="IMWzYPwP0m" role="3uHU7w">
                        <ref role="3cqZAo" node="6tmliaABBg3" resolve="SELECTION_PADDING" />
                      </node>
                      <node concept="2YIFZM" id="IMWzYPwP05" role="3uHU7B">
                        <ref role="37wK5l" to="wyt6:~Math.abs(int):int" resolve="abs" />
                        <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                        <node concept="3cpWsd" id="IMWzYPwP06" role="37wK5m">
                          <node concept="2OqwBi" id="7_KjZP94Wmj" role="3uHU7B">
                            <node concept="37vLTw" id="7_KjZP94V$s" role="2Oq$k0">
                              <ref role="3cqZAo" node="IMWzYPweHv" resolve="eventPosition" />
                            </node>
                            <node concept="2OwXpG" id="7_KjZP94WJM" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="IMWzYPwP08" role="3uHU7w">
                            <ref role="3cqZAo" node="IMWzYPwOZF" resolve="x2" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="IMWzYPwP0d" role="3clFbw">
                  <node concept="Rm8GO" id="IMWzYPwP0e" role="3uHU7w">
                    <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                    <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
                  </node>
                  <node concept="2OqwBi" id="IMWzYPwP0f" role="3uHU7B">
                    <node concept="37vLTw" id="IMWzYPxbWO" role="2Oq$k0">
                      <ref role="3cqZAo" node="IMWzYPtYAp" resolve="originalPath" />
                    </node>
                    <node concept="liA8E" id="IMWzYPwP0h" role="2OqNvi">
                      <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7_KjZP95oPZ" role="3cqZAp">
                <node concept="2ShNRf" id="7_KjZP95oQ0" role="3cqZAk">
                  <node concept="1pGfFk" id="7_KjZP95oQ1" role="2ShVmc">
                    <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                    <node concept="2OqwBi" id="7_KjZP95oQ2" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95oQ3" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPtYAp" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP95oQ4" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP95oQ5" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95oQ6" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPtYAp" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP95oQ7" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP95FIF" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95FIG" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPtYAp" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP95FIH" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP95uzi" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95tXe" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPweHv" resolve="eventPosition" />
                      </node>
                      <node concept="2OwXpG" id="7_KjZP95z4b" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP95DWx" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95DxL" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPtYAp" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP95EvW" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmW" resolve="getY" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP95IpK" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95IpL" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPtYAp" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP95IpM" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="IMWzYPweHv" role="1bW2Oz">
              <property role="TrG5h" value="eventPosition" />
              <node concept="3uibUv" id="IMWzYPweHu" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="IMWzYPsCLz" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="IMWzYPt4ep" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="IMWzYPtFLC" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="3Tm6S6" id="IMWzYPsCLy" role="1B3o_S" />
      <node concept="37vLTG" id="IMWzYPtYAp" role="3clF46">
        <property role="TrG5h" value="originalPath" />
        <node concept="3uibUv" id="IMWzYPuhxr" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7_KjZP95MaH" role="jymVt">
      <property role="TrG5h" value="getX2EdgePathTransformation" />
      <node concept="3clFbS" id="7_KjZP95MaI" role="3clF47">
        <node concept="3clFbF" id="7_KjZP95MaJ" role="3cqZAp">
          <node concept="1bVj0M" id="7_KjZP95MaK" role="3clFbG">
            <node concept="3clFbS" id="7_KjZP95MaL" role="1bW5cS">
              <node concept="3clFbJ" id="7_KjZP95MaM" role="3cqZAp">
                <node concept="3clFbS" id="7_KjZP95MaN" role="3clFbx">
                  <node concept="3cpWs8" id="7_KjZP95MaO" role="3cqZAp">
                    <node concept="3cpWsn" id="7_KjZP95MaP" role="3cpWs9">
                      <property role="TrG5h" value="x1" />
                      <node concept="10Oyi0" id="7_KjZP95MaQ" role="1tU5fm" />
                      <node concept="2OqwBi" id="7_KjZP95MaR" role="33vP2m">
                        <node concept="37vLTw" id="7_KjZP95MaS" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP95MbL" resolve="originalPath" />
                        </node>
                        <node concept="liA8E" id="7_KjZP95MaT" role="2OqNvi">
                          <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="7_KjZP95MaU" role="3cqZAp">
                    <node concept="3clFbS" id="7_KjZP95MaV" role="3clFbx">
                      <node concept="3clFbH" id="7_KjZP960NM" role="3cqZAp" />
                      <node concept="3cpWs6" id="7_KjZP95MaW" role="3cqZAp">
                        <node concept="2ShNRf" id="7_KjZP95MaX" role="3cqZAk">
                          <node concept="1pGfFk" id="7_KjZP95MaY" role="2ShVmc">
                            <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                            <node concept="2OqwBi" id="7_KjZP95MaZ" role="37wK5m">
                              <node concept="37vLTw" id="7_KjZP95Mb0" role="2Oq$k0">
                                <ref role="3cqZAo" node="7_KjZP95MbL" resolve="originalPath" />
                              </node>
                              <node concept="liA8E" id="7_KjZP95Mb1" role="2OqNvi">
                                <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7_KjZP95Mb2" role="37wK5m">
                              <node concept="37vLTw" id="7_KjZP95Mb3" role="2Oq$k0">
                                <ref role="3cqZAo" node="7_KjZP95MbL" resolve="originalPath" />
                              </node>
                              <node concept="liA8E" id="7_KjZP95Mb4" role="2OqNvi">
                                <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
                              </node>
                            </node>
                            <node concept="Rm8GO" id="7_KjZP95Mb5" role="37wK5m">
                              <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
                              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                            </node>
                            <node concept="37vLTw" id="7_KjZP95Mb6" role="37wK5m">
                              <ref role="3cqZAo" node="7_KjZP95MaP" resolve="x1" />
                            </node>
                            <node concept="3cmrfG" id="7_KjZP95Mb7" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="3cmrfG" id="7_KjZP95Mb8" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eOVzh" id="7_KjZP95Mb9" role="3clFbw">
                      <node concept="37vLTw" id="7_KjZP95Mba" role="3uHU7w">
                        <ref role="3cqZAo" node="6tmliaABBg3" resolve="SELECTION_PADDING" />
                      </node>
                      <node concept="2YIFZM" id="7_KjZP95Mbb" role="3uHU7B">
                        <ref role="37wK5l" to="wyt6:~Math.abs(int):int" resolve="abs" />
                        <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                        <node concept="3cpWsd" id="7_KjZP95Mbc" role="37wK5m">
                          <node concept="2OqwBi" id="7_KjZP95Mbd" role="3uHU7B">
                            <node concept="37vLTw" id="7_KjZP95Mbe" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_KjZP95MbF" resolve="eventPosition" />
                            </node>
                            <node concept="2OwXpG" id="7_KjZP95Mbf" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7_KjZP95Mbg" role="3uHU7w">
                            <ref role="3cqZAo" node="7_KjZP95MaP" resolve="x1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7_KjZP95Mbh" role="3clFbw">
                  <node concept="Rm8GO" id="7_KjZP95Mbi" role="3uHU7w">
                    <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                    <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
                  </node>
                  <node concept="2OqwBi" id="7_KjZP95Mbj" role="3uHU7B">
                    <node concept="37vLTw" id="7_KjZP95Mbk" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP95MbL" resolve="originalPath" />
                    </node>
                    <node concept="liA8E" id="7_KjZP95Mbl" role="2OqNvi">
                      <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7_KjZP95Mbm" role="3cqZAp">
                <node concept="2ShNRf" id="7_KjZP95Mbn" role="3cqZAk">
                  <node concept="1pGfFk" id="7_KjZP95Mbo" role="2ShVmc">
                    <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                    <node concept="2OqwBi" id="7_KjZP95Mbp" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95Mbq" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP95MbL" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP95Mbr" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP95Mbs" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95Mbt" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP95MbL" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP95Mbu" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP95Mbv" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95Mbw" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP95MbL" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP95Mbx" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP95MbC" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95MbD" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP95MbL" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP95MbE" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP95Mb_" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95MbA" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP95MbL" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP95MbB" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmW" resolve="getY" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP95Mby" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP95Mbz" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP95MbF" resolve="eventPosition" />
                      </node>
                      <node concept="2OwXpG" id="7_KjZP95Mb$" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7_KjZP95MbF" role="1bW2Oz">
              <property role="TrG5h" value="eventPosition" />
              <node concept="3uibUv" id="7_KjZP95MbG" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7_KjZP95MbH" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="7_KjZP95MbI" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="7_KjZP95MbJ" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7_KjZP95MbK" role="1B3o_S" />
      <node concept="37vLTG" id="7_KjZP95MbL" role="3clF46">
        <property role="TrG5h" value="originalPath" />
        <node concept="3uibUv" id="7_KjZP95MbM" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7_KjZP96TFr" role="jymVt">
      <property role="TrG5h" value="getYEdgePathTransformation" />
      <node concept="3clFbS" id="7_KjZP96TFs" role="3clF47">
        <node concept="3clFbF" id="7_KjZP96TFt" role="3cqZAp">
          <node concept="1bVj0M" id="7_KjZP96TFu" role="3clFbG">
            <node concept="3clFbS" id="7_KjZP96TFv" role="1bW5cS">
              <node concept="3cpWs6" id="7_KjZP96TG5" role="3cqZAp">
                <node concept="2ShNRf" id="7_KjZP96TG6" role="3cqZAk">
                  <node concept="1pGfFk" id="7_KjZP96TG7" role="2ShVmc">
                    <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                    <node concept="2OqwBi" id="7_KjZP96TG8" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP96TG9" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP96TGw" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP96TGa" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP96TGb" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP96TGc" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP96TGw" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP96TGd" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP96TGe" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP96TGf" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP96TGw" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP96TGg" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP96TGh" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP96TGi" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP96TGw" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP96TGj" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP96TGn" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP96TGo" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP96TGq" resolve="eventPosition" />
                      </node>
                      <node concept="2OwXpG" id="7_KjZP97jNc" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_KjZP96TGk" role="37wK5m">
                      <node concept="37vLTw" id="7_KjZP96TGl" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP96TGw" resolve="originalPath" />
                      </node>
                      <node concept="liA8E" id="7_KjZP96TGm" role="2OqNvi">
                        <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7_KjZP96TGq" role="1bW2Oz">
              <property role="TrG5h" value="eventPosition" />
              <node concept="3uibUv" id="7_KjZP96TGr" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7_KjZP96TGs" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="7_KjZP96TGt" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="7_KjZP96TGu" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7_KjZP96TGv" role="1B3o_S" />
      <node concept="37vLTG" id="7_KjZP96TGw" role="3clF46">
        <property role="TrG5h" value="originalPath" />
        <node concept="3uibUv" id="7_KjZP96TGx" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="309fsJ6omjR" role="jymVt" />
    <node concept="312cEu" id="1CY1mmCcbMB" role="jymVt">
      <property role="TrG5h" value="PathTargetChangeDiffCalculator" />
      <node concept="312cEg" id="7_KjZP9qyqM" role="jymVt">
        <property role="TrG5h" value="myOriginalPath" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7_KjZP9qvSf" role="1B3o_S" />
        <node concept="3uibUv" id="7_KjZP9q$Pt" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="2tJIrI" id="1CY1mmCcuZ7" role="jymVt" />
      <node concept="3Tm6S6" id="7_KjZP9r4MF" role="1B3o_S" />
      <node concept="3clFbW" id="1CY1mmCcIfS" role="jymVt">
        <node concept="37vLTG" id="7_KjZP9qTiP" role="3clF46">
          <property role="TrG5h" value="originalPath" />
          <node concept="3uibUv" id="7_KjZP9qTiR" role="1tU5fm">
            <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
          </node>
        </node>
        <node concept="3cqZAl" id="1CY1mmCcIfT" role="3clF45" />
        <node concept="3Tm6S6" id="7_KjZP9r7qy" role="1B3o_S" />
        <node concept="3clFbS" id="1CY1mmCcIfW" role="3clF47">
          <node concept="3clFbF" id="7_KjZP9qWE0" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9qYQX" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9qZ0X" role="37vLTx">
                <ref role="3cqZAo" node="7_KjZP9qTiP" resolve="originalPath" />
              </node>
              <node concept="37vLTw" id="7_KjZP9qWDY" role="37vLTJ">
                <ref role="3cqZAo" node="7_KjZP9qyqM" resolve="myOriginalPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9qELJ" role="jymVt" />
      <node concept="3clFb_" id="7_KjZP9qIQD" role="jymVt">
        <property role="TrG5h" value="calculatePath" />
        <node concept="37vLTG" id="7_KjZP9AXIw" role="3clF46">
          <property role="TrG5h" value="newTarget" />
          <node concept="3uibUv" id="7_KjZP9AXJY" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
        <node concept="3clFbS" id="7_KjZP9qIQG" role="3clF47">
          <node concept="3cpWs8" id="1CY1mmCcQ4N" role="3cqZAp">
            <node concept="3cpWsn" id="1CY1mmCcQ4O" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="1CY1mmCcQ4P" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
              <node concept="2OqwBi" id="1CY1mmCdIdz" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9ruFO" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9qyqM" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="1CY1mmCdId_" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1CY1mmCdIdA" role="3cqZAp">
            <node concept="3cpWsn" id="1CY1mmCdIdB" role="3cpWs9">
              <property role="TrG5h" value="t" />
              <node concept="3uibUv" id="1CY1mmCdIdC" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
              <node concept="2OqwBi" id="1CY1mmCdIdD" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9rvLm" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9qyqM" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="1CY1mmCdIdF" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1CY1mmCfQ7M" role="3cqZAp" />
          <node concept="3cpWs8" id="7_KjZP9BDb5" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9BDb8" role="3cpWs9">
              <property role="TrG5h" value="ntx" />
              <node concept="10Oyi0" id="7_KjZP9BDb3" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9Cpi1" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9Cg6h" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9AXIw" resolve="newTarget" />
                </node>
                <node concept="2OwXpG" id="7_KjZP9CpFx" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7_KjZP9CAwk" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9CAwl" role="3cpWs9">
              <property role="TrG5h" value="nty" />
              <node concept="10Oyi0" id="7_KjZP9CAwm" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9CAwn" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9CAwo" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9AXIw" resolve="newTarget" />
                </node>
                <node concept="2OwXpG" id="7_KjZP9CYoL" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7_KjZP9BtWb" role="3cqZAp" />
          <node concept="3cpWs8" id="7_KjZP9qqpq" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9qqpt" role="3cpWs9">
              <property role="TrG5h" value="x1" />
              <node concept="10Oyi0" id="7_KjZP9qqpo" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9qsKb" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9rfb_" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9qyqM" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="7_KjZP9rfBH" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1CY1mmCeAMj" role="3cqZAp">
            <node concept="3cpWsn" id="1CY1mmCeAMm" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="10Oyi0" id="1CY1mmCeAMh" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9rmOi" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9rmkV" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9qyqM" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="7_KjZP9roYR" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcmW" resolve="getY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1CY1mmCdIdP" role="3cqZAp">
            <node concept="3cpWsn" id="1CY1mmCdIdQ" role="3cpWs9">
              <property role="TrG5h" value="x2" />
              <node concept="10Oyi0" id="1CY1mmCdIdR" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9rpud" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9rpue" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9qyqM" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="7_KjZP9rpuf" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4KEbQahUGPq" role="3cqZAp" />
          <node concept="3cpWs8" id="1CY1mmCgzqe" role="3cqZAp">
            <node concept="3cpWsn" id="1CY1mmCgzqh" role="3cpWs9">
              <property role="TrG5h" value="kind" />
              <node concept="3uibUv" id="1CY1mmCg_jP" role="1tU5fm">
                <ref role="3uigEE" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              </node>
              <node concept="2OqwBi" id="1CY1mmCgAes" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9rwEO" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9qyqM" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="1CY1mmCgAeu" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1CY1mmCePdR" role="3cqZAp" />
          <node concept="3KaCP$" id="1CY1mmCdIdZ" role="3cqZAp">
            <node concept="3KbdKl" id="1CY1mmCdIe3" role="3KbHQx">
              <node concept="Rm8GO" id="1CY1mmCdIe4" role="3Kbmr1">
                <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
              </node>
              <node concept="3clFbS" id="1CY1mmCdIe5" role="3Kbo56">
                <node concept="3clFbJ" id="1CY1mmCdIe6" role="3cqZAp">
                  <node concept="2d3UOw" id="1CY1mmCdIe7" role="3clFbw">
                    <node concept="37vLTw" id="7_KjZP9DbQh" role="3uHU7B">
                      <ref role="3cqZAo" node="7_KjZP9BDb8" resolve="ntx" />
                    </node>
                    <node concept="3cpWs3" id="1CY1mmCdIe9" role="3uHU7w">
                      <node concept="17qRlL" id="1CY1mmCdIea" role="3uHU7w">
                        <node concept="3cmrfG" id="1CY1mmCdIeb" role="3uHU7B">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="37vLTw" id="7_KjZP9qLcQ" role="3uHU7w">
                          <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1CY1mmCdIec" role="3uHU7B">
                        <node concept="37vLTw" id="1CY1mmCdIed" role="2Oq$k0">
                          <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                        </node>
                        <node concept="2OwXpG" id="1CY1mmCdIee" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1CY1mmCdIef" role="3clFbx">
                    <node concept="3clFbF" id="1CY1mmCdIeg" role="3cqZAp">
                      <node concept="37vLTI" id="1CY1mmCdIeh" role="3clFbG">
                        <node concept="37vLTw" id="1CY1mmCgIP_" role="37vLTJ">
                          <ref role="3cqZAo" node="1CY1mmCgzqh" resolve="kind" />
                        </node>
                        <node concept="Rm8GO" id="1CY1mmCdIej" role="37vLTx">
                          <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                          <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1CY1mmCdIek" role="3cqZAp">
                      <node concept="37vLTI" id="1CY1mmCdIel" role="3clFbG">
                        <node concept="37vLTw" id="1CY1mmCgKiN" role="37vLTJ">
                          <ref role="3cqZAo" node="7_KjZP9qqpt" resolve="x1" />
                        </node>
                        <node concept="3cpWs3" id="1CY1mmCdIen" role="37vLTx">
                          <node concept="2OqwBi" id="1CY1mmCdIeo" role="3uHU7B">
                            <node concept="37vLTw" id="1CY1mmCdIep" role="2Oq$k0">
                              <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                            </node>
                            <node concept="2OwXpG" id="1CY1mmCdIeq" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                          <node concept="FJ1c_" id="1CY1mmCdIer" role="3uHU7w">
                            <node concept="17qRlL" id="1CY1mmCdIes" role="3uHU7B">
                              <node concept="1eOMI4" id="1CY1mmCdIet" role="3uHU7w">
                                <node concept="3cpWsd" id="1CY1mmCdIeu" role="1eOMHV">
                                  <node concept="2OqwBi" id="1CY1mmCdIev" role="3uHU7w">
                                    <node concept="37vLTw" id="1CY1mmCdIew" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                    </node>
                                    <node concept="2OwXpG" id="1CY1mmCdIex" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1CY1mmCdIey" role="3uHU7B">
                                    <ref role="3cqZAo" node="7_KjZP9qqpt" resolve="x1" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1eOMI4" id="1CY1mmCdIez" role="3uHU7B">
                                <node concept="3cpWsd" id="1CY1mmCdIe$" role="1eOMHV">
                                  <node concept="37vLTw" id="1CY1mmCjeSy" role="3uHU7B">
                                    <ref role="3cqZAo" node="7_KjZP9BDb8" resolve="ntx" />
                                  </node>
                                  <node concept="2OqwBi" id="1CY1mmCdIeA" role="3uHU7w">
                                    <node concept="37vLTw" id="1CY1mmCdIeB" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                    </node>
                                    <node concept="2OwXpG" id="1CY1mmCdIeC" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1eOMI4" id="1CY1mmCdIeD" role="3uHU7w">
                              <node concept="3cpWsd" id="1CY1mmCdIeE" role="1eOMHV">
                                <node concept="2OqwBi" id="1CY1mmCdIeF" role="3uHU7B">
                                  <node concept="2OwXpG" id="1CY1mmCdIeG" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                  </node>
                                  <node concept="37vLTw" id="1CY1mmCdIeH" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1CY1mmCdIdB" resolve="t" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="1CY1mmCdIeI" role="3uHU7w">
                                  <node concept="37vLTw" id="1CY1mmCdIeJ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                  </node>
                                  <node concept="2OwXpG" id="1CY1mmCdIeK" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="1CY1mmCdIeL" role="9aQIa">
                    <node concept="3clFbS" id="1CY1mmCdIeM" role="9aQI4">
                      <node concept="3clFbF" id="1CY1mmCdIeN" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmCdIeO" role="3clFbG">
                          <node concept="37vLTw" id="1CY1mmCgLtk" role="37vLTJ">
                            <ref role="3cqZAo" node="1CY1mmCgzqh" resolve="kind" />
                          </node>
                          <node concept="Rm8GO" id="1CY1mmCdIeQ" role="37vLTx">
                            <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                            <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1CY1mmCdIeR" role="3cqZAp" />
                      <node concept="3clFbF" id="1CY1mmCdIeS" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmCdIeT" role="3clFbG">
                          <node concept="3cpWs3" id="1CY1mmCdIeU" role="37vLTx">
                            <node concept="37vLTw" id="7_KjZP9qLcX" role="3uHU7w">
                              <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                            </node>
                            <node concept="2OqwBi" id="1CY1mmCdIeV" role="3uHU7B">
                              <node concept="37vLTw" id="1CY1mmCdIeW" role="2Oq$k0">
                                <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                              </node>
                              <node concept="2OwXpG" id="1CY1mmCdIeX" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1CY1mmCgM0N" role="37vLTJ">
                            <ref role="3cqZAo" node="7_KjZP9qqpt" resolve="x1" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1CY1mmCdIeZ" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmCdIf0" role="3clFbG">
                          <node concept="3cpWsd" id="1CY1mmCdIf1" role="37vLTx">
                            <node concept="37vLTw" id="7_KjZP9qLd4" role="3uHU7w">
                              <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                            </node>
                            <node concept="37vLTw" id="1CY1mmCjf29" role="3uHU7B">
                              <ref role="3cqZAo" node="7_KjZP9BDb8" resolve="ntx" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1CY1mmCgMZr" role="37vLTJ">
                            <ref role="3cqZAo" node="1CY1mmCdIdQ" resolve="x2" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1CY1mmCdIf4" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmCdIf5" role="3clFbG">
                          <node concept="FJ1c_" id="1CY1mmCdIf6" role="37vLTx">
                            <node concept="3cmrfG" id="1CY1mmCdIf7" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                            <node concept="1eOMI4" id="1CY1mmCdIf8" role="3uHU7B">
                              <node concept="3cpWs3" id="1CY1mmCdIf9" role="1eOMHV">
                                <node concept="2OqwBi" id="1CY1mmCdIfa" role="3uHU7B">
                                  <node concept="37vLTw" id="1CY1mmCdIfb" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                  </node>
                                  <node concept="2OwXpG" id="1CY1mmCdIfc" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="1CY1mmCjePl" role="3uHU7w">
                                  <ref role="3cqZAo" node="7_KjZP9CAwl" resolve="nty" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1CY1mmCgNTm" role="37vLTJ">
                            <ref role="3cqZAo" node="1CY1mmCeAMm" resolve="y" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="1CY1mmCdIff" role="3cqZAp">
                        <node concept="3clFbS" id="1CY1mmCdIfg" role="3clFbx">
                          <node concept="3clFbF" id="1CY1mmCdIfh" role="3cqZAp">
                            <node concept="37vLTI" id="1CY1mmCdIfi" role="3clFbG">
                              <node concept="3cpWs3" id="1CY1mmCdIfj" role="37vLTx">
                                <node concept="37vLTw" id="7_KjZP9qLdb" role="3uHU7w">
                                  <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                                </node>
                                <node concept="2OqwBi" id="1CY1mmCdIfk" role="3uHU7B">
                                  <node concept="37vLTw" id="1CY1mmCdIfl" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                  </node>
                                  <node concept="2OwXpG" id="1CY1mmCdIfm" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="1CY1mmCgOLp" role="37vLTJ">
                                <ref role="3cqZAo" node="1CY1mmCeAMm" resolve="y" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="1CY1mmCdIfo" role="3clFbw">
                          <node concept="3eOVzh" id="1CY1mmCdIfp" role="3uHU7w">
                            <node concept="2OqwBi" id="1CY1mmCdIfq" role="3uHU7w">
                              <node concept="37vLTw" id="1CY1mmCdIfr" role="2Oq$k0">
                                <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                              </node>
                              <node concept="2OwXpG" id="1CY1mmCdIfs" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                              </node>
                            </node>
                            <node concept="3cpWsd" id="1CY1mmCdIft" role="3uHU7B">
                              <node concept="37vLTw" id="7_KjZP9qLdi" role="3uHU7w">
                                <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                              </node>
                              <node concept="37vLTw" id="1CY1mmCgSTK" role="3uHU7B">
                                <ref role="3cqZAo" node="1CY1mmCeAMm" resolve="y" />
                              </node>
                            </node>
                          </node>
                          <node concept="2d3UOw" id="1CY1mmCdIfv" role="3uHU7B">
                            <node concept="37vLTw" id="1CY1mmCgOoJ" role="3uHU7B">
                              <ref role="3cqZAo" node="1CY1mmCeAMm" resolve="y" />
                            </node>
                            <node concept="2OqwBi" id="1CY1mmCdIfx" role="3uHU7w">
                              <node concept="37vLTw" id="1CY1mmCdIfy" role="2Oq$k0">
                                <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                              </node>
                              <node concept="2OwXpG" id="1CY1mmCdIfz" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="1CY1mmCdIf$" role="3eNLev">
                          <node concept="3clFbS" id="1CY1mmCdIf_" role="3eOfB_">
                            <node concept="3clFbF" id="1CY1mmCdIfA" role="3cqZAp">
                              <node concept="37vLTI" id="1CY1mmCdIfB" role="3clFbG">
                                <node concept="3cpWsd" id="1CY1mmCdIfC" role="37vLTx">
                                  <node concept="2OqwBi" id="1CY1mmCdIfD" role="3uHU7B">
                                    <node concept="37vLTw" id="1CY1mmCdIfE" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                    </node>
                                    <node concept="2OwXpG" id="1CY1mmCdIfF" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7_KjZP9qLdp" role="3uHU7w">
                                    <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="1CY1mmCgPhX" role="37vLTJ">
                                  <ref role="3cqZAo" node="1CY1mmCeAMm" resolve="y" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="1CY1mmCdIfH" role="3eO9$A">
                            <node concept="3eOSWO" id="1CY1mmCdIfI" role="3uHU7w">
                              <node concept="3cpWs3" id="1CY1mmCdIfJ" role="3uHU7B">
                                <node concept="37vLTw" id="7_KjZP9qLdw" role="3uHU7w">
                                  <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                                </node>
                                <node concept="37vLTw" id="1CY1mmCgQ8n" role="3uHU7B">
                                  <ref role="3cqZAo" node="1CY1mmCeAMm" resolve="y" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1CY1mmCdIfL" role="3uHU7w">
                                <node concept="37vLTw" id="1CY1mmCdIfM" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                </node>
                                <node concept="2OwXpG" id="1CY1mmCdIfN" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                </node>
                              </node>
                            </node>
                            <node concept="3eOVzh" id="1CY1mmCdIfO" role="3uHU7B">
                              <node concept="2OqwBi" id="1CY1mmCdIfP" role="3uHU7w">
                                <node concept="37vLTw" id="1CY1mmCdIfQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                </node>
                                <node concept="2OwXpG" id="1CY1mmCdIfR" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="1CY1mmCgPC_" role="3uHU7B">
                                <ref role="3cqZAo" node="1CY1mmCeAMm" resolve="y" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="1CY1mmCdIfT" role="3cqZAp" />
              </node>
            </node>
            <node concept="3KbdKl" id="1CY1mmCdIfU" role="3KbHQx">
              <node concept="Rm8GO" id="1CY1mmCdIfV" role="3Kbmr1">
                <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
              </node>
              <node concept="3clFbS" id="1CY1mmCdIfW" role="3Kbo56">
                <node concept="3clFbJ" id="1CY1mmCdIfX" role="3cqZAp">
                  <node concept="2d3UOw" id="1CY1mmCdIfY" role="3clFbw">
                    <node concept="37vLTw" id="1CY1mmCjf5m" role="3uHU7B">
                      <ref role="3cqZAo" node="7_KjZP9BDb8" resolve="ntx" />
                    </node>
                    <node concept="3cpWsd" id="1CY1mmCdIg0" role="3uHU7w">
                      <node concept="37vLTw" id="1CY1mmCdIg1" role="3uHU7w">
                        <ref role="3cqZAo" node="1CY1mmCdIdQ" resolve="x2" />
                      </node>
                      <node concept="3cpWs3" id="1CY1mmCdIg2" role="3uHU7B">
                        <node concept="37vLTw" id="1CY1mmCdIg3" role="3uHU7B">
                          <ref role="3cqZAo" node="7_KjZP9qqpt" resolve="x1" />
                        </node>
                        <node concept="2OqwBi" id="1CY1mmCdIg4" role="3uHU7w">
                          <node concept="37vLTw" id="1CY1mmCdIg5" role="2Oq$k0">
                            <ref role="3cqZAo" node="1CY1mmCdIdB" resolve="t" />
                          </node>
                          <node concept="2OwXpG" id="1CY1mmCdIg6" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1CY1mmCdIg7" role="3clFbx">
                    <node concept="3clFbF" id="1CY1mmCdIg8" role="3cqZAp">
                      <node concept="37vLTI" id="1CY1mmCdIg9" role="3clFbG">
                        <node concept="37vLTw" id="1CY1mmChjg6" role="37vLTJ">
                          <ref role="3cqZAo" node="1CY1mmCgzqh" resolve="kind" />
                        </node>
                        <node concept="Rm8GO" id="1CY1mmCdIgb" role="37vLTx">
                          <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                          <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1CY1mmCdIgc" role="3cqZAp">
                      <node concept="37vLTI" id="1CY1mmCdIgd" role="3clFbG">
                        <node concept="37vLTw" id="1CY1mmChkAS" role="37vLTJ">
                          <ref role="3cqZAo" node="7_KjZP9qqpt" resolve="x1" />
                        </node>
                        <node concept="3cpWs3" id="1CY1mmCdIgf" role="37vLTx">
                          <node concept="2OqwBi" id="1CY1mmCdIgg" role="3uHU7B">
                            <node concept="37vLTw" id="1CY1mmCdIgh" role="2Oq$k0">
                              <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                            </node>
                            <node concept="2OwXpG" id="1CY1mmCdIgi" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                          <node concept="FJ1c_" id="1CY1mmCdIgj" role="3uHU7w">
                            <node concept="17qRlL" id="1CY1mmCdIgk" role="3uHU7B">
                              <node concept="1eOMI4" id="1CY1mmCdIgl" role="3uHU7w">
                                <node concept="3cpWsd" id="1CY1mmCdIgm" role="1eOMHV">
                                  <node concept="2OqwBi" id="1CY1mmCdIgn" role="3uHU7w">
                                    <node concept="37vLTw" id="1CY1mmCdIgo" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                    </node>
                                    <node concept="2OwXpG" id="1CY1mmCdIgp" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1CY1mmCdIgq" role="3uHU7B">
                                    <ref role="3cqZAo" node="7_KjZP9qqpt" resolve="x1" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1eOMI4" id="1CY1mmCdIgr" role="3uHU7B">
                                <node concept="3cpWsd" id="1CY1mmCdIgs" role="1eOMHV">
                                  <node concept="37vLTw" id="1CY1mmCjeM8" role="3uHU7B">
                                    <ref role="3cqZAo" node="7_KjZP9BDb8" resolve="ntx" />
                                  </node>
                                  <node concept="2OqwBi" id="1CY1mmCdIgu" role="3uHU7w">
                                    <node concept="37vLTw" id="1CY1mmCdIgv" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                    </node>
                                    <node concept="2OwXpG" id="1CY1mmCdIgw" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1eOMI4" id="1CY1mmCdIgx" role="3uHU7w">
                              <node concept="3cpWsd" id="1CY1mmCdIgy" role="1eOMHV">
                                <node concept="2OqwBi" id="1CY1mmCdIgz" role="3uHU7w">
                                  <node concept="37vLTw" id="1CY1mmCdIg$" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                                  </node>
                                  <node concept="2OwXpG" id="1CY1mmCdIg_" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="1CY1mmCdIgA" role="3uHU7B">
                                  <node concept="3cpWsd" id="1CY1mmCdIgB" role="3uHU7B">
                                    <node concept="2OqwBi" id="1CY1mmCdIgC" role="3uHU7B">
                                      <node concept="37vLTw" id="1CY1mmCdIgD" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1CY1mmCdIdB" resolve="t" />
                                      </node>
                                      <node concept="2OwXpG" id="1CY1mmCdIgE" role="2OqNvi">
                                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="1CY1mmCdIgF" role="3uHU7w">
                                      <ref role="3cqZAo" node="1CY1mmCdIdQ" resolve="x2" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1CY1mmCdIgG" role="3uHU7w">
                                    <ref role="3cqZAo" node="7_KjZP9qqpt" resolve="x1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="1CY1mmCdIgH" role="9aQIa">
                    <node concept="3clFbS" id="1CY1mmCdIgI" role="9aQI4">
                      <node concept="3clFbF" id="1CY1mmCdIgJ" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmCdIgK" role="3clFbG">
                          <node concept="37vLTw" id="1CY1mmChlB1" role="37vLTJ">
                            <ref role="3cqZAo" node="1CY1mmCgzqh" resolve="kind" />
                          </node>
                          <node concept="Rm8GO" id="1CY1mmCdIgM" role="37vLTx">
                            <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                            <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1CY1mmCdIgW" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmCdIgX" role="3clFbG">
                          <node concept="3cpWsd" id="1CY1mmCdIgY" role="37vLTx">
                            <node concept="37vLTw" id="1CY1mmCjeYW" role="3uHU7B">
                              <ref role="3cqZAo" node="7_KjZP9BDb8" resolve="ntx" />
                            </node>
                            <node concept="1eOMI4" id="1CY1mmCdIh0" role="3uHU7w">
                              <node concept="3cpWsd" id="1CY1mmCdIh1" role="1eOMHV">
                                <node concept="37vLTw" id="1CY1mmCdIh2" role="3uHU7w">
                                  <ref role="3cqZAo" node="1CY1mmCdIdQ" resolve="x2" />
                                </node>
                                <node concept="2OqwBi" id="1CY1mmCdIh3" role="3uHU7B">
                                  <node concept="37vLTw" id="1CY1mmCdIh4" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1CY1mmCdIdB" resolve="t" />
                                  </node>
                                  <node concept="2OwXpG" id="1CY1mmCdIh5" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1CY1mmChn2s" role="37vLTJ">
                            <ref role="3cqZAo" node="1CY1mmCdIdQ" resolve="x2" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="1CY1mmCdIh7" role="3cqZAp" />
              </node>
            </node>
            <node concept="37vLTw" id="1CY1mmCgEtB" role="3KbGdf">
              <ref role="3cqZAo" node="1CY1mmCgzqh" resolve="kind" />
            </node>
          </node>
          <node concept="3cpWs6" id="7_KjZP9A4E8" role="3cqZAp">
            <node concept="2ShNRf" id="7_KjZP9AqLA" role="3cqZAk">
              <node concept="1pGfFk" id="7_KjZP9AATq" role="2ShVmc">
                <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                <node concept="37vLTw" id="7_KjZP9NyC5" role="37wK5m">
                  <ref role="3cqZAo" node="1CY1mmCcQ4O" resolve="s" />
                </node>
                <node concept="37vLTw" id="7_KjZP9NE5m" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9AXIw" resolve="newTarget" />
                </node>
                <node concept="37vLTw" id="7_KjZP9NJnR" role="37wK5m">
                  <ref role="3cqZAo" node="1CY1mmCgzqh" resolve="kind" />
                </node>
                <node concept="37vLTw" id="7_KjZP9NQqY" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9qqpt" resolve="x1" />
                </node>
                <node concept="37vLTw" id="7_KjZP9NYbW" role="37wK5m">
                  <ref role="3cqZAo" node="1CY1mmCeAMm" resolve="y" />
                </node>
                <node concept="37vLTw" id="7_KjZP9OfgR" role="37wK5m">
                  <ref role="3cqZAo" node="1CY1mmCdIdQ" resolve="x2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="7_KjZP9qGP5" role="3clF45">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
        <node concept="3Tm6S6" id="7_KjZP9r9w2" role="1B3o_S" />
      </node>
    </node>
    <node concept="2tJIrI" id="1CY1mmChAaH" role="jymVt" />
    <node concept="312cEu" id="1CY1mmChqiE" role="jymVt">
      <property role="TrG5h" value="PathSourceChangeDiffCalculator" />
      <node concept="312cEg" id="7_KjZP9Op1t" role="jymVt">
        <property role="TrG5h" value="myOriginalPath" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7_KjZP9Op1u" role="1B3o_S" />
        <node concept="3uibUv" id="7_KjZP9Op1v" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9Op1w" role="jymVt" />
      <node concept="3clFbW" id="7_KjZP9Op1x" role="jymVt">
        <node concept="37vLTG" id="7_KjZP9Op1y" role="3clF46">
          <property role="TrG5h" value="originalPath" />
          <node concept="3uibUv" id="7_KjZP9Op1z" role="1tU5fm">
            <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
          </node>
        </node>
        <node concept="3cqZAl" id="7_KjZP9Op1$" role="3clF45" />
        <node concept="3Tm6S6" id="7_KjZP9Op1_" role="1B3o_S" />
        <node concept="3clFbS" id="7_KjZP9Op1A" role="3clF47">
          <node concept="3clFbF" id="7_KjZP9Op1B" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9Op1C" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9Op1D" role="37vLTx">
                <ref role="3cqZAo" node="7_KjZP9Op1y" resolve="originalPath" />
              </node>
              <node concept="37vLTw" id="7_KjZP9Op1E" role="37vLTJ">
                <ref role="3cqZAo" node="7_KjZP9Op1t" resolve="myOriginalPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1CY1mmChqiR" role="jymVt" />
      <node concept="3clFb_" id="1gL472CV83X" role="jymVt">
        <property role="TrG5h" value="calculatePath" />
        <node concept="3clFbS" id="1gL472CV840" role="3clF47">
          <node concept="3cpWs8" id="7_KjZP9Ou4C" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9Ou4D" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="7_KjZP9Ou4E" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
              <node concept="2OqwBi" id="7_KjZP9Ou4F" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9Ou4G" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9Op1t" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="7_KjZP9Ou4H" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7_KjZP9Ou4I" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9Ou4J" role="3cpWs9">
              <property role="TrG5h" value="t" />
              <node concept="3uibUv" id="7_KjZP9Ou4K" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
              <node concept="2OqwBi" id="7_KjZP9Ou4L" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9Ou4M" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9Op1t" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="7_KjZP9Ou4N" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7_KjZP9Ou4O" role="3cqZAp" />
          <node concept="3cpWs8" id="7_KjZP9Ou4P" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9Ou4Q" role="3cpWs9">
              <property role="TrG5h" value="nsx" />
              <node concept="10Oyi0" id="7_KjZP9Ou4R" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9Ou4S" role="33vP2m">
                <node concept="37vLTw" id="1gL472CVlqW" role="2Oq$k0">
                  <ref role="3cqZAo" node="1gL472CVa6t" resolve="newSource" />
                </node>
                <node concept="2OwXpG" id="1gL472CVnUu" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7_KjZP9Ou4V" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9Ou4W" role="3cpWs9">
              <property role="TrG5h" value="nsy" />
              <node concept="10Oyi0" id="7_KjZP9Ou4X" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9Ou4Y" role="33vP2m">
                <node concept="37vLTw" id="1gL472CVlPH" role="2Oq$k0">
                  <ref role="3cqZAo" node="1gL472CVa6t" resolve="newSource" />
                </node>
                <node concept="2OwXpG" id="7_KjZP9Ou50" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7_KjZP9Ou51" role="3cqZAp" />
          <node concept="3cpWs8" id="7_KjZP9Ou52" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9Ou53" role="3cpWs9">
              <property role="TrG5h" value="x1" />
              <node concept="10Oyi0" id="7_KjZP9Ou54" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9Ou55" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9Ou56" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9Op1t" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="7_KjZP9Ou57" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7_KjZP9Ou58" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9Ou59" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="10Oyi0" id="7_KjZP9Ou5a" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9Ou5b" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9Ou5c" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9Op1t" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="7_KjZP9Ou5d" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcmW" resolve="getY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7_KjZP9Ou5e" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9Ou5f" role="3cpWs9">
              <property role="TrG5h" value="x2" />
              <node concept="10Oyi0" id="7_KjZP9Ou5g" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9Ou5h" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9Ou5i" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9Op1t" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="7_KjZP9Ou5j" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4KEbQahWvys" role="3cqZAp" />
          <node concept="3cpWs8" id="1CY1mmCi0Ad" role="3cqZAp">
            <node concept="3cpWsn" id="1CY1mmCi0Ae" role="3cpWs9">
              <property role="TrG5h" value="kind" />
              <node concept="3uibUv" id="1CY1mmCi0Af" role="1tU5fm">
                <ref role="3uigEE" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              </node>
              <node concept="2OqwBi" id="1CY1mmCi0Ag" role="33vP2m">
                <node concept="37vLTw" id="1gL472CUV1W" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9Op1t" resolve="myOriginalPath" />
                </node>
                <node concept="liA8E" id="1CY1mmCi0Ai" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1CY1mmChKf6" role="3cqZAp" />
          <node concept="3KaCP$" id="1CY1mmChKf7" role="3cqZAp">
            <node concept="37vLTw" id="1gL472CUTuq" role="3KbGdf">
              <ref role="3cqZAo" node="1CY1mmCi0Ae" resolve="kind" />
            </node>
            <node concept="3KbdKl" id="1CY1mmChKfb" role="3KbHQx">
              <node concept="Rm8GO" id="1CY1mmChKfc" role="3Kbmr1">
                <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
              </node>
              <node concept="3clFbS" id="1CY1mmChKfd" role="3Kbo56">
                <node concept="3clFbJ" id="1CY1mmChKfe" role="3cqZAp">
                  <node concept="2dkUwp" id="1CY1mmChKff" role="3clFbw">
                    <node concept="37vLTw" id="7_KjZPalF6g" role="3uHU7B">
                      <ref role="3cqZAo" node="7_KjZP9Ou4Q" resolve="nsx" />
                    </node>
                    <node concept="3cpWsd" id="1CY1mmChKfh" role="3uHU7w">
                      <node concept="2OqwBi" id="1CY1mmChKfi" role="3uHU7B">
                        <node concept="2OwXpG" id="1CY1mmChKfj" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="1CY1mmChKfk" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                        </node>
                      </node>
                      <node concept="17qRlL" id="1CY1mmChKfl" role="3uHU7w">
                        <node concept="3cmrfG" id="1CY1mmChKfm" role="3uHU7B">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="37vLTw" id="1gL472CVfFc" role="3uHU7w">
                          <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1CY1mmChKfn" role="3clFbx">
                    <node concept="3clFbF" id="1CY1mmChKfo" role="3cqZAp">
                      <node concept="37vLTI" id="1CY1mmChKfp" role="3clFbG">
                        <node concept="37vLTw" id="1CY1mmCidjM" role="37vLTJ">
                          <ref role="3cqZAo" node="1CY1mmCi0Ae" resolve="kind" />
                        </node>
                        <node concept="Rm8GO" id="1CY1mmChKfr" role="37vLTx">
                          <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                          <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1CY1mmChKfs" role="3cqZAp">
                      <node concept="37vLTI" id="1CY1mmChKft" role="3clFbG">
                        <node concept="37vLTw" id="7_KjZPakdtT" role="37vLTJ">
                          <ref role="3cqZAo" node="7_KjZP9Ou53" resolve="x1" />
                        </node>
                        <node concept="3cpWsd" id="1CY1mmChKfv" role="37vLTx">
                          <node concept="2OqwBi" id="1CY1mmChKfw" role="3uHU7B">
                            <node concept="2OwXpG" id="1CY1mmChKfx" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="1CY1mmChKfy" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                            </node>
                          </node>
                          <node concept="FJ1c_" id="1CY1mmChKfz" role="3uHU7w">
                            <node concept="17qRlL" id="1CY1mmChKf$" role="3uHU7B">
                              <node concept="1eOMI4" id="1CY1mmChKf_" role="3uHU7w">
                                <node concept="3cpWsd" id="1CY1mmChKfA" role="1eOMHV">
                                  <node concept="2OqwBi" id="1CY1mmChKfB" role="3uHU7B">
                                    <node concept="2OwXpG" id="1CY1mmChKfC" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                    </node>
                                    <node concept="37vLTw" id="1CY1mmChKfD" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7_KjZPan869" role="3uHU7w">
                                    <ref role="3cqZAo" node="7_KjZP9Ou53" resolve="x1" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1eOMI4" id="1CY1mmChKfF" role="3uHU7B">
                                <node concept="3cpWsd" id="1CY1mmChKfG" role="1eOMHV">
                                  <node concept="2OqwBi" id="1CY1mmChKfH" role="3uHU7B">
                                    <node concept="2OwXpG" id="1CY1mmChKfI" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                    </node>
                                    <node concept="37vLTw" id="1CY1mmChKfJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7_KjZPamFzB" role="3uHU7w">
                                    <ref role="3cqZAo" node="7_KjZP9Ou4Q" resolve="nsx" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1eOMI4" id="1CY1mmChKfL" role="3uHU7w">
                              <node concept="3cpWsd" id="1CY1mmChKfM" role="1eOMHV">
                                <node concept="2OqwBi" id="1CY1mmChKfN" role="3uHU7B">
                                  <node concept="2OwXpG" id="1CY1mmChKfO" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                  </node>
                                  <node concept="37vLTw" id="1CY1mmChKfP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="1CY1mmChKfQ" role="3uHU7w">
                                  <node concept="37vLTw" id="1CY1mmChKfR" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7_KjZP9Ou4D" resolve="s" />
                                  </node>
                                  <node concept="2OwXpG" id="1CY1mmChKfS" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="1CY1mmChKfT" role="9aQIa">
                    <node concept="3clFbS" id="1CY1mmChKfU" role="9aQI4">
                      <node concept="3clFbF" id="1CY1mmChKfV" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmChKfW" role="3clFbG">
                          <node concept="37vLTw" id="1CY1mmCicT6" role="37vLTJ">
                            <ref role="3cqZAo" node="1CY1mmCi0Ae" resolve="kind" />
                          </node>
                          <node concept="Rm8GO" id="1CY1mmChKfY" role="37vLTx">
                            <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                            <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1CY1mmChKfZ" role="3cqZAp" />
                      <node concept="3clFbF" id="1CY1mmChKg0" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmChKg1" role="3clFbG">
                          <node concept="3cpWs3" id="1CY1mmChKg2" role="37vLTx">
                            <node concept="37vLTw" id="1gL472CVfFj" role="3uHU7w">
                              <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                            </node>
                            <node concept="37vLTw" id="7_KjZPaiGXJ" role="3uHU7B">
                              <ref role="3cqZAo" node="7_KjZP9Ou4Q" resolve="nsx" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7_KjZPaqFgq" role="37vLTJ">
                            <ref role="3cqZAo" node="7_KjZP9Ou53" resolve="x1" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1CY1mmChKg5" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmChKg6" role="3clFbG">
                          <node concept="3cpWsd" id="1CY1mmChKg7" role="37vLTx">
                            <node concept="37vLTw" id="1gL472CVfFq" role="3uHU7w">
                              <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                            </node>
                            <node concept="2OqwBi" id="1CY1mmChKg8" role="3uHU7B">
                              <node concept="37vLTw" id="1CY1mmChKg9" role="2Oq$k0">
                                <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                              </node>
                              <node concept="2OwXpG" id="1CY1mmChKga" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="7_KjZPad8tt" role="37vLTJ">
                            <ref role="3cqZAo" node="7_KjZP9Ou5f" resolve="x2" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1CY1mmChKgc" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmChKgd" role="3clFbG">
                          <node concept="FJ1c_" id="1CY1mmChKge" role="37vLTx">
                            <node concept="3cmrfG" id="1CY1mmChKgf" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                            <node concept="1eOMI4" id="1CY1mmChKgg" role="3uHU7B">
                              <node concept="3cpWs3" id="1CY1mmChKgh" role="1eOMHV">
                                <node concept="2OqwBi" id="1CY1mmChKgi" role="3uHU7B">
                                  <node concept="2OwXpG" id="1CY1mmChKgj" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                  </node>
                                  <node concept="37vLTw" id="1CY1mmChKgk" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="7_KjZPaiIzP" role="3uHU7w">
                                  <ref role="3cqZAo" node="7_KjZP9Ou4W" resolve="nsy" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="7_KjZPac7i9" role="37vLTJ">
                            <ref role="3cqZAo" node="7_KjZP9Ou59" resolve="y" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="1CY1mmChKgn" role="3cqZAp">
                        <node concept="3clFbS" id="1CY1mmChKgo" role="3clFbx">
                          <node concept="3clFbF" id="1CY1mmChKgp" role="3cqZAp">
                            <node concept="37vLTI" id="1CY1mmChKgq" role="3clFbG">
                              <node concept="3cpWs3" id="1CY1mmChKgr" role="37vLTx">
                                <node concept="37vLTw" id="1gL472CVfFx" role="3uHU7w">
                                  <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                                </node>
                                <node concept="2OqwBi" id="1CY1mmChKgs" role="3uHU7B">
                                  <node concept="2OwXpG" id="1CY1mmChKgt" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                  </node>
                                  <node concept="37vLTw" id="1CY1mmChKgu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="7_KjZPaherx" role="37vLTJ">
                                <ref role="3cqZAo" node="7_KjZP9Ou59" resolve="y" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="1CY1mmChKgw" role="3clFbw">
                          <node concept="3eOVzh" id="1CY1mmChKgx" role="3uHU7w">
                            <node concept="2OqwBi" id="1CY1mmChKgy" role="3uHU7w">
                              <node concept="2OwXpG" id="1CY1mmChKgz" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                              </node>
                              <node concept="37vLTw" id="1CY1mmChKg$" role="2Oq$k0">
                                <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                              </node>
                            </node>
                            <node concept="3cpWsd" id="1CY1mmChKg_" role="3uHU7B">
                              <node concept="37vLTw" id="1gL472CVfFC" role="3uHU7w">
                                <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                              </node>
                              <node concept="37vLTw" id="7_KjZPabElC" role="3uHU7B">
                                <ref role="3cqZAo" node="7_KjZP9Ou59" resolve="y" />
                              </node>
                            </node>
                          </node>
                          <node concept="2d3UOw" id="1CY1mmChKgB" role="3uHU7B">
                            <node concept="37vLTw" id="7_KjZPafdgk" role="3uHU7B">
                              <ref role="3cqZAo" node="7_KjZP9Ou59" resolve="y" />
                            </node>
                            <node concept="2OqwBi" id="1CY1mmChKgD" role="3uHU7w">
                              <node concept="2OwXpG" id="1CY1mmChKgE" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                              </node>
                              <node concept="37vLTw" id="1CY1mmChKgF" role="2Oq$k0">
                                <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="1CY1mmChKgG" role="3eNLev">
                          <node concept="3clFbS" id="1CY1mmChKgH" role="3eOfB_">
                            <node concept="3clFbF" id="1CY1mmChKgI" role="3cqZAp">
                              <node concept="37vLTI" id="1CY1mmChKgJ" role="3clFbG">
                                <node concept="3cpWsd" id="1CY1mmChKgK" role="37vLTx">
                                  <node concept="2OqwBi" id="1CY1mmChKgL" role="3uHU7B">
                                    <node concept="2OwXpG" id="1CY1mmChKgM" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                    </node>
                                    <node concept="37vLTw" id="1CY1mmChKgN" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1gL472CVfFJ" role="3uHU7w">
                                    <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="7_KjZPaiIIW" role="37vLTJ">
                                  <ref role="3cqZAo" node="7_KjZP9Ou59" resolve="y" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="1CY1mmChKgP" role="3eO9$A">
                            <node concept="3eOSWO" id="1CY1mmChKgQ" role="3uHU7w">
                              <node concept="3cpWs3" id="1CY1mmChKgR" role="3uHU7B">
                                <node concept="37vLTw" id="1gL472CVfFQ" role="3uHU7w">
                                  <ref role="3cqZAo" node="1CY1mmC1W5R" resolve="ENDPOINTS_PADDING" />
                                </node>
                                <node concept="37vLTw" id="7_KjZPahe34" role="3uHU7B">
                                  <ref role="3cqZAo" node="7_KjZP9Ou59" resolve="y" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1CY1mmChKgT" role="3uHU7w">
                                <node concept="2OwXpG" id="1CY1mmChKgU" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                </node>
                                <node concept="37vLTw" id="1CY1mmChKgV" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                                </node>
                              </node>
                            </node>
                            <node concept="3eOVzh" id="1CY1mmChKgW" role="3uHU7B">
                              <node concept="2OqwBi" id="1CY1mmChKgX" role="3uHU7w">
                                <node concept="2OwXpG" id="1CY1mmChKgY" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                </node>
                                <node concept="37vLTw" id="1CY1mmChKgZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="7_KjZPaiIwC" role="3uHU7B">
                                <ref role="3cqZAo" node="7_KjZP9Ou59" resolve="y" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="1CY1mmChKh1" role="3cqZAp" />
              </node>
            </node>
            <node concept="3KbdKl" id="1CY1mmChKh2" role="3KbHQx">
              <node concept="Rm8GO" id="1CY1mmChKh3" role="3Kbmr1">
                <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
              </node>
              <node concept="3clFbS" id="1CY1mmChKh4" role="3Kbo56">
                <node concept="3clFbJ" id="1CY1mmChKh5" role="3cqZAp">
                  <node concept="2dkUwp" id="1CY1mmChKh6" role="3clFbw">
                    <node concept="37vLTw" id="7_KjZPaiH0W" role="3uHU7B">
                      <ref role="3cqZAo" node="7_KjZP9Ou4Q" resolve="nsx" />
                    </node>
                    <node concept="3cpWsd" id="1CY1mmChKh8" role="3uHU7w">
                      <node concept="37vLTw" id="7_KjZPaiIbO" role="3uHU7w">
                        <ref role="3cqZAo" node="7_KjZP9Ou53" resolve="x1" />
                      </node>
                      <node concept="3cpWs3" id="1CY1mmChKha" role="3uHU7B">
                        <node concept="37vLTw" id="7_KjZPaeaIO" role="3uHU7B">
                          <ref role="3cqZAo" node="7_KjZP9Ou5f" resolve="x2" />
                        </node>
                        <node concept="2OqwBi" id="1CY1mmChKhc" role="3uHU7w">
                          <node concept="2OwXpG" id="1CY1mmChKhd" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                          <node concept="37vLTw" id="1CY1mmChKhe" role="2Oq$k0">
                            <ref role="3cqZAo" node="7_KjZP9Ou4D" resolve="s" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1CY1mmChKhf" role="3clFbx">
                    <node concept="3clFbF" id="1CY1mmChKhg" role="3cqZAp">
                      <node concept="37vLTI" id="1CY1mmChKhh" role="3clFbG">
                        <node concept="37vLTw" id="1CY1mmCildg" role="37vLTJ">
                          <ref role="3cqZAo" node="1CY1mmCi0Ae" resolve="kind" />
                        </node>
                        <node concept="Rm8GO" id="1CY1mmChKhj" role="37vLTx">
                          <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                          <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1CY1mmChKhk" role="3cqZAp">
                      <node concept="37vLTI" id="1CY1mmChKhl" role="3clFbG">
                        <node concept="37vLTw" id="7_KjZPabEyX" role="37vLTJ">
                          <ref role="3cqZAo" node="7_KjZP9Ou53" resolve="x1" />
                        </node>
                        <node concept="3cpWs3" id="4KEbQaiaTqo" role="37vLTx">
                          <node concept="37vLTw" id="7_KjZPaadW9" role="3uHU7B">
                            <ref role="3cqZAo" node="7_KjZP9Ou4Q" resolve="nsx" />
                          </node>
                          <node concept="FJ1c_" id="1CY1mmChKhr" role="3uHU7w">
                            <node concept="17qRlL" id="1CY1mmChKhs" role="3uHU7B">
                              <node concept="1eOMI4" id="1CY1mmChKht" role="3uHU7w">
                                <node concept="3cpWsd" id="1CY1mmChKhu" role="1eOMHV">
                                  <node concept="2OqwBi" id="1CY1mmChKhv" role="3uHU7w">
                                    <node concept="37vLTw" id="1CY1mmChKhw" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9Ou4D" resolve="s" />
                                    </node>
                                    <node concept="2OwXpG" id="1CY1mmChKhx" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7_KjZPaiGs9" role="3uHU7B">
                                    <ref role="3cqZAo" node="7_KjZP9Ou53" resolve="x1" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1eOMI4" id="1CY1mmChKhz" role="3uHU7B">
                                <node concept="3cpWsd" id="1CY1mmChKh$" role="1eOMHV">
                                  <node concept="2OqwBi" id="1CY1mmChKh_" role="3uHU7B">
                                    <node concept="2OwXpG" id="1CY1mmChKhA" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                    </node>
                                    <node concept="37vLTw" id="1CY1mmChKhB" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7_KjZPasIrq" role="3uHU7w">
                                    <ref role="3cqZAo" node="7_KjZP9Ou4Q" resolve="nsx" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1eOMI4" id="1CY1mmChKhD" role="3uHU7w">
                              <node concept="3cpWsd" id="1CY1mmChKhE" role="1eOMHV">
                                <node concept="2OqwBi" id="1CY1mmChKhF" role="3uHU7w">
                                  <node concept="37vLTw" id="1CY1mmChKhG" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7_KjZP9Ou4D" resolve="s" />
                                  </node>
                                  <node concept="2OwXpG" id="1CY1mmChKhH" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="1CY1mmChKhI" role="3uHU7B">
                                  <node concept="3cpWsd" id="1CY1mmChKhJ" role="3uHU7B">
                                    <node concept="2OqwBi" id="1CY1mmChKhK" role="3uHU7B">
                                      <node concept="37vLTw" id="1CY1mmChKhL" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                                      </node>
                                      <node concept="2OwXpG" id="1CY1mmChKhM" role="2OqNvi">
                                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="7_KjZPaiGUy" role="3uHU7w">
                                      <ref role="3cqZAo" node="7_KjZP9Ou5f" resolve="x2" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7_KjZPabFgq" role="3uHU7w">
                                    <ref role="3cqZAo" node="7_KjZP9Ou53" resolve="x1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="1CY1mmChKhP" role="9aQIa">
                    <node concept="3clFbS" id="1CY1mmChKhQ" role="9aQI4">
                      <node concept="3clFbF" id="1CY1mmChKhR" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmChKhS" role="3clFbG">
                          <node concept="37vLTw" id="1CY1mmCinAK" role="37vLTJ">
                            <ref role="3cqZAo" node="1CY1mmCi0Ae" resolve="kind" />
                          </node>
                          <node concept="Rm8GO" id="1CY1mmChKhU" role="37vLTx">
                            <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                            <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1CY1mmChKhV" role="3cqZAp">
                        <node concept="37vLTI" id="1CY1mmChKhW" role="3clFbG">
                          <node concept="3cpWs3" id="1CY1mmChKhX" role="37vLTx">
                            <node concept="37vLTw" id="7_KjZPaigy$" role="3uHU7B">
                              <ref role="3cqZAo" node="7_KjZP9Ou4Q" resolve="nsx" />
                            </node>
                            <node concept="1eOMI4" id="1CY1mmChKhZ" role="3uHU7w">
                              <node concept="3cpWsd" id="1CY1mmChKi0" role="1eOMHV">
                                <node concept="37vLTw" id="7_KjZPakDtE" role="3uHU7B">
                                  <ref role="3cqZAo" node="7_KjZP9Ou53" resolve="x1" />
                                </node>
                                <node concept="2OqwBi" id="1CY1mmChKi2" role="3uHU7w">
                                  <node concept="2OwXpG" id="1CY1mmChKi3" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                  </node>
                                  <node concept="37vLTw" id="1CY1mmChKi4" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7_KjZP9Ou4D" resolve="s" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="7_KjZPaiIiA" role="37vLTJ">
                            <ref role="3cqZAo" node="7_KjZP9Ou53" resolve="x1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="1CY1mmChKif" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1gL472Dy3RJ" role="3cqZAp">
            <node concept="2ShNRf" id="1gL472Dyegh" role="3cqZAk">
              <node concept="1pGfFk" id="1gL472Dyegi" role="2ShVmc">
                <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                <node concept="37vLTw" id="1gL472Dypch" role="37wK5m">
                  <ref role="3cqZAo" node="1gL472CVa6t" resolve="newSource" />
                </node>
                <node concept="37vLTw" id="1gL472DyzWf" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9Ou4J" resolve="t" />
                </node>
                <node concept="37vLTw" id="1gL472Dyegl" role="37wK5m">
                  <ref role="3cqZAo" node="1CY1mmCi0Ae" resolve="kind" />
                </node>
                <node concept="37vLTw" id="1gL472Dyegm" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9Ou53" resolve="x1" />
                </node>
                <node concept="37vLTw" id="1gL472Dyegn" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9Ou59" resolve="y" />
                </node>
                <node concept="37vLTw" id="1gL472Dyego" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9Ou5f" resolve="x2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1gL472CV5aC" role="1B3o_S" />
        <node concept="3uibUv" id="1gL472CV7aJ" role="3clF45">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
        <node concept="37vLTG" id="1gL472CVa6t" role="3clF46">
          <property role="TrG5h" value="newSource" />
          <node concept="3uibUv" id="1gL472CVa6s" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1CY1mmChqiS" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4ZaR9mNllb4" role="1B3o_S" />
    <node concept="3uibUv" id="17nGqbJCM4f" role="EKbjA">
      <ref role="3uigEE" to="5lkm:7sG$k3BBij3" resolve="ConnectionController" />
      <node concept="3uibUv" id="IMWzYPks10" role="11_B2D">
        <ref role="3uigEE" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
      </node>
      <node concept="3uibUv" id="IMWzYPoMvE" role="11_B2D">
        <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="IMWzYPgjIH">
    <property role="TrG5h" value="FBConnectionCursor" />
    <node concept="QsSxf" id="IMWzYPgjNJ" role="Qtgdg">
      <property role="TrG5h" value="SOURCE_ENDPOINT" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="IMWzYPgk1c" role="Qtgdg">
      <property role="TrG5h" value="SOURCE_EDGE" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="IMWzYPgjPN" role="Qtgdg">
      <property role="TrG5h" value="TARGET_ENDPOINT" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="IMWzYPgkb0" role="Qtgdg">
      <property role="TrG5h" value="TARGET_EDGE" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="IMWzYPgjRG" role="Qtgdg">
      <property role="TrG5h" value="X1_EDGE" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="IMWzYPgkeu" role="Qtgdg">
      <property role="TrG5h" value="Y_EDGE" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="IMWzYPgjVi" role="Qtgdg">
      <property role="TrG5h" value="X2_EDGE" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="3Tm1VV" id="IMWzYPgjII" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="IMWzYPg151">
    <property role="TrG5h" value="FBConnectionPath" />
    <node concept="2tJIrI" id="IMWzYPg15O" role="jymVt" />
    <node concept="312cEg" id="IMWzYPgaOC" role="jymVt">
      <property role="TrG5h" value="mySourcePosition" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IMWzYPgaOD" role="1B3o_S" />
      <node concept="3uibUv" id="IMWzYPgaQ0" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2AHcQZ" id="IMWzYPgcEX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPgcKn" role="jymVt" />
    <node concept="312cEg" id="IMWzYPgaOF" role="jymVt">
      <property role="TrG5h" value="myTargetPosition" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IMWzYPgaOG" role="1B3o_S" />
      <node concept="3uibUv" id="IMWzYPgaQK" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2AHcQZ" id="IMWzYPgcVn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPgd0T" role="jymVt" />
    <node concept="312cEg" id="IMWzYPgb1N" role="jymVt">
      <property role="TrG5h" value="myPathKind" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IMWzYPgb0g" role="1B3o_S" />
      <node concept="3uibUv" id="IMWzYPgb1D" role="1tU5fm">
        <ref role="3uigEE" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
      </node>
      <node concept="2AHcQZ" id="IMWzYPgdbV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPgdf3" role="jymVt" />
    <node concept="312cEg" id="IMWzYPgaT6" role="jymVt">
      <property role="TrG5h" value="myX1" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IMWzYPgaSb" role="1B3o_S" />
      <node concept="10Oyi0" id="IMWzYPgaSZ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="IMWzYPgaWl" role="jymVt">
      <property role="TrG5h" value="myY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IMWzYPgaWm" role="1B3o_S" />
      <node concept="10Oyi0" id="IMWzYPgaWn" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="IMWzYPgaVg" role="jymVt">
      <property role="TrG5h" value="myX2" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IMWzYPgaUi" role="1B3o_S" />
      <node concept="10Oyi0" id="IMWzYPgaV9" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="IMWzYPgb62" role="jymVt" />
    <node concept="3Tm1VV" id="IMWzYPg152" role="1B3o_S" />
    <node concept="3clFbW" id="IMWzYPgb6Q" role="jymVt">
      <node concept="3cqZAl" id="IMWzYPgb6R" role="3clF45" />
      <node concept="3Tm1VV" id="IMWzYPgb6S" role="1B3o_S" />
      <node concept="3clFbS" id="IMWzYPgb6U" role="3clF47">
        <node concept="3clFbF" id="IMWzYPgb6Y" role="3cqZAp">
          <node concept="37vLTI" id="IMWzYPgb70" role="3clFbG">
            <node concept="37vLTw" id="IMWzYPgbo6" role="37vLTJ">
              <ref role="3cqZAo" node="IMWzYPgaOC" resolve="mySourcePosition" />
            </node>
            <node concept="37vLTw" id="IMWzYPgb77" role="37vLTx">
              <ref role="3cqZAo" node="IMWzYPgb6X" resolve="sourcePosition" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IMWzYPgb7a" role="3cqZAp">
          <node concept="37vLTI" id="IMWzYPgb7c" role="3clFbG">
            <node concept="37vLTw" id="IMWzYPgbtP" role="37vLTJ">
              <ref role="3cqZAo" node="IMWzYPgaOF" resolve="myTargetPosition" />
            </node>
            <node concept="37vLTw" id="IMWzYPgb7j" role="37vLTx">
              <ref role="3cqZAo" node="IMWzYPgb79" resolve="targetPosition" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IMWzYPgb7m" role="3cqZAp">
          <node concept="37vLTI" id="IMWzYPgb7o" role="3clFbG">
            <node concept="37vLTw" id="IMWzYPgb_j" role="37vLTJ">
              <ref role="3cqZAo" node="IMWzYPgb1N" resolve="myPathKind" />
            </node>
            <node concept="37vLTw" id="IMWzYPgb7v" role="37vLTx">
              <ref role="3cqZAo" node="IMWzYPgb7l" resolve="pathKind" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IMWzYPgb7y" role="3cqZAp">
          <node concept="37vLTI" id="IMWzYPgb7$" role="3clFbG">
            <node concept="37vLTw" id="IMWzYPgbJ1" role="37vLTJ">
              <ref role="3cqZAo" node="IMWzYPgaT6" resolve="myX1" />
            </node>
            <node concept="37vLTw" id="IMWzYPgb7F" role="37vLTx">
              <ref role="3cqZAo" node="IMWzYPgb7x" resolve="x1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IMWzYPgb7I" role="3cqZAp">
          <node concept="37vLTI" id="IMWzYPgb7K" role="3clFbG">
            <node concept="37vLTw" id="IMWzYPgbVw" role="37vLTJ">
              <ref role="3cqZAo" node="IMWzYPgaWl" resolve="myY" />
            </node>
            <node concept="37vLTw" id="IMWzYPgb7R" role="37vLTx">
              <ref role="3cqZAo" node="IMWzYPgb7H" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IMWzYPgb7U" role="3cqZAp">
          <node concept="37vLTI" id="IMWzYPgb7W" role="3clFbG">
            <node concept="37vLTw" id="IMWzYPgc8b" role="37vLTJ">
              <ref role="3cqZAo" node="IMWzYPgaVg" resolve="myX2" />
            </node>
            <node concept="37vLTw" id="IMWzYPgb83" role="37vLTx">
              <ref role="3cqZAo" node="IMWzYPgb7T" resolve="x2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="IMWzYPgb6X" role="3clF46">
        <property role="TrG5h" value="sourcePosition" />
        <node concept="3uibUv" id="IMWzYPgb6W" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="IMWzYPgb79" role="3clF46">
        <property role="TrG5h" value="targetPosition" />
        <node concept="3uibUv" id="IMWzYPgb78" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="IMWzYPgb7l" role="3clF46">
        <property role="TrG5h" value="pathKind" />
        <node concept="3uibUv" id="IMWzYPgb7k" role="1tU5fm">
          <ref role="3uigEE" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
        </node>
      </node>
      <node concept="37vLTG" id="IMWzYPgb7x" role="3clF46">
        <property role="TrG5h" value="x1" />
        <node concept="10Oyi0" id="IMWzYPgb7w" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IMWzYPgb7H" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="IMWzYPgb7G" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IMWzYPgb7T" role="3clF46">
        <property role="TrG5h" value="x2" />
        <node concept="10Oyi0" id="IMWzYPgb7S" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPgcde" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPgcm$" role="jymVt">
      <property role="TrG5h" value="getSourcePosition" />
      <node concept="3uibUv" id="IMWzYPgcm_" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="3Tm1VV" id="IMWzYPgcmA" role="1B3o_S" />
      <node concept="3clFbS" id="IMWzYPgcmB" role="3clF47">
        <node concept="3clFbF" id="IMWzYPgcmC" role="3cqZAp">
          <node concept="2ShNRf" id="1gL472EBwd3" role="3clFbG">
            <node concept="1pGfFk" id="1gL472EBwO1" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(java.awt.Point)" resolve="Point" />
              <node concept="37vLTw" id="IMWzYPgcmz" role="37wK5m">
                <ref role="3cqZAo" node="IMWzYPgaOC" resolve="mySourcePosition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="IMWzYPgdDr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPgefg" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPgcmE" role="jymVt">
      <property role="TrG5h" value="getTargetPosition" />
      <node concept="3uibUv" id="IMWzYPgcmF" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="3Tm1VV" id="IMWzYPgcmG" role="1B3o_S" />
      <node concept="3clFbS" id="IMWzYPgcmH" role="3clF47">
        <node concept="3clFbF" id="1gL472EBwZz" role="3cqZAp">
          <node concept="2ShNRf" id="1gL472EBwZ$" role="3clFbG">
            <node concept="1pGfFk" id="1gL472EBwZ_" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(java.awt.Point)" resolve="Point" />
              <node concept="37vLTw" id="IMWzYPgcmD" role="37wK5m">
                <ref role="3cqZAo" node="IMWzYPgaOF" resolve="myTargetPosition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="IMWzYPgdWm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPgeHg" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPgcmK" role="jymVt">
      <property role="TrG5h" value="getPathKind" />
      <node concept="3uibUv" id="IMWzYPgcmL" role="3clF45">
        <ref role="3uigEE" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
      </node>
      <node concept="3Tm1VV" id="IMWzYPgcmM" role="1B3o_S" />
      <node concept="3clFbS" id="IMWzYPgcmN" role="3clF47">
        <node concept="3clFbF" id="IMWzYPgcmO" role="3cqZAp">
          <node concept="37vLTw" id="IMWzYPgcmJ" role="3clFbG">
            <ref role="3cqZAo" node="IMWzYPgb1N" resolve="myPathKind" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="IMWzYPgeqm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPgeSn" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPgcmQ" role="jymVt">
      <property role="TrG5h" value="getX1" />
      <node concept="10Oyi0" id="IMWzYPgcmR" role="3clF45" />
      <node concept="3Tm1VV" id="IMWzYPgcmS" role="1B3o_S" />
      <node concept="3clFbS" id="IMWzYPgcmT" role="3clF47">
        <node concept="3clFbF" id="IMWzYPgcmU" role="3cqZAp">
          <node concept="37vLTw" id="IMWzYPgcmP" role="3clFbG">
            <ref role="3cqZAo" node="IMWzYPgaT6" resolve="myX1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPgf3v" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPgcmW" role="jymVt">
      <property role="TrG5h" value="getY" />
      <node concept="10Oyi0" id="IMWzYPgcmX" role="3clF45" />
      <node concept="3Tm1VV" id="IMWzYPgcmY" role="1B3o_S" />
      <node concept="3clFbS" id="IMWzYPgcmZ" role="3clF47">
        <node concept="3clFbF" id="IMWzYPgcn0" role="3cqZAp">
          <node concept="37vLTw" id="IMWzYPgcmV" role="3clFbG">
            <ref role="3cqZAo" node="IMWzYPgaWl" resolve="myY" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPgfeC" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPgcn2" role="jymVt">
      <property role="TrG5h" value="getX2" />
      <node concept="10Oyi0" id="IMWzYPgcn3" role="3clF45" />
      <node concept="3Tm1VV" id="IMWzYPgcn4" role="1B3o_S" />
      <node concept="3clFbS" id="IMWzYPgcn5" role="3clF47">
        <node concept="3clFbF" id="IMWzYPgcn6" role="3cqZAp">
          <node concept="37vLTw" id="IMWzYPgcn1" role="3clFbG">
            <ref role="3cqZAo" node="IMWzYPgaVg" resolve="myX2" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="309fsJ6oq8i">
    <property role="TrG5h" value="FBConnectionPathPainter" />
    <node concept="Wx3nA" id="6$FGuy62FBC" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ENDPOINT_HOVER_LENGTH" />
      <node concept="3Tm6S6" id="6$FGuy62FB_" role="1B3o_S" />
      <node concept="10Oyi0" id="6$FGuy62FBA" role="1tU5fm" />
      <node concept="10M0yZ" id="6$FGuy62FBB" role="33vP2m">
        <ref role="1PxDUh" node="4ZaR9mNllb3" resolve="FBConnectionController" />
        <ref role="3cqZAo" node="6tmliaB1FmK" resolve="ENDPOINT_HOVER_LENGTH" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy62HtR" role="jymVt" />
    <node concept="312cEg" id="IMWzYPlCEY" role="jymVt">
      <property role="TrG5h" value="myPath" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IMWzYPlCEZ" role="1B3o_S" />
      <node concept="3uibUv" id="IMWzYPlCF1" role="1tU5fm">
        <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIXz9EP" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXzd0A" role="jymVt" />
    <node concept="312cEg" id="IMWzYPlEA6" role="jymVt">
      <property role="TrG5h" value="myCursor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IMWzYPlEA7" role="1B3o_S" />
      <node concept="3uibUv" id="IMWzYPlEA9" role="1tU5fm">
        <ref role="3uigEE" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIXzeUt" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="309fsJ6owq5" role="jymVt" />
    <node concept="3clFbW" id="309fsJ6owEe" role="jymVt">
      <node concept="3cqZAl" id="309fsJ6owEf" role="3clF45" />
      <node concept="3clFbS" id="309fsJ6owEi" role="3clF47">
        <node concept="3clFbF" id="IMWzYPlIb7" role="3cqZAp">
          <node concept="37vLTI" id="IMWzYPlIFJ" role="3clFbG">
            <node concept="37vLTw" id="IMWzYPlIJ$" role="37vLTx">
              <ref role="3cqZAo" node="IMWzYPlCvJ" resolve="path" />
            </node>
            <node concept="37vLTw" id="IMWzYPlIb5" role="37vLTJ">
              <ref role="3cqZAo" node="IMWzYPlCEY" resolve="myPath" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IMWzYPlIPV" role="3cqZAp">
          <node concept="37vLTI" id="IMWzYPlKyk" role="3clFbG">
            <node concept="37vLTw" id="IMWzYPlKDQ" role="37vLTx">
              <ref role="3cqZAo" node="IMWzYPlEs7" resolve="cursor" />
            </node>
            <node concept="37vLTw" id="IMWzYPlIPT" role="37vLTJ">
              <ref role="3cqZAo" node="IMWzYPlEA6" resolve="myCursor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="IMWzYPlCvJ" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="IMWzYPlCEs" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXz9CE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="IMWzYPlEs7" role="3clF46">
        <property role="TrG5h" value="cursor" />
        <node concept="3uibUv" id="IMWzYPlEvL" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXz9Ar" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy62NqU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="309fsJ6oxPg" role="jymVt" />
    <node concept="2YIFZL" id="6$FGuy68ufj" role="jymVt">
      <property role="TrG5h" value="setupSelectedPathPaint" />
      <node concept="37vLTG" id="6$FGuy68w5t" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="6$FGuy68w5u" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="6$FGuy68ufm" role="3clF47">
        <node concept="3clFbF" id="6$FGuy68Efz" role="3cqZAp">
          <node concept="2OqwBi" id="6$FGuy68Ef$" role="3clFbG">
            <node concept="liA8E" id="6$FGuy68Ef_" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke):void" resolve="setStroke" />
              <node concept="2ShNRf" id="6$FGuy68EfA" role="37wK5m">
                <node concept="1pGfFk" id="6$FGuy68EfB" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float)" resolve="BasicStroke" />
                  <node concept="2$xPTn" id="6$FGuy68EkL" role="37wK5m">
                    <property role="2$xPTl" value="2.5f" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="6$FGuy68EfG" role="2Oq$k0">
              <node concept="10QFUN" id="6$FGuy68EfH" role="1eOMHV">
                <node concept="3uibUv" id="6$FGuy68EfI" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="6$FGuy68EfJ" role="10QFUP">
                  <ref role="3cqZAo" node="6$FGuy68w5t" resolve="graphics" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy68sjE" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy68uf8" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="6$FGuy68w61" role="jymVt">
      <property role="TrG5h" value="setupRegularPathPaint" />
      <node concept="37vLTG" id="6$FGuy68w62" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="6$FGuy68w63" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="6$FGuy68w64" role="3clF47">
        <node concept="3clFbF" id="6$FGuy68Eo7" role="3cqZAp">
          <node concept="2OqwBi" id="6$FGuy68Eo8" role="3clFbG">
            <node concept="liA8E" id="6$FGuy68Eo9" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke):void" resolve="setStroke" />
              <node concept="2ShNRf" id="6$FGuy68Eoa" role="37wK5m">
                <node concept="1pGfFk" id="6$FGuy68Eob" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float)" resolve="BasicStroke" />
                  <node concept="2$xPTn" id="6$FGuy68Eoc" role="37wK5m">
                    <property role="2$xPTl" value="1.5f" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="6$FGuy68Eod" role="2Oq$k0">
              <node concept="10QFUN" id="6$FGuy68Eoe" role="1eOMHV">
                <node concept="3uibUv" id="6$FGuy68Eof" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="6$FGuy68Eog" role="10QFUP">
                  <ref role="3cqZAo" node="6$FGuy68w62" resolve="graphics" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy68w65" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy68w66" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="6$FGuy68xM2" role="jymVt">
      <property role="TrG5h" value="setupShadowPathPaint" />
      <node concept="37vLTG" id="6$FGuy68xM3" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="6$FGuy68xM4" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="6$FGuy68xM5" role="3clF47">
        <node concept="3clFbF" id="6$FGuy68GmN" role="3cqZAp">
          <node concept="2OqwBi" id="6$FGuy68GmO" role="3clFbG">
            <node concept="liA8E" id="6$FGuy68GmP" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke):void" resolve="setStroke" />
              <node concept="2ShNRf" id="6$FGuy68GmQ" role="37wK5m">
                <node concept="1pGfFk" id="6$FGuy68GmR" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float,int,int,float,float[],float)" resolve="BasicStroke" />
                  <node concept="2$xPTn" id="6$FGuy68GmS" role="37wK5m">
                    <property role="2$xPTl" value="1.f" />
                  </node>
                  <node concept="10M0yZ" id="6$FGuy68GmT" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~BasicStroke" resolve="BasicStroke" />
                    <ref role="3cqZAo" to="z60i:~BasicStroke.CAP_BUTT" resolve="CAP_BUTT" />
                  </node>
                  <node concept="10M0yZ" id="6$FGuy68GmU" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~BasicStroke.JOIN_MITER" resolve="JOIN_MITER" />
                    <ref role="1PxDUh" to="z60i:~BasicStroke" resolve="BasicStroke" />
                  </node>
                  <node concept="3cmrfG" id="6$FGuy68GmV" role="37wK5m">
                    <property role="3cmrfH" value="3" />
                  </node>
                  <node concept="2ShNRf" id="6$FGuy68GmW" role="37wK5m">
                    <node concept="3g6Rrh" id="6$FGuy68GmX" role="2ShVmc">
                      <node concept="10OMs4" id="6$FGuy68GmY" role="3g7fb8" />
                      <node concept="3cmrfG" id="6$FGuy68GmZ" role="3g7hyw">
                        <property role="3cmrfH" value="3" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6$FGuy68Gn0" role="37wK5m">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="6$FGuy68Gn1" role="2Oq$k0">
              <node concept="10QFUN" id="6$FGuy68Gn2" role="1eOMHV">
                <node concept="3uibUv" id="6$FGuy68Gn3" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="6$FGuy68Gn4" role="10QFUP">
                  <ref role="3cqZAo" node="6$FGuy68xM3" resolve="graphics" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy68xM6" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy68xM7" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6$FGuy68qtg" role="jymVt" />
    <node concept="3clFb_" id="309fsJ6oyo$" role="jymVt">
      <property role="TrG5h" value="paint" />
      <node concept="3clFbS" id="309fsJ6oyoB" role="3clF47">
        <node concept="3cpWs8" id="IMWzYPlY8e" role="3cqZAp">
          <node concept="3cpWsn" id="IMWzYPlY8f" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="IMWzYPlY8g" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="IMWzYPm0i9" role="33vP2m">
              <node concept="37vLTw" id="IMWzYPm07u" role="2Oq$k0">
                <ref role="3cqZAo" node="IMWzYPlCEY" resolve="myPath" />
              </node>
              <node concept="liA8E" id="IMWzYPm28s" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IMWzYPm3QS" role="3cqZAp">
          <node concept="3cpWsn" id="IMWzYPm3QT" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="3uibUv" id="IMWzYPm3QU" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="IMWzYPm3QV" role="33vP2m">
              <node concept="37vLTw" id="IMWzYPm3QW" role="2Oq$k0">
                <ref role="3cqZAo" node="IMWzYPlCEY" resolve="myPath" />
              </node>
              <node concept="liA8E" id="IMWzYPm3QX" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IMWzYPm8Vs" role="3cqZAp">
          <node concept="3cpWsn" id="IMWzYPm8Vt" role="3cpWs9">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="IMWzYPm8Vu" role="1tU5fm">
              <ref role="3uigEE" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
            </node>
            <node concept="2OqwBi" id="IMWzYPmaGE" role="33vP2m">
              <node concept="37vLTw" id="IMWzYPmaA$" role="2Oq$k0">
                <ref role="3cqZAo" node="IMWzYPlCEY" resolve="myPath" />
              </node>
              <node concept="liA8E" id="IMWzYPmcz1" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4KEbQahXwO4" role="3cqZAp">
          <node concept="3cpWsn" id="4KEbQahXwO5" role="3cpWs9">
            <property role="TrG5h" value="x1" />
            <node concept="10Oyi0" id="4KEbQahXwO1" role="1tU5fm" />
            <node concept="2OqwBi" id="IMWzYPlNAe" role="33vP2m">
              <node concept="37vLTw" id="IMWzYPlN5Z" role="2Oq$k0">
                <ref role="3cqZAo" node="IMWzYPlCEY" resolve="myPath" />
              </node>
              <node concept="liA8E" id="IMWzYPlQRb" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4KEbQahXzwK" role="3cqZAp">
          <node concept="3cpWsn" id="4KEbQahXzwL" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="4KEbQahXzwI" role="1tU5fm" />
            <node concept="2OqwBi" id="IMWzYPlSsO" role="33vP2m">
              <node concept="37vLTw" id="IMWzYPlSsP" role="2Oq$k0">
                <ref role="3cqZAo" node="IMWzYPlCEY" resolve="myPath" />
              </node>
              <node concept="liA8E" id="IMWzYPlSsQ" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmW" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4KEbQahX_hh" role="3cqZAp">
          <node concept="3cpWsn" id="4KEbQahX_hi" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10Oyi0" id="4KEbQahX_hf" role="1tU5fm" />
            <node concept="2OqwBi" id="IMWzYPlSFV" role="33vP2m">
              <node concept="37vLTw" id="IMWzYPlSFW" role="2Oq$k0">
                <ref role="3cqZAo" node="IMWzYPlCEY" resolve="myPath" />
              </node>
              <node concept="liA8E" id="IMWzYPlSFX" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IMWzYPmc$S" role="3cqZAp" />
        <node concept="3KaCP$" id="309fsJ6oGZO" role="3cqZAp">
          <node concept="37vLTw" id="309fsJ6oQ3T" role="3KbGdf">
            <ref role="3cqZAo" node="IMWzYPm8Vt" resolve="kind" />
          </node>
          <node concept="3KbdKl" id="309fsJ6oGZS" role="3KbHQx">
            <node concept="Rm8GO" id="309fsJ6oGZT" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYOE0" resolve="Straight" />
            </node>
            <node concept="3clFbS" id="309fsJ6oGZU" role="3Kbo56">
              <node concept="3clFbF" id="309fsJ6oGZV" role="3cqZAp">
                <node concept="2OqwBi" id="309fsJ6oGZW" role="3clFbG">
                  <node concept="37vLTw" id="309fsJ6oGZX" role="2Oq$k0">
                    <ref role="3cqZAo" node="309fsJ6oyGY" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="309fsJ6oGZY" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                    <node concept="2OqwBi" id="309fsJ6oGZZ" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6oJJR" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH01" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH02" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6oKQl" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH04" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH05" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6ppqR" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH07" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH08" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6pCA4" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH0a" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="309fsJ6oH0b" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="309fsJ6oH0c" role="3KbHQx">
            <node concept="Rm8GO" id="309fsJ6oH0d" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
            </node>
            <node concept="3clFbS" id="309fsJ6oH0e" role="3Kbo56">
              <node concept="3clFbF" id="309fsJ6oH0f" role="3cqZAp">
                <node concept="2OqwBi" id="309fsJ6oH0g" role="3clFbG">
                  <node concept="37vLTw" id="309fsJ6oH0h" role="2Oq$k0">
                    <ref role="3cqZAo" node="309fsJ6oyGY" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="309fsJ6oH0i" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                    <node concept="2OqwBi" id="309fsJ6oH0j" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6pCA7" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH0l" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH0m" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6pQ8P" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH0o" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4KEbQahXwOc" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXwO5" resolve="x1" />
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH0q" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6qPoo" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH0s" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="309fsJ6oH0t" role="3cqZAp">
                <node concept="2OqwBi" id="309fsJ6oH0u" role="3clFbG">
                  <node concept="37vLTw" id="309fsJ6oH0v" role="2Oq$k0">
                    <ref role="3cqZAo" node="309fsJ6oyGY" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="309fsJ6oH0w" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                    <node concept="37vLTw" id="4KEbQai3F04" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXwO5" resolve="x1" />
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH0y" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6r135" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH0$" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4KEbQahXwOd" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXwO5" resolve="x1" />
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH0A" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6rvjM" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH0C" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="309fsJ6oH0D" role="3cqZAp">
                <node concept="2OqwBi" id="309fsJ6oH0E" role="3clFbG">
                  <node concept="37vLTw" id="309fsJ6oH0F" role="2Oq$k0">
                    <ref role="3cqZAo" node="309fsJ6oyGY" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="309fsJ6oH0G" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                    <node concept="37vLTw" id="4KEbQahXwOe" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXwO5" resolve="x1" />
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH0I" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6rc0F" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH0K" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH0L" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6rBL7" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH0N" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH0O" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6rm0d" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH0Q" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="309fsJ6oH0R" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="309fsJ6oH0S" role="3KbHQx">
            <node concept="Rm8GO" id="309fsJ6oH0T" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
            </node>
            <node concept="3clFbS" id="309fsJ6oH0U" role="3Kbo56">
              <node concept="3clFbF" id="309fsJ6oH0V" role="3cqZAp">
                <node concept="2OqwBi" id="309fsJ6oH0W" role="3clFbG">
                  <node concept="37vLTw" id="309fsJ6oH0X" role="2Oq$k0">
                    <ref role="3cqZAo" node="309fsJ6oyGY" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="309fsJ6oH0Y" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                    <node concept="2OqwBi" id="309fsJ6oH0Z" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6rJj2" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH11" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH12" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6rQ6G" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH14" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4KEbQahXwOf" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXwO5" resolve="x1" />
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH16" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6rW06" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH18" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="309fsJ6oH19" role="3cqZAp">
                <node concept="2OqwBi" id="309fsJ6oH1a" role="3clFbG">
                  <node concept="37vLTw" id="309fsJ6oH1b" role="2Oq$k0">
                    <ref role="3cqZAo" node="309fsJ6oyGY" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="309fsJ6oH1c" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                    <node concept="37vLTw" id="4KEbQahXwOg" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXwO5" resolve="x1" />
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH1e" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6sSTn" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH1g" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4KEbQahXwOh" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXwO5" resolve="x1" />
                    </node>
                    <node concept="37vLTw" id="4KEbQahXzwS" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXzwL" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="309fsJ6oH1j" role="3cqZAp">
                <node concept="2OqwBi" id="309fsJ6oH1k" role="3clFbG">
                  <node concept="37vLTw" id="309fsJ6oH1l" role="2Oq$k0">
                    <ref role="3cqZAo" node="309fsJ6oyGY" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="309fsJ6oH1m" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                    <node concept="37vLTw" id="4KEbQahXwOi" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXwO5" resolve="x1" />
                    </node>
                    <node concept="37vLTw" id="4KEbQahXzwR" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXzwL" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="4KEbQahX_hp" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahX_hi" resolve="x2" />
                    </node>
                    <node concept="37vLTw" id="4KEbQahXzwT" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXzwL" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="309fsJ6oH1r" role="3cqZAp">
                <node concept="2OqwBi" id="309fsJ6oH1s" role="3clFbG">
                  <node concept="37vLTw" id="309fsJ6oH1t" role="2Oq$k0">
                    <ref role="3cqZAo" node="309fsJ6oyGY" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="309fsJ6oH1u" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                    <node concept="37vLTw" id="4KEbQahXEcs" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahX_hi" resolve="x2" />
                    </node>
                    <node concept="37vLTw" id="4KEbQahXzwU" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahXzwL" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="4KEbQahX_hq" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahX_hi" resolve="x2" />
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH1y" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6sPfx" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH1$" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="309fsJ6oH1_" role="3cqZAp">
                <node concept="2OqwBi" id="309fsJ6oH1A" role="3clFbG">
                  <node concept="37vLTw" id="309fsJ6oH1B" role="2Oq$k0">
                    <ref role="3cqZAo" node="309fsJ6oyGY" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="309fsJ6oH1C" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                    <node concept="37vLTw" id="4KEbQahX_ho" role="37wK5m">
                      <ref role="3cqZAo" node="4KEbQahX_hi" resolve="x2" />
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH1E" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6sYxu" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH1G" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH1H" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6t0uh" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH1J" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="309fsJ6oH1K" role="37wK5m">
                      <node concept="37vLTw" id="309fsJ6t1_Y" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                      <node concept="2OwXpG" id="309fsJ6oH1M" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="309fsJ6oH1N" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmliaAUqHv" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaAUqHw" role="3cpWs9">
            <property role="TrG5h" value="hoverGraphics" />
            <node concept="3uibUv" id="6tmliaAUqHr" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
            </node>
            <node concept="2OqwBi" id="6tmliaAUqHx" role="33vP2m">
              <node concept="37vLTw" id="6tmliaAUqHy" role="2Oq$k0">
                <ref role="3cqZAo" node="309fsJ6oyGY" resolve="graphics" />
              </node>
              <node concept="liA8E" id="6tmliaAUqHz" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.create():java.awt.Graphics" resolve="create" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmliaAUsec" role="3cqZAp">
          <node concept="2OqwBi" id="6tmliaAUsDW" role="3clFbG">
            <node concept="37vLTw" id="6tmliaAUsea" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAUqHw" resolve="hoverGraphics" />
            </node>
            <node concept="liA8E" id="6tmliaAUt1K" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
              <node concept="2OqwBi" id="6tmliaB0MI9" role="37wK5m">
                <node concept="10M0yZ" id="6tmliaAUtbB" role="2Oq$k0">
                  <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  <ref role="3cqZAo" to="z60i:~Color.YELLOW" resolve="YELLOW" />
                </node>
                <node concept="liA8E" id="6tmliaB0Nrt" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Color.darker():java.awt.Color" resolve="darker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6tmliaAUt_5" role="3cqZAp">
          <node concept="3clFbS" id="6tmliaAUt_7" role="3clFbx">
            <node concept="3clFbF" id="6tmliaAUupO" role="3cqZAp">
              <node concept="2OqwBi" id="6tmliaAUux4" role="3clFbG">
                <node concept="37vLTw" id="6tmliaAUupM" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmliaAUqHw" resolve="hoverGraphics" />
                </node>
                <node concept="liA8E" id="6tmliaAUuC6" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                  <node concept="2OqwBi" id="6tmliaAUuZB" role="37wK5m">
                    <node concept="37vLTw" id="6tmliaAUuGr" role="2Oq$k0">
                      <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                    </node>
                    <node concept="2OwXpG" id="6tmliaAUzPz" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6tmliaAU_0q" role="37wK5m">
                    <node concept="37vLTw" id="6tmliaAU$Fa" role="2Oq$k0">
                      <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                    </node>
                    <node concept="2OwXpG" id="6tmliaAUDQp" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6tmliaAVkwW" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
                    <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                    <node concept="2OqwBi" id="6tmliaAVm30" role="37wK5m">
                      <node concept="37vLTw" id="6tmliaAVlHn" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="6tmliaAVqSW" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="6tmliaAUFRg" role="37wK5m">
                      <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                      <ref role="37wK5l" to="wyt6:~Math.min(int,int):int" resolve="min" />
                      <node concept="3cpWs3" id="6tmliaAUWTA" role="37wK5m">
                        <node concept="2OqwBi" id="6tmliaAUHxi" role="3uHU7B">
                          <node concept="37vLTw" id="6tmliaAUH7y" role="2Oq$k0">
                            <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                          </node>
                          <node concept="2OwXpG" id="6tmliaAUM$k" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="6$FGuy62FBI" role="3uHU7w">
                          <ref role="3cqZAo" node="6$FGuy62FBC" resolve="ENDPOINT_HOVER_LENGTH" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4KEbQai3pNu" role="37wK5m">
                        <ref role="3cqZAo" node="4KEbQahXwO5" resolve="x1" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6tmliaAVzwE" role="37wK5m">
                    <node concept="37vLTw" id="6tmliaAVyWk" role="2Oq$k0">
                      <ref role="3cqZAo" node="IMWzYPlY8f" resolve="s" />
                    </node>
                    <node concept="2OwXpG" id="6tmliaAVCmT" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="IMWzYPmo_J" role="3clFbw">
            <node concept="Rm8GO" id="IMWzYPmqsQ" role="3uHU7w">
              <ref role="Rm8GQ" node="IMWzYPgjNJ" resolve="SOURCE_ENDPOINT" />
              <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
            </node>
            <node concept="37vLTw" id="IMWzYPmgAs" role="3uHU7B">
              <ref role="3cqZAo" node="IMWzYPlEA6" resolve="myCursor" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6tmliaAVDHd" role="3cqZAp">
          <node concept="3clFbS" id="6tmliaAVDHe" role="3clFbx">
            <node concept="3clFbF" id="6tmliaAVDHf" role="3cqZAp">
              <node concept="2OqwBi" id="6tmliaAVDHg" role="3clFbG">
                <node concept="37vLTw" id="6tmliaAVDHh" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmliaAUqHw" resolve="hoverGraphics" />
                </node>
                <node concept="liA8E" id="6tmliaAVDHi" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
                  <node concept="2OqwBi" id="6tmliaAVDHj" role="37wK5m">
                    <node concept="2OwXpG" id="6tmliaAVDHl" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="6tmliaAVI_h" role="2Oq$k0">
                      <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6tmliaAVDHm" role="37wK5m">
                    <node concept="2OwXpG" id="6tmliaAVDHo" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="6tmliaAVKEI" role="2Oq$k0">
                      <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6tmliaAVOWY" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~Math.min(int,int):int" resolve="min" />
                    <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                    <node concept="2OqwBi" id="6tmliaAVOWZ" role="37wK5m">
                      <node concept="2OwXpG" id="6tmliaAVOX1" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="6tmliaAVV1A" role="2Oq$k0">
                        <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="6tmliaAVW8b" role="37wK5m">
                      <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
                      <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                      <node concept="3cpWsd" id="6tmliaAWb2I" role="37wK5m">
                        <node concept="2OqwBi" id="6tmliaAVW8d" role="3uHU7B">
                          <node concept="2OwXpG" id="6tmliaAVW8f" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                          <node concept="37vLTw" id="6tmliaB14Z_" role="2Oq$k0">
                            <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="6$FGuy62FBF" role="3uHU7w">
                          <ref role="3cqZAo" node="6$FGuy62FBC" resolve="ENDPOINT_HOVER_LENGTH" />
                        </node>
                      </node>
                      <node concept="3K4zz7" id="6tmliaAWlBU" role="37wK5m">
                        <node concept="37vLTw" id="4KEbQai3rl3" role="3K4E3e">
                          <ref role="3cqZAo" node="4KEbQahXwO5" resolve="x1" />
                        </node>
                        <node concept="37vLTw" id="4KEbQai3wvB" role="3K4GZi">
                          <ref role="3cqZAo" node="4KEbQahX_hi" resolve="x2" />
                        </node>
                        <node concept="3clFbC" id="6tmliaAWjBN" role="3K4Cdx">
                          <node concept="37vLTw" id="6tmliaAWdEr" role="3uHU7B">
                            <ref role="3cqZAo" node="IMWzYPm8Vt" resolve="kind" />
                          </node>
                          <node concept="Rm8GO" id="6tmliaAW8tv" role="3uHU7w">
                            <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                            <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6tmliaAVDHA" role="37wK5m">
                    <node concept="2OwXpG" id="6tmliaAVDHC" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="6tmliaAVNJp" role="2Oq$k0">
                      <ref role="3cqZAo" node="IMWzYPm3QT" resolve="t" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="IMWzYPmqza" role="3clFbw">
            <node concept="Rm8GO" id="IMWzYPmskJ" role="3uHU7w">
              <ref role="Rm8GQ" node="IMWzYPgjPN" resolve="TARGET_ENDPOINT" />
              <ref role="1Px2BO" node="IMWzYPgjIH" resolve="FBConnectionCursor" />
            </node>
            <node concept="37vLTw" id="IMWzYPmqzc" role="3uHU7B">
              <ref role="3cqZAo" node="IMWzYPlEA6" resolve="myCursor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy64XC4" role="1B3o_S" />
      <node concept="3cqZAl" id="309fsJ6oyov" role="3clF45" />
      <node concept="37vLTG" id="309fsJ6oyGY" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="309fsJ6oyGX" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6$FGuy62Luz" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4y$DvIXuI3w">
    <property role="TrG5h" value="FBConnectionPathSyncronizer" />
    <node concept="2tJIrI" id="4y$DvIXuI5J" role="jymVt" />
    <node concept="312cEg" id="4y$DvIXvn00" role="jymVt">
      <property role="TrG5h" value="myViewpoint" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4y$DvIXvmSw" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:17nGqbJdbfv" resolve="SceneViewpoint" />
      </node>
      <node concept="3Tm6S6" id="4y$DvIXx3kx" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4y$DvIXvjGR" role="jymVt" />
    <node concept="3clFbW" id="4y$DvIXx4WE" role="jymVt">
      <node concept="3cqZAl" id="4y$DvIXx4WF" role="3clF45" />
      <node concept="3Tm1VV" id="4y$DvIXx4WG" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIXx4WI" role="3clF47">
        <node concept="3clFbF" id="4y$DvIXx4WY" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIXx4X0" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIXx4X7" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIXx4WX" resolve="viewpoint" />
            </node>
            <node concept="37vLTw" id="4y$DvIXx7l3" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIXvn00" resolve="myViewpoint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIXx4WX" role="3clF46">
        <property role="TrG5h" value="viewpoint" />
        <node concept="3uibUv" id="4y$DvIXx4WW" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:17nGqbJdbfv" resolve="SceneViewpoint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXvjGW" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXvjHt" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="37vLTG" id="4y$DvIXvjHu" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="3uibUv" id="4y$DvIXvjHA" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXvjHw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIXvjHy" role="1B3o_S" />
      <node concept="2AHcQZ" id="4y$DvIXvjH$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4y$DvIXvjHB" role="3clF47">
        <node concept="3cpWs8" id="4y$DvIXvozp" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXvozq" role="3cpWs9">
            <property role="TrG5h" value="pathView" />
            <node concept="3uibUv" id="4y$DvIXvozk" role="1tU5fm">
              <ref role="3uigEE" to="tphl:6$FGuy5_Djq" resolve="ConnectionPath" />
            </node>
            <node concept="2OqwBi" id="4y$DvIXvozr" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXvozs" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXvjHu" resolve="connection" />
              </node>
              <node concept="liA8E" id="4y$DvIXvozt" role="2OqNvi">
                <ref role="37wK5l" to="tphl:1HEL0zVYO0f" resolve="getPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$DvIXPc26" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXPc27" role="3cpWs9">
            <property role="TrG5h" value="dx1" />
            <node concept="10Oyi0" id="4y$DvIXPc24" role="1tU5fm" />
            <node concept="2OqwBi" id="4y$DvIXPc28" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXPc29" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXvozq" resolve="pathView" />
              </node>
              <node concept="liA8E" id="4y$DvIXPc2a" role="2OqNvi">
                <ref role="37wK5l" to="tphl:6$FGuy5_Vkj" resolve="getDX1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$DvIXPcwc" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXPcwd" role="3cpWs9">
            <property role="TrG5h" value="dy" />
            <node concept="10Oyi0" id="4y$DvIXPcw8" role="1tU5fm" />
            <node concept="2OqwBi" id="4y$DvIXPcwe" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXPcwf" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXvozq" resolve="pathView" />
              </node>
              <node concept="liA8E" id="4y$DvIXPcwg" role="2OqNvi">
                <ref role="37wK5l" to="tphl:6$FGuy5_Vkp" resolve="getDY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$DvIXPcYu" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXPcYv" role="3cpWs9">
            <property role="TrG5h" value="dx2" />
            <node concept="10Oyi0" id="4y$DvIXPcYn" role="1tU5fm" />
            <node concept="2OqwBi" id="4y$DvIXPcYw" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXPcYx" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXvozq" resolve="pathView" />
              </node>
              <node concept="liA8E" id="4y$DvIXPcYy" role="2OqNvi">
                <ref role="37wK5l" to="tphl:6$FGuy5_Vkv" resolve="getDX2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4y$DvIXPh_2" role="3cqZAp">
          <node concept="1bVj0M" id="4y$DvIXPqGX" role="3cqZAk">
            <node concept="3clFbS" id="4y$DvIXPqGZ" role="1bW5cS">
              <node concept="3clFbF" id="4y$DvIXvjZo" role="3cqZAp">
                <node concept="2ShNRf" id="4y$DvIXvjZm" role="3clFbG">
                  <node concept="1pGfFk" id="4y$DvIXvkEz" role="2ShVmc">
                    <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                    <node concept="37vLTw" id="1iOpS25iqR4" role="37wK5m">
                      <ref role="3cqZAo" node="1iOpS25ikae" resolve="soucrePosition" />
                    </node>
                    <node concept="37vLTw" id="1iOpS25iqXS" role="37wK5m">
                      <ref role="3cqZAo" node="1iOpS25in6L" resolve="targetPosition" />
                    </node>
                    <node concept="2OqwBi" id="4y$DvIXvq56" role="37wK5m">
                      <node concept="37vLTw" id="4y$DvIXvpYd" role="2Oq$k0">
                        <ref role="3cqZAo" node="4y$DvIXvozq" resolve="pathView" />
                      </node>
                      <node concept="liA8E" id="4y$DvIXvrai" role="2OqNvi">
                        <ref role="37wK5l" to="tphl:6$FGuy5_Vkd" resolve="getKind" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="4y$DvIXvH6h" role="37wK5m">
                      <node concept="2OqwBi" id="4y$DvIXPtpv" role="3uHU7w">
                        <node concept="37vLTw" id="4y$DvIXPtpw" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXvn00" resolve="myViewpoint" />
                        </node>
                        <node concept="liA8E" id="4y$DvIXPtpx" role="2OqNvi">
                          <ref role="37wK5l" to="rvgs:4KEbQahQyvv" resolve="toEditorDimension" />
                          <node concept="37vLTw" id="4y$DvIXPtpy" role="37wK5m">
                            <ref role="3cqZAo" node="4y$DvIXPc27" resolve="dx1" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4y$DvIXvryH" role="3uHU7B">
                        <node concept="37vLTw" id="1iOpS25iqVE" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25ikae" resolve="soucrePosition" />
                        </node>
                        <node concept="2OwXpG" id="4y$DvIXvxXu" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs3" id="4y$DvIXw4fd" role="37wK5m">
                      <node concept="2OqwBi" id="4y$DvIXPu35" role="3uHU7w">
                        <node concept="37vLTw" id="4y$DvIXPu36" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXvn00" resolve="myViewpoint" />
                        </node>
                        <node concept="liA8E" id="4y$DvIXPu37" role="2OqNvi">
                          <ref role="37wK5l" to="rvgs:4KEbQahQyvv" resolve="toEditorDimension" />
                          <node concept="37vLTw" id="4y$DvIXPu38" role="37wK5m">
                            <ref role="3cqZAo" node="4y$DvIXPcwd" resolve="dy" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4y$DvIXvM82" role="3uHU7B">
                        <node concept="37vLTw" id="1iOpS25iqTn" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25ikae" resolve="soucrePosition" />
                        </node>
                        <node concept="2OwXpG" id="4y$DvIXvSRj" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsd" id="4y$DvIXwlS3" role="37wK5m">
                      <node concept="2OqwBi" id="4y$DvIXPuGy" role="3uHU7w">
                        <node concept="37vLTw" id="4y$DvIXPuGz" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXvn00" resolve="myViewpoint" />
                        </node>
                        <node concept="liA8E" id="4y$DvIXPuG$" role="2OqNvi">
                          <ref role="37wK5l" to="rvgs:4KEbQahQyvv" resolve="toEditorDimension" />
                          <node concept="37vLTw" id="4y$DvIXPuG_" role="37wK5m">
                            <ref role="3cqZAo" node="4y$DvIXPcYv" resolve="dx2" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4y$DvIXw7VX" role="3uHU7B">
                        <node concept="37vLTw" id="1iOpS25iqOQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25in6L" resolve="targetPosition" />
                        </node>
                        <node concept="2OwXpG" id="4y$DvIXweD8" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="1iOpS25ikae" role="1bW2Oz">
              <property role="TrG5h" value="soucrePosition" />
              <node concept="3uibUv" id="1iOpS25ikad" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
            <node concept="37vLTG" id="1iOpS25in6L" role="1bW2Oz">
              <property role="TrG5h" value="targetPosition" />
              <node concept="3uibUv" id="1iOpS25inJi" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIXvjHC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="4y$DvIXPaAJ" role="3clF45">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="1iOpS25ijSS" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1iOpS25ik3D" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="4y$DvIXvjTX" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXwmSc" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXwno5" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3Tm1VV" id="4y$DvIXwno7" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXwno8" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIXwno9" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="3uibUv" id="4y$DvIXwnof" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXwnob" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIXwnoc" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="4y$DvIXwnog" role="1tU5fm">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXwnoe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIXwnoh" role="3clF47">
        <node concept="3cpWs8" id="4y$DvIXwo5t" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXwo5u" role="3cpWs9">
            <property role="TrG5h" value="soucrePosition" />
            <node concept="3uibUv" id="4y$DvIXwo5v" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="1iOpS25isoB" role="33vP2m">
              <node concept="37vLTw" id="1iOpS25is6C" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXwnoc" resolve="path" />
              </node>
              <node concept="liA8E" id="1iOpS25it6L" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcm$" resolve="getSourcePosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$DvIXwo5A" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXwo5B" role="3cpWs9">
            <property role="TrG5h" value="targetPosition" />
            <node concept="3uibUv" id="4y$DvIXwo5C" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="1iOpS25iu3e" role="33vP2m">
              <node concept="37vLTw" id="1iOpS25itM6" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXwnoc" resolve="path" />
              </node>
              <node concept="liA8E" id="1iOpS25iuKn" role="2OqNvi">
                <ref role="37wK5l" node="IMWzYPgcmE" resolve="getTargetPosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$DvIXwq3O" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXwq3P" role="3cpWs9">
            <property role="TrG5h" value="dx1" />
            <node concept="10Oyi0" id="4y$DvIXwq3Q" role="1tU5fm" />
            <node concept="2OqwBi" id="4y$DvIXwUwA" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXwUiu" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXvn00" resolve="myViewpoint" />
              </node>
              <node concept="liA8E" id="4y$DvIXwWz0" role="2OqNvi">
                <ref role="37wK5l" to="rvgs:4KEbQahQyMc" resolve="fromEditorDimension" />
                <node concept="3cpWsd" id="4y$DvIXwvGk" role="37wK5m">
                  <node concept="2OqwBi" id="4y$DvIXwwg3" role="3uHU7w">
                    <node concept="37vLTw" id="4y$DvIXwvT7" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIXwo5u" resolve="soucrePosition" />
                    </node>
                    <node concept="2OwXpG" id="4y$DvIXwACm" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4y$DvIXwtlB" role="3uHU7B">
                    <node concept="37vLTw" id="4y$DvIXwt5Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIXwnoc" resolve="path" />
                    </node>
                    <node concept="liA8E" id="4y$DvIXwtTI" role="2OqNvi">
                      <ref role="37wK5l" node="IMWzYPgcmQ" resolve="getX1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$DvIXwq3X" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXwq3Y" role="3cpWs9">
            <property role="TrG5h" value="dy" />
            <node concept="10Oyi0" id="4y$DvIXwq3Z" role="1tU5fm" />
            <node concept="2OqwBi" id="4y$DvIXwq40" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXwq41" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXvn00" resolve="myViewpoint" />
              </node>
              <node concept="liA8E" id="4y$DvIXwq42" role="2OqNvi">
                <ref role="37wK5l" to="rvgs:4KEbQahQyMc" resolve="fromEditorDimension" />
                <node concept="3cpWsd" id="4y$DvIXwXrv" role="37wK5m">
                  <node concept="2OqwBi" id="4y$DvIXwq43" role="3uHU7B">
                    <node concept="37vLTw" id="4y$DvIXwAS0" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIXwnoc" resolve="path" />
                    </node>
                    <node concept="liA8E" id="4y$DvIXwq45" role="2OqNvi">
                      <ref role="37wK5l" node="IMWzYPgcmW" resolve="getY" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4y$DvIXwDpL" role="3uHU7w">
                    <node concept="37vLTw" id="4y$DvIXwD2R" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIXwo5u" resolve="soucrePosition" />
                    </node>
                    <node concept="2OwXpG" id="4y$DvIXwJPa" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$DvIXwq46" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXwq47" role="3cpWs9">
            <property role="TrG5h" value="dx2" />
            <node concept="10Oyi0" id="4y$DvIXwq48" role="1tU5fm" />
            <node concept="2OqwBi" id="4y$DvIXwq49" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXwq4a" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXvn00" resolve="myViewpoint" />
              </node>
              <node concept="liA8E" id="4y$DvIXwq4b" role="2OqNvi">
                <ref role="37wK5l" to="rvgs:4KEbQahQyMc" resolve="fromEditorDimension" />
                <node concept="3cpWsd" id="4y$DvIXx0ii" role="37wK5m">
                  <node concept="2OqwBi" id="4y$DvIXx1jm" role="3uHU7B">
                    <node concept="37vLTw" id="4y$DvIXx1jn" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIXwo5B" resolve="targetPosition" />
                    </node>
                    <node concept="2OwXpG" id="4y$DvIXx1jo" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4y$DvIXx1jp" role="3uHU7w">
                    <node concept="37vLTw" id="4y$DvIXx1jq" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIXwnoc" resolve="path" />
                    </node>
                    <node concept="liA8E" id="4y$DvIXx1jr" role="2OqNvi">
                      <ref role="37wK5l" node="IMWzYPgcn2" resolve="getX2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4y$DvIXwq3q" role="3cqZAp" />
        <node concept="3clFbF" id="4y$DvIXwqDR" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIXwqW5" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIXwqDP" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIXwno9" resolve="connection" />
            </node>
            <node concept="liA8E" id="4y$DvIXwrDV" role="2OqNvi">
              <ref role="37wK5l" to="tphl:6$FGuy5wmIP" resolve="setPath" />
              <node concept="2ShNRf" id="4y$DvIXwoCR" role="37wK5m">
                <node concept="1pGfFk" id="4y$DvIXwpox" role="2ShVmc">
                  <ref role="37wK5l" to="tphl:6$FGuy5_DFK" resolve="ConnectionPath" />
                  <node concept="2OqwBi" id="4y$DvIXwpxh" role="37wK5m">
                    <node concept="37vLTw" id="4y$DvIXwprK" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIXwnoc" resolve="path" />
                    </node>
                    <node concept="liA8E" id="4y$DvIXwpIG" role="2OqNvi">
                      <ref role="37wK5l" node="IMWzYPgcmK" resolve="getPathKind" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4y$DvIXwszW" role="37wK5m">
                    <ref role="3cqZAo" node="4y$DvIXwq3P" resolve="dx1" />
                  </node>
                  <node concept="37vLTw" id="4y$DvIXwsOd" role="37wK5m">
                    <ref role="3cqZAo" node="4y$DvIXwq3Y" resolve="dy" />
                  </node>
                  <node concept="37vLTw" id="4y$DvIXwsYm" role="37wK5m">
                    <ref role="3cqZAo" node="4y$DvIXwq47" resolve="dx2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIXwnoi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4y$DvIXuI3x" role="1B3o_S" />
    <node concept="3uibUv" id="4y$DvIXuI51" role="EKbjA">
      <ref role="3uigEE" to="5lkm:7_KjZP9eHRu" resolve="ConnectionPathSyncronizer" />
      <node concept="3uibUv" id="4y$DvIXuI5t" role="11_B2D">
        <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
      </node>
      <node concept="3uibUv" id="4y$DvIXvjPH" role="11_B2D">
        <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
      <node concept="3uibUv" id="4y$DvIXuK8U" role="11_B2D">
        <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4y$DvIXxa0C">
    <property role="TrG5h" value="FBConnectionUtils" />
    <node concept="Wx3nA" id="4y$DvIXxByO" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ENDPOINTS_PADDING" />
      <node concept="3Tm1VV" id="4y$DvIXxByL" role="1B3o_S" />
      <node concept="10Oyi0" id="4y$DvIXxByM" role="1tU5fm" />
      <node concept="3cmrfG" id="4y$DvIXxFww" role="33vP2m">
        <property role="3cmrfH" value="40" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXxa1r" role="jymVt" />
    <node concept="2tJIrI" id="4y$DvIXxa1t" role="jymVt" />
    <node concept="Wx3nA" id="4y$DvIXzOJA" role="jymVt">
      <property role="TrG5h" value="PATH_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4y$DvIXzOJD" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="4y$DvIXzOJE" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="4y$DvIXzOJF" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="4y$DvIXzOJG" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="1bVj0M" id="4y$DvIXzOJH" role="33vP2m">
        <node concept="3clFbS" id="4y$DvIXzOJI" role="1bW5cS">
          <node concept="3clFbJ" id="4y$DvIXzOJJ" role="3cqZAp">
            <node concept="3clFbS" id="4y$DvIXzOJK" role="3clFbx">
              <node concept="3cpWs8" id="4y$DvIXzOJL" role="3cqZAp">
                <node concept="3cpWsn" id="4y$DvIXzOJM" role="3cpWs9">
                  <property role="TrG5h" value="y" />
                  <node concept="10Oyi0" id="4y$DvIXzOJN" role="1tU5fm" />
                  <node concept="FJ1c_" id="4y$DvIXzOJO" role="33vP2m">
                    <node concept="3cmrfG" id="4y$DvIXzOJP" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="1eOMI4" id="4y$DvIXzOJQ" role="3uHU7B">
                      <node concept="3cpWs3" id="4y$DvIXzOJR" role="1eOMHV">
                        <node concept="2OqwBi" id="4y$DvIXzOJS" role="3uHU7B">
                          <node concept="37vLTw" id="4y$DvIXzOJT" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                          </node>
                          <node concept="2OwXpG" id="4y$DvIXzOJU" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4y$DvIXzOJV" role="3uHU7w">
                          <node concept="37vLTw" id="4y$DvIXzOJW" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIXzOLu" resolve="target" />
                          </node>
                          <node concept="2OwXpG" id="4y$DvIXzOJX" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4y$DvIXzOJY" role="3cqZAp">
                <node concept="3clFbS" id="4y$DvIXzOJZ" role="3clFbx">
                  <node concept="3clFbF" id="4y$DvIXzOK0" role="3cqZAp">
                    <node concept="37vLTI" id="4y$DvIXzOK1" role="3clFbG">
                      <node concept="3cpWs3" id="4y$DvIXzOK2" role="37vLTx">
                        <node concept="2OqwBi" id="4y$DvIXzOK3" role="3uHU7B">
                          <node concept="37vLTw" id="4y$DvIXzOK4" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                          </node>
                          <node concept="2OwXpG" id="4y$DvIXzOK5" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4y$DvIXzOK6" role="3uHU7w">
                          <ref role="3cqZAo" node="4y$DvIXxByO" resolve="ENDPOINTS_PADDING" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4y$DvIXzOK7" role="37vLTJ">
                        <ref role="3cqZAo" node="4y$DvIXzOJM" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4y$DvIXzOK8" role="3clFbw">
                  <node concept="3eOVzh" id="4y$DvIXzOK9" role="3uHU7w">
                    <node concept="3cpWsd" id="4y$DvIXzOKa" role="3uHU7B">
                      <node concept="37vLTw" id="4y$DvIXzOKb" role="3uHU7B">
                        <ref role="3cqZAo" node="4y$DvIXzOJM" resolve="y" />
                      </node>
                      <node concept="37vLTw" id="4y$DvIXzOKc" role="3uHU7w">
                        <ref role="3cqZAo" node="4y$DvIXxByO" resolve="ENDPOINTS_PADDING" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4y$DvIXzOKd" role="3uHU7w">
                      <node concept="37vLTw" id="4y$DvIXzOKe" role="2Oq$k0">
                        <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                      </node>
                      <node concept="2OwXpG" id="4y$DvIXzOKf" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                  <node concept="2d3UOw" id="4y$DvIXzOKg" role="3uHU7B">
                    <node concept="37vLTw" id="4y$DvIXzOKh" role="3uHU7B">
                      <ref role="3cqZAo" node="4y$DvIXzOJM" resolve="y" />
                    </node>
                    <node concept="2OqwBi" id="4y$DvIXzOKi" role="3uHU7w">
                      <node concept="37vLTw" id="4y$DvIXzOKj" role="2Oq$k0">
                        <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                      </node>
                      <node concept="2OwXpG" id="4y$DvIXzOKk" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="4y$DvIXzOKl" role="3eNLev">
                  <node concept="3clFbS" id="4y$DvIXzOKm" role="3eOfB_">
                    <node concept="3clFbF" id="4y$DvIXzOKn" role="3cqZAp">
                      <node concept="37vLTI" id="4y$DvIXzOKo" role="3clFbG">
                        <node concept="3cpWsd" id="4y$DvIXzOKp" role="37vLTx">
                          <node concept="2OqwBi" id="4y$DvIXzOKq" role="3uHU7B">
                            <node concept="37vLTw" id="4y$DvIXzOKr" role="2Oq$k0">
                              <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                            </node>
                            <node concept="2OwXpG" id="4y$DvIXzOKs" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4y$DvIXzOKt" role="3uHU7w">
                            <ref role="3cqZAo" node="4y$DvIXxByO" resolve="ENDPOINTS_PADDING" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4y$DvIXzOKu" role="37vLTJ">
                          <ref role="3cqZAo" node="4y$DvIXzOJM" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="4y$DvIXzOKv" role="3eO9$A">
                    <node concept="3eOSWO" id="4y$DvIXzOKw" role="3uHU7w">
                      <node concept="3cpWs3" id="4y$DvIXzOKx" role="3uHU7B">
                        <node concept="37vLTw" id="4y$DvIXzOKy" role="3uHU7B">
                          <ref role="3cqZAo" node="4y$DvIXzOJM" resolve="y" />
                        </node>
                        <node concept="37vLTw" id="4y$DvIXzOKz" role="3uHU7w">
                          <ref role="3cqZAo" node="4y$DvIXxByO" resolve="ENDPOINTS_PADDING" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4y$DvIXzOK$" role="3uHU7w">
                        <node concept="37vLTw" id="4y$DvIXzOK_" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                        </node>
                        <node concept="2OwXpG" id="4y$DvIXzOKA" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                        </node>
                      </node>
                    </node>
                    <node concept="3eOVzh" id="4y$DvIXzOKB" role="3uHU7B">
                      <node concept="37vLTw" id="4y$DvIXzOKC" role="3uHU7B">
                        <ref role="3cqZAo" node="4y$DvIXzOJM" resolve="y" />
                      </node>
                      <node concept="2OqwBi" id="4y$DvIXzOKD" role="3uHU7w">
                        <node concept="37vLTw" id="4y$DvIXzOKE" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                        </node>
                        <node concept="2OwXpG" id="4y$DvIXzOKF" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4y$DvIXzOKG" role="3cqZAp">
                <node concept="2ShNRf" id="4y$DvIXzOKH" role="3cqZAk">
                  <node concept="1pGfFk" id="4y$DvIXzOKI" role="2ShVmc">
                    <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                    <node concept="37vLTw" id="4y$DvIXzOKJ" role="37wK5m">
                      <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                    </node>
                    <node concept="37vLTw" id="4y$DvIXzOKK" role="37wK5m">
                      <ref role="3cqZAo" node="4y$DvIXzOLu" resolve="target" />
                    </node>
                    <node concept="Rm8GO" id="4y$DvIXzOKL" role="37wK5m">
                      <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
                      <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                    </node>
                    <node concept="3cpWs3" id="4y$DvIXzOKM" role="37wK5m">
                      <node concept="37vLTw" id="4y$DvIXzOKN" role="3uHU7w">
                        <ref role="3cqZAo" node="4y$DvIXxByO" resolve="ENDPOINTS_PADDING" />
                      </node>
                      <node concept="2OqwBi" id="4y$DvIXzOKO" role="3uHU7B">
                        <node concept="37vLTw" id="4y$DvIXzOKP" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                        </node>
                        <node concept="2OwXpG" id="4y$DvIXzOKQ" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4y$DvIXzOKR" role="37wK5m">
                      <ref role="3cqZAo" node="4y$DvIXzOJM" resolve="y" />
                    </node>
                    <node concept="3cpWsd" id="4y$DvIXzOKS" role="37wK5m">
                      <node concept="37vLTw" id="4y$DvIXzOKT" role="3uHU7w">
                        <ref role="3cqZAo" node="4y$DvIXxByO" resolve="ENDPOINTS_PADDING" />
                      </node>
                      <node concept="2OqwBi" id="4y$DvIXzOKU" role="3uHU7B">
                        <node concept="37vLTw" id="4y$DvIXzOKV" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXzOLu" resolve="target" />
                        </node>
                        <node concept="2OwXpG" id="4y$DvIXzOKW" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="4y$DvIXzOKX" role="3clFbw">
              <node concept="3cpWsd" id="4y$DvIXzOKY" role="3uHU7B">
                <node concept="2OqwBi" id="4y$DvIXzOKZ" role="3uHU7B">
                  <node concept="37vLTw" id="4y$DvIXzOL0" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIXzOLu" resolve="target" />
                  </node>
                  <node concept="2OwXpG" id="4y$DvIXzOL1" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4y$DvIXzOL2" role="3uHU7w">
                  <node concept="37vLTw" id="4y$DvIXzOL3" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                  </node>
                  <node concept="2OwXpG" id="4y$DvIXzOL4" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="4y$DvIXzOL5" role="3uHU7w">
                <node concept="3cmrfG" id="4y$DvIXzOL6" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="4y$DvIXzOL7" role="3uHU7w">
                  <ref role="3cqZAo" node="4y$DvIXxByO" resolve="ENDPOINTS_PADDING" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="4y$DvIXzOL8" role="9aQIa">
              <node concept="3clFbS" id="4y$DvIXzOL9" role="9aQI4">
                <node concept="3cpWs6" id="4y$DvIXzOLa" role="3cqZAp">
                  <node concept="2ShNRf" id="4y$DvIXzOLb" role="3cqZAk">
                    <node concept="1pGfFk" id="4y$DvIXzOLc" role="2ShVmc">
                      <ref role="37wK5l" node="IMWzYPgb6Q" resolve="FBConnectionPath" />
                      <node concept="37vLTw" id="4y$DvIXzOLd" role="37wK5m">
                        <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                      </node>
                      <node concept="37vLTw" id="4y$DvIXzOLe" role="37wK5m">
                        <ref role="3cqZAo" node="4y$DvIXzOLu" resolve="target" />
                      </node>
                      <node concept="Rm8GO" id="4y$DvIXzOLf" role="37wK5m">
                        <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
                        <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
                      </node>
                      <node concept="FJ1c_" id="4y$DvIXzOLg" role="37wK5m">
                        <node concept="3cmrfG" id="4y$DvIXzOLh" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="1eOMI4" id="4y$DvIXzOLi" role="3uHU7B">
                          <node concept="3cpWs3" id="4y$DvIXzOLj" role="1eOMHV">
                            <node concept="2OqwBi" id="4y$DvIXzOLk" role="3uHU7B">
                              <node concept="37vLTw" id="4y$DvIXzOLl" role="2Oq$k0">
                                <ref role="3cqZAo" node="4y$DvIXzOLs" resolve="source" />
                              </node>
                              <node concept="2OwXpG" id="4y$DvIXzOLm" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4y$DvIXzOLn" role="3uHU7w">
                              <node concept="37vLTw" id="4y$DvIXzOLo" role="2Oq$k0">
                                <ref role="3cqZAo" node="4y$DvIXzOLu" resolve="target" />
                              </node>
                              <node concept="2OwXpG" id="4y$DvIXzOLp" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cmrfG" id="4y$DvIXzOLq" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3cmrfG" id="4y$DvIXzOLr" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4y$DvIXzOLs" role="1bW2Oz">
          <property role="TrG5h" value="source" />
          <node concept="3uibUv" id="4y$DvIXzOLt" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
        <node concept="37vLTG" id="4y$DvIXzOLu" role="1bW2Oz">
          <property role="TrG5h" value="target" />
          <node concept="3uibUv" id="4y$DvIXzOLv" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIXzOJC" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4y$DvIXz1D4" role="jymVt" />
    <node concept="Wx3nA" id="4y$DvIXzPhp" role="jymVt">
      <property role="TrG5h" value="PATH_PAINTER" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4y$DvIXzPhs" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiConsumer" resolve="BiConsumer" />
        <node concept="3uibUv" id="4y$DvIXzPht" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
        <node concept="3uibUv" id="4y$DvIXzPhu" role="11_B2D">
          <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="1bVj0M" id="4y$DvIXzPhv" role="33vP2m">
        <node concept="3clFbS" id="4y$DvIXzPhw" role="1bW5cS">
          <node concept="3clFbF" id="5MmYuOgHBoa" role="3cqZAp">
            <node concept="2YIFZM" id="5MmYuOgHC79" role="3clFbG">
              <ref role="37wK5l" node="6$FGuy68w61" resolve="setupRegularPathPaint" />
              <ref role="1Pybhc" node="309fsJ6oq8i" resolve="FBConnectionPathPainter" />
              <node concept="37vLTw" id="5MmYuOgHCar" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIXzPhA" resolve="g" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4y$DvIXzPhx" role="3cqZAp">
            <node concept="2OqwBi" id="5MmYuOgO_au" role="3clFbG">
              <node concept="2ShNRf" id="4y$DvIXzPhy" role="2Oq$k0">
                <node concept="1pGfFk" id="4y$DvIXzPhz" role="2ShVmc">
                  <ref role="37wK5l" node="309fsJ6owEe" resolve="FBConnectionPathPainter" />
                  <node concept="37vLTw" id="4y$DvIXzPh$" role="37wK5m">
                    <ref role="3cqZAo" node="4y$DvIXzPhC" resolve="path" />
                  </node>
                  <node concept="10Nm6u" id="4y$DvIXzPh_" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="5MmYuOgO_iZ" role="2OqNvi">
                <ref role="37wK5l" node="309fsJ6oyo$" resolve="paint" />
                <node concept="37vLTw" id="5MmYuOgO_mK" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIXzPhA" resolve="g" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4y$DvIXzPhA" role="1bW2Oz">
          <property role="TrG5h" value="g" />
          <node concept="3uibUv" id="4y$DvIXzPhB" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
        <node concept="37vLTG" id="4y$DvIXzPhC" role="1bW2Oz">
          <property role="TrG5h" value="path" />
          <node concept="3uibUv" id="4y$DvIXzPhD" role="1tU5fm">
            <ref role="3uigEE" node="IMWzYPg151" resolve="FBConnectionPath" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIXzPhr" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4y$DvIXxa0D" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3IX4BsK5Mi_">
    <property role="TrG5h" value="FBInstanceController" />
    <node concept="2tJIrI" id="3IX4BsK5PoK" role="jymVt" />
    <node concept="312cEg" id="3IX4BsK5Q_3" role="jymVt">
      <property role="TrG5h" value="myView" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3IX4BsK5Q_4" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsK6cPK" role="1tU5fm">
        <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstanceView" />
      </node>
    </node>
    <node concept="312cEg" id="6tmliaAt$MH" role="jymVt">
      <property role="TrG5h" value="myComponentCell" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tmliaAtymt" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaAtzY8" role="1tU5fm">
        <ref role="3uigEE" node="6tmliaAtcSm" resolve="FBInstanceController.MyCell" />
      </node>
    </node>
    <node concept="312cEg" id="3IX4BsK5Q_6" role="jymVt">
      <property role="TrG5h" value="myFBCellComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3IX4BsK5Q_7" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsK5Q_8" role="1tU5fm">
        <ref role="3uigEE" to="ubo9:7qPnRGG6q3r" resolve="FBCellComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="4JFQCPi4g_z" role="jymVt" />
    <node concept="3Tm1VV" id="3IX4BsK5MiA" role="1B3o_S" />
    <node concept="3uibUv" id="2JpbWDsNkIQ" role="EKbjA">
      <ref role="3uigEE" to="xxy3:1KCfUoKRRlk" resolve="ComponentController" />
      <node concept="3uibUv" id="1iOpS24JX3m" role="11_B2D">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
    <node concept="3uibUv" id="5jb5jNBKYLK" role="EKbjA">
      <ref role="3uigEE" node="5jb5jNBJKHJ" resolve="FBNetworkCompponentController" />
    </node>
    <node concept="3clFbW" id="3IX4BsK5Ppr" role="jymVt">
      <node concept="3cqZAl" id="3IX4BsK5Pps" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsK5Ppt" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsK5Ppv" role="3clF47">
        <node concept="3clFbF" id="6tmliaAtPMs" role="3cqZAp">
          <node concept="37vLTI" id="6tmliaAtRjB" role="3clFbG">
            <node concept="2ShNRf" id="6tmliaAtRTk" role="37vLTx">
              <node concept="1pGfFk" id="6tmliaAtRP3" role="2ShVmc">
                <ref role="37wK5l" node="6tmliaAtJnn" resolve="FBInstanceController.MyCell" />
                <node concept="37vLTw" id="4O0ojQq4DCP" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQq3cKE" resolve="context" />
                </node>
                <node concept="37vLTw" id="4y$DvIVPozy" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIVPo9M" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6tmliaAtPMq" role="37vLTJ">
              <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24Lwc$" role="3cqZAp">
          <node concept="37vLTI" id="1iOpS24Lxml" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24Lwcy" role="37vLTJ">
              <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
            </node>
            <node concept="2ShNRf" id="3IX4BsK5Q_9" role="37vLTx">
              <node concept="1pGfFk" id="3IX4BsK5Q_a" role="2ShVmc">
                <ref role="37wK5l" to="ubo9:7qPnRGG79lZ" resolve="FBCellComponent" />
                <node concept="2OqwBi" id="1iOpS24Lz1L" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS24LyG6" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
                  </node>
                  <node concept="liA8E" id="1iOpS24LCs2" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIVPwO$" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIVPykD" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIVPyp4" role="37vLTx">
              <ref role="3cqZAo" node="4O0ojQq4DWU" resolve="view" />
            </node>
            <node concept="37vLTw" id="4y$DvIVPwOy" role="37vLTJ">
              <ref role="3cqZAo" node="3IX4BsK5Q_3" resolve="myView" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQq3cKE" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4y$DvIXmiRu" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIVPo9M" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4y$DvIVPolH" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQq4DWU" role="3clF46">
        <property role="TrG5h" value="view" />
        <node concept="3uibUv" id="4y$DvIVPmt3" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstanceView" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIVON$7" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIVOS1G" role="jymVt">
      <property role="TrG5h" value="canStartMoveAt" />
      <node concept="3Tm1VV" id="4y$DvIVOS1I" role="1B3o_S" />
      <node concept="10P_77" id="4y$DvIVOS1J" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24K1cp" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24K2KC" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIVOS1K" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="4y$DvIVOS1L" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4y$DvIVOS1M" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="4y$DvIVOS1N" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4y$DvIVOS1O" role="3clF47">
        <node concept="3clFbF" id="1iOpS24KbXO" role="3cqZAp">
          <node concept="3clFbT" id="1iOpS24KbXN" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIVOS1P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24Kc8f" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24KdTe" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3Tm1VV" id="1iOpS24KdTg" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24KdTh" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="2AHcQZ" id="1iOpS24KdTi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="1iOpS24KdTj" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24KdTl" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS24KdTm" role="3clF47">
        <node concept="3clFbF" id="1iOpS24KhGb" role="3cqZAp">
          <node concept="2ShNRf" id="1iOpS24KhG9" role="3clFbG">
            <node concept="1pGfFk" id="1iOpS24KinP" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
              <node concept="2OqwBi" id="1iOpS24KZYy" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24KiQl" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24KdTj" resolve="position" />
                </node>
                <node concept="2OwXpG" id="1iOpS24L0o1" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="1iOpS24L1Ua" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24L1pd" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24KdTj" resolve="position" />
                </node>
                <node concept="2OwXpG" id="1iOpS24L2jG" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="1iOpS24L3pM" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24L2Og" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
                </node>
                <node concept="liA8E" id="1iOpS24L8$u" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth():int" resolve="getWidth" />
                </node>
              </node>
              <node concept="2OqwBi" id="1iOpS24La8Y" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24L92s" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
                </node>
                <node concept="liA8E" id="1iOpS24LffY" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight():int" resolve="getHeight" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24KdTn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAtVUz" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAtXu_" role="jymVt">
      <property role="TrG5h" value="getComponentCell" />
      <node concept="3Tm1VV" id="6tmliaAtXuB" role="1B3o_S" />
      <node concept="2AHcQZ" id="6tmliaAtXuD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="6tmliaAtXuE" role="3clF47">
        <node concept="3clFbF" id="6tmliaAuart" role="3cqZAp">
          <node concept="37vLTw" id="6tmliaAuars" role="3clFbG">
            <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmliaAtXuF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="3vyG44AOUqg" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIVO4af" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIVOmjQ" role="jymVt">
      <property role="TrG5h" value="synchronize" />
      <node concept="3Tm1VV" id="4y$DvIVOmjO" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIVOmjW" role="3clF45" />
      <node concept="3clFbS" id="4y$DvIVOmjU" role="3clF47">
        <node concept="3clFbF" id="4y$DvIVOx8_" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIVOxyD" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIVOx8$" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
            </node>
            <node concept="liA8E" id="4y$DvIVOArf" role="2OqNvi">
              <ref role="37wK5l" node="3IX4BsK6j02" resolve="synchronize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIVOmjS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIVVxkB" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIVVzKz" role="jymVt">
      <property role="TrG5h" value="getPortCoordinates" />
      <node concept="37vLTG" id="4y$DvIVVzK$" role="3clF46">
        <property role="TrG5h" value="fbPort" />
        <node concept="3uibUv" id="5jb5jNBL2jm" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24KnCN" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24KoMF" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIVVzKA" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIVVzKB" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="3clFbS" id="4y$DvIVVzKC" role="3clF47">
        <node concept="3cpWs8" id="5jb5jNBLC8C" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBLC8D" role="3cpWs9">
            <property role="TrG5h" value="fbInstancePort" />
            <node concept="3uibUv" id="5jb5jNBLC8E" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            </node>
            <node concept="1rXfSq" id="5jb5jNBLDaK" role="33vP2m">
              <ref role="37wK5l" node="5jb5jNBLbgt" resolve="assertMine" />
              <node concept="37vLTw" id="5jb5jNBLEjr" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIVVzK$" resolve="fbPort" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iOpS24LO5$" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24LO5_" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="1iOpS24LO5A" role="1tU5fm" />
            <node concept="2OqwBi" id="1iOpS24LO5B" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBLEBg" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNBLC8D" resolve="fbInstancePort" />
              </node>
              <node concept="liA8E" id="1iOpS24LO5D" role="2OqNvi">
                <ref role="37wK5l" to="tphl:3IX4BsK6WST" resolve="getPosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iOpS24LO5E" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24LO5F" role="3cpWs9">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="1iOpS24LO5G" role="1tU5fm">
              <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="2OqwBi" id="1iOpS24LO5H" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBLEZq" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNBLC8D" resolve="fbInstancePort" />
              </node>
              <node concept="liA8E" id="1iOpS24LO5J" role="2OqNvi">
                <ref role="37wK5l" to="tphl:7qPnRGGck4v" resolve="getKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iOpS24LO5K" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24LO5L" role="3cpWs9">
            <property role="TrG5h" value="isSource" />
            <node concept="10P_77" id="1iOpS24LO5M" role="1tU5fm" />
            <node concept="2OqwBi" id="1iOpS24LO5N" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBLFy9" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNBLC8D" resolve="fbInstancePort" />
              </node>
              <node concept="liA8E" id="1iOpS24LO5P" role="2OqNvi">
                <ref role="37wK5l" to="tphl:3IX4BsK6WT5" resolve="isSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iOpS24LO5Q" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24LO5R" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="1iOpS24LO5S" role="1tU5fm" />
            <node concept="2OqwBi" id="1iOpS24LO7t" role="33vP2m">
              <node concept="liA8E" id="1iOpS24LO7s" role="2OqNvi">
                <ref role="37wK5l" node="3IX4BsK6stl" resolve="getLineSize" />
              </node>
              <node concept="37vLTw" id="4y$DvIVVBJf" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1iOpS24LO5U" role="3cqZAp" />
        <node concept="3cpWs8" id="1iOpS24LO5V" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24LO5W" role="3cpWs9">
            <property role="TrG5h" value="coordinates" />
            <node concept="3uibUv" id="1iOpS24LO5X" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1iOpS24LO5Y" role="3cqZAp">
          <node concept="3clFbS" id="1iOpS24LO5Z" role="3clFbx">
            <node concept="3clFbF" id="1iOpS24LO60" role="3cqZAp">
              <node concept="37vLTI" id="1iOpS24LO61" role="3clFbG">
                <node concept="3K4zz7" id="1iOpS24LO62" role="37vLTx">
                  <node concept="2OqwBi" id="1iOpS24LO63" role="3K4E3e">
                    <node concept="37vLTw" id="1iOpS24LO64" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                    </node>
                    <node concept="liA8E" id="1iOpS24LO65" role="2OqNvi">
                      <ref role="37wK5l" to="ubo9:7qPnRGGri0u" resolve="getOutputEventPortPosition" />
                      <node concept="37vLTw" id="1iOpS24LO66" role="37wK5m">
                        <ref role="3cqZAo" node="1iOpS24LO5_" resolve="index" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1iOpS24LO67" role="3K4Cdx">
                    <ref role="3cqZAo" node="1iOpS24LO5L" resolve="isSource" />
                  </node>
                  <node concept="2OqwBi" id="1iOpS24LO68" role="3K4GZi">
                    <node concept="37vLTw" id="1iOpS24LO69" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                    </node>
                    <node concept="liA8E" id="1iOpS24LO6a" role="2OqNvi">
                      <ref role="37wK5l" to="ubo9:7qPnRGGqsSb" resolve="getInputEventPortPosition" />
                      <node concept="37vLTw" id="1iOpS24LO6b" role="37wK5m">
                        <ref role="3cqZAo" node="1iOpS24LO5_" resolve="index" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iOpS24LO6c" role="37vLTJ">
                  <ref role="3cqZAo" node="1iOpS24LO5W" resolve="coordinates" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1iOpS24LO6d" role="3clFbw">
            <node concept="37vLTw" id="1iOpS24LO6e" role="3uHU7B">
              <ref role="3cqZAo" node="1iOpS24LO5F" resolve="kind" />
            </node>
            <node concept="Rm8GO" id="1iOpS24LO6f" role="3uHU7w">
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
            </node>
          </node>
          <node concept="3eNFk2" id="1iOpS24LO6g" role="3eNLev">
            <node concept="3clFbS" id="1iOpS24LO6h" role="3eOfB_">
              <node concept="3clFbF" id="1iOpS24LO6i" role="3cqZAp">
                <node concept="37vLTI" id="1iOpS24LO6j" role="3clFbG">
                  <node concept="3K4zz7" id="1iOpS24LO6k" role="37vLTx">
                    <node concept="2OqwBi" id="1iOpS24LO6l" role="3K4E3e">
                      <node concept="37vLTw" id="1iOpS24LO6m" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS24LO6n" role="2OqNvi">
                        <ref role="37wK5l" to="ubo9:6tmliaB2s3z" resolve="getOutputDataPortPosition" />
                        <node concept="37vLTw" id="1iOpS24LO6o" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS24LO5_" resolve="index" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1iOpS24LO6p" role="3K4Cdx">
                      <ref role="3cqZAo" node="1iOpS24LO5L" resolve="isSource" />
                    </node>
                    <node concept="2OqwBi" id="1iOpS24LO6q" role="3K4GZi">
                      <node concept="37vLTw" id="1iOpS24LO6r" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS24LO6s" role="2OqNvi">
                        <ref role="37wK5l" to="ubo9:7qPnRGGrMvK" resolve="getInputDataPortPosition" />
                        <node concept="37vLTw" id="1iOpS24LO6t" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS24LO5_" resolve="index" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1iOpS24LO6u" role="37vLTJ">
                    <ref role="3cqZAo" node="1iOpS24LO5W" resolve="coordinates" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1iOpS24LO6v" role="3eO9$A">
              <node concept="Rm8GO" id="1iOpS24LO6w" role="3uHU7w">
                <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              </node>
              <node concept="37vLTw" id="1iOpS24LO6x" role="3uHU7B">
                <ref role="3cqZAo" node="1iOpS24LO5F" resolve="kind" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1iOpS24LO6y" role="3eNLev">
            <node concept="3clFbS" id="1iOpS24LO6z" role="3eOfB_">
              <node concept="3clFbF" id="1iOpS24LO6$" role="3cqZAp">
                <node concept="37vLTI" id="1iOpS24LO6_" role="3clFbG">
                  <node concept="3K4zz7" id="1iOpS24LO6A" role="37vLTx">
                    <node concept="2OqwBi" id="1iOpS24LO6B" role="3K4E3e">
                      <node concept="37vLTw" id="1iOpS24LO6C" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS24LO6D" role="2OqNvi">
                        <ref role="37wK5l" to="ubo9:6LU90BNYSNg" resolve="getPlugPortPosition" />
                        <node concept="37vLTw" id="1iOpS24LO6E" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS24LO5_" resolve="index" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1iOpS24LO6F" role="3K4Cdx">
                      <ref role="3cqZAo" node="1iOpS24LO5L" resolve="isSource" />
                    </node>
                    <node concept="2OqwBi" id="1iOpS24LO6G" role="3K4GZi">
                      <node concept="37vLTw" id="1iOpS24LO6H" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS24LO6I" role="2OqNvi">
                        <ref role="37wK5l" to="ubo9:6LU90BNYSNH" resolve="getSocketPortPosition" />
                        <node concept="37vLTw" id="1iOpS24LO6J" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS24LO5_" resolve="index" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1iOpS24LO6K" role="37vLTJ">
                    <ref role="3cqZAo" node="1iOpS24LO5W" resolve="coordinates" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1iOpS24LO6L" role="3eO9$A">
              <node concept="Rm8GO" id="1iOpS24LO6M" role="3uHU7w">
                <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              </node>
              <node concept="37vLTw" id="1iOpS24LO6N" role="3uHU7B">
                <ref role="3cqZAo" node="1iOpS24LO5F" resolve="kind" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1iOpS24LO6O" role="9aQIa">
            <node concept="3clFbS" id="1iOpS24LO6P" role="9aQI4">
              <node concept="3cpWs6" id="1iOpS24M4Vq" role="3cqZAp">
                <node concept="10Nm6u" id="1iOpS24M8eV" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24LO6S" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24LO6T" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24LO6U" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS24LO5W" resolve="coordinates" />
            </node>
            <node concept="liA8E" id="1iOpS24LO6V" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Point.translate(int,int):void" resolve="translate" />
              <node concept="2OqwBi" id="1iOpS24LO6W" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24LO7f" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24KnCN" resolve="position" />
                </node>
                <node concept="2OwXpG" id="1iOpS24LO6Y" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="3cpWs3" id="1iOpS24LO6Z" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24LO70" role="3uHU7w">
                  <ref role="3cqZAo" node="1iOpS24LO5R" resolve="lineSize" />
                </node>
                <node concept="2OqwBi" id="1iOpS24LO71" role="3uHU7B">
                  <node concept="37vLTw" id="1iOpS24LO7g" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24KnCN" resolve="position" />
                  </node>
                  <node concept="2OwXpG" id="1iOpS24LO73" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1iOpS24MbY3" role="3cqZAp">
          <node concept="37vLTw" id="1iOpS24MeMn" role="3cqZAk">
            <ref role="3cqZAo" node="1iOpS24LO5W" resolve="coordinates" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBLOv$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIVVzM7" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIVVzM8" role="jymVt">
      <property role="TrG5h" value="getPortBounds" />
      <node concept="37vLTG" id="4y$DvIVVzM9" role="3clF46">
        <property role="TrG5h" value="fbPort" />
        <node concept="3uibUv" id="5jb5jNBLZQe" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24Kpub" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24KrhH" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIVVzMb" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIVVzMc" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="3clFbS" id="4y$DvIVVzMd" role="3clF47">
        <node concept="3cpWs8" id="5jb5jNBLWA$" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBLWA_" role="3cpWs9">
            <property role="TrG5h" value="fbInstancePort" />
            <node concept="3uibUv" id="5jb5jNBLWAA" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            </node>
            <node concept="1rXfSq" id="5jb5jNBLYKR" role="33vP2m">
              <ref role="37wK5l" node="5jb5jNBLbgt" resolve="assertMine" />
              <node concept="37vLTw" id="5jb5jNBLZvi" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIVVzM9" resolve="fbPort" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iOpS24LRKm" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24LRKn" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="1iOpS24LRKo" role="1tU5fm" />
            <node concept="2OqwBi" id="1iOpS24LRKp" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBM4xh" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNBLWA_" resolve="fbInstancePort" />
              </node>
              <node concept="liA8E" id="1iOpS24LRKr" role="2OqNvi">
                <ref role="37wK5l" to="tphl:3IX4BsK6WST" resolve="getPosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iOpS24LRKs" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24LRKt" role="3cpWs9">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="1iOpS24LRKu" role="1tU5fm">
              <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="2OqwBi" id="1iOpS24LRKv" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBM4Hl" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNBLWA_" resolve="fbInstancePort" />
              </node>
              <node concept="liA8E" id="1iOpS24LRKx" role="2OqNvi">
                <ref role="37wK5l" to="tphl:7qPnRGGck4v" resolve="getKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iOpS24LRKy" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24LRKz" role="3cpWs9">
            <property role="TrG5h" value="isSource" />
            <node concept="10P_77" id="1iOpS24LRK$" role="1tU5fm" />
            <node concept="2OqwBi" id="1iOpS24LRK_" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBM53Y" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNBLWA_" resolve="fbInstancePort" />
              </node>
              <node concept="liA8E" id="1iOpS24LRKB" role="2OqNvi">
                <ref role="37wK5l" to="tphl:3IX4BsK6WT5" resolve="isSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iOpS24LRKC" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24LRKD" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="1iOpS24LRKE" role="1tU5fm" />
            <node concept="2OqwBi" id="1iOpS24LRMf" role="33vP2m">
              <node concept="liA8E" id="1iOpS24LRMe" role="2OqNvi">
                <ref role="37wK5l" node="3IX4BsK6stl" resolve="getLineSize" />
              </node>
              <node concept="37vLTw" id="4y$DvIVVKOA" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1iOpS24LRKG" role="3cqZAp" />
        <node concept="3cpWs8" id="1iOpS24LRKH" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24LRKI" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="1iOpS24LRKJ" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1iOpS24LRKK" role="3cqZAp">
          <node concept="3clFbS" id="1iOpS24LRKL" role="3clFbx">
            <node concept="3clFbF" id="1iOpS24LRKM" role="3cqZAp">
              <node concept="37vLTI" id="1iOpS24LRKN" role="3clFbG">
                <node concept="3K4zz7" id="1iOpS24LRKO" role="37vLTx">
                  <node concept="2OqwBi" id="1iOpS24LRKP" role="3K4E3e">
                    <node concept="37vLTw" id="1iOpS24LRKQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                    </node>
                    <node concept="liA8E" id="1iOpS24LRKR" role="2OqNvi">
                      <ref role="37wK5l" to="ubo9:6tmliaB2s2K" resolve="getOutputEventPortBounds" />
                      <node concept="37vLTw" id="1iOpS24LRKS" role="37wK5m">
                        <ref role="3cqZAo" node="1iOpS24LRKn" resolve="index" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1iOpS24LRKT" role="3K4Cdx">
                    <ref role="3cqZAo" node="1iOpS24LRKz" resolve="isSource" />
                  </node>
                  <node concept="2OqwBi" id="1iOpS24LRKU" role="3K4GZi">
                    <node concept="37vLTw" id="1iOpS24LRKV" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                    </node>
                    <node concept="liA8E" id="1iOpS24LRKW" role="2OqNvi">
                      <ref role="37wK5l" to="ubo9:6tmliaB2s2q" resolve="getInputEventPortBounds" />
                      <node concept="37vLTw" id="1iOpS24LRKX" role="37wK5m">
                        <ref role="3cqZAo" node="1iOpS24LRKn" resolve="index" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iOpS24LRKY" role="37vLTJ">
                  <ref role="3cqZAo" node="1iOpS24LRKI" resolve="bounds" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1iOpS24LRKZ" role="3clFbw">
            <node concept="37vLTw" id="1iOpS24LRL0" role="3uHU7B">
              <ref role="3cqZAo" node="1iOpS24LRKt" resolve="kind" />
            </node>
            <node concept="Rm8GO" id="1iOpS24LRL1" role="3uHU7w">
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
            </node>
          </node>
          <node concept="3eNFk2" id="1iOpS24LRL2" role="3eNLev">
            <node concept="3clFbS" id="1iOpS24LRL3" role="3eOfB_">
              <node concept="3clFbF" id="1iOpS24LRL4" role="3cqZAp">
                <node concept="37vLTI" id="1iOpS24LRL5" role="3clFbG">
                  <node concept="3K4zz7" id="1iOpS24LRL6" role="37vLTx">
                    <node concept="2OqwBi" id="1iOpS24LRL7" role="3K4E3e">
                      <node concept="37vLTw" id="1iOpS24LRL8" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS24LRL9" role="2OqNvi">
                        <ref role="37wK5l" to="ubo9:7qPnRGGrMvY" resolve="getOutputDataPortBounds" />
                        <node concept="37vLTw" id="1iOpS24LRLa" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS24LRKn" resolve="index" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1iOpS24LRLb" role="3K4Cdx">
                      <ref role="3cqZAo" node="1iOpS24LRKz" resolve="isSource" />
                    </node>
                    <node concept="2OqwBi" id="1iOpS24LRLc" role="3K4GZi">
                      <node concept="37vLTw" id="1iOpS24LRLd" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS24LRLe" role="2OqNvi">
                        <ref role="37wK5l" to="ubo9:6tmliaB2s38" resolve="getInputDataPortBounds" />
                        <node concept="37vLTw" id="1iOpS24LRLf" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS24LRKn" resolve="index" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1iOpS24LRLg" role="37vLTJ">
                    <ref role="3cqZAo" node="1iOpS24LRKI" resolve="bounds" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1iOpS24LRLh" role="3eO9$A">
              <node concept="37vLTw" id="1iOpS24LRLi" role="3uHU7B">
                <ref role="3cqZAo" node="1iOpS24LRKt" resolve="kind" />
              </node>
              <node concept="Rm8GO" id="1iOpS24LRLj" role="3uHU7w">
                <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1iOpS24LRLk" role="3eNLev">
            <node concept="3clFbS" id="1iOpS24LRLl" role="3eOfB_">
              <node concept="3clFbF" id="1iOpS24LRLm" role="3cqZAp">
                <node concept="37vLTI" id="1iOpS24LRLn" role="3clFbG">
                  <node concept="3K4zz7" id="1iOpS24LRLo" role="37vLTx">
                    <node concept="2OqwBi" id="1iOpS24LRLp" role="3K4E3e">
                      <node concept="37vLTw" id="1iOpS24LRLq" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS24LRLr" role="2OqNvi">
                        <ref role="37wK5l" to="ubo9:6LU90BNV_WL" resolve="getPlugPortBounds" />
                        <node concept="37vLTw" id="1iOpS24LRLs" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS24LRKn" resolve="index" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1iOpS24LRLt" role="3K4Cdx">
                      <ref role="3cqZAo" node="1iOpS24LRKz" resolve="isSource" />
                    </node>
                    <node concept="2OqwBi" id="1iOpS24LRLu" role="3K4GZi">
                      <node concept="37vLTw" id="1iOpS24LRLv" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS24LRLw" role="2OqNvi">
                        <ref role="37wK5l" to="ubo9:6LU90BNV_W7" resolve="getSocketPortBounds" />
                        <node concept="37vLTw" id="1iOpS24LRLx" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS24LRKn" resolve="index" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1iOpS24LRLy" role="37vLTJ">
                    <ref role="3cqZAo" node="1iOpS24LRKI" resolve="bounds" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1iOpS24LRLz" role="3eO9$A">
              <node concept="37vLTw" id="1iOpS24LRL$" role="3uHU7B">
                <ref role="3cqZAo" node="1iOpS24LRKt" resolve="kind" />
              </node>
              <node concept="Rm8GO" id="1iOpS24LRL_" role="3uHU7w">
                <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1iOpS24LRLA" role="9aQIa">
            <node concept="3clFbS" id="1iOpS24LRLB" role="9aQI4">
              <node concept="3cpWs6" id="1iOpS24LZ0V" role="3cqZAp">
                <node concept="10Nm6u" id="1iOpS24LZ3b" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24LRLE" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24LRLF" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24LRLG" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS24LRKI" resolve="bounds" />
            </node>
            <node concept="liA8E" id="1iOpS24LRLH" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Rectangle.translate(int,int):void" resolve="translate" />
              <node concept="2OqwBi" id="1iOpS24LRLI" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24LRM1" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24Kpub" resolve="position" />
                </node>
                <node concept="2OwXpG" id="1iOpS24LRLK" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="3cpWs3" id="1iOpS24LRLL" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24LRLM" role="3uHU7w">
                  <ref role="3cqZAo" node="1iOpS24LRKD" resolve="lineSize" />
                </node>
                <node concept="2OqwBi" id="1iOpS24LRLN" role="3uHU7B">
                  <node concept="37vLTw" id="1iOpS24LRM2" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24Kpub" resolve="position" />
                  </node>
                  <node concept="2OwXpG" id="1iOpS24LRLP" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1iOpS24M0Xm" role="3cqZAp">
          <node concept="37vLTw" id="1iOpS24M24G" role="3cqZAk">
            <ref role="3cqZAo" node="1iOpS24LRKI" resolve="bounds" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBM0w7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBMaEK" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBMcI9" role="jymVt">
      <property role="TrG5h" value="isSource" />
      <node concept="3Tm1VV" id="5jb5jNBMcIa" role="1B3o_S" />
      <node concept="10P_77" id="5jb5jNBMcIb" role="3clF45" />
      <node concept="37vLTG" id="5jb5jNBMcIc" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBMcId" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBMcIe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNBMcIg" role="3clF47">
        <node concept="3cpWs8" id="5jb5jNBMeMN" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBMeMO" role="3cpWs9">
            <property role="TrG5h" value="fbInstancePort" />
            <node concept="3uibUv" id="5jb5jNBMeMP" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            </node>
            <node concept="1rXfSq" id="5jb5jNBMeMQ" role="33vP2m">
              <ref role="37wK5l" node="5jb5jNBLbgt" resolve="assertMine" />
              <node concept="37vLTw" id="5jb5jNBMlsW" role="37wK5m">
                <ref role="3cqZAo" node="5jb5jNBMcIc" resolve="port" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jb5jNBMfge" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNBMg3q" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNBMfgc" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNBMeMO" resolve="fbInstancePort" />
            </node>
            <node concept="liA8E" id="5jb5jNBMh1D" role="2OqNvi">
              <ref role="37wK5l" to="tphl:3IX4BsK6WT5" resolve="isSource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBMcIh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24KIWu" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBLbgt" role="jymVt">
      <property role="TrG5h" value="assertMine" />
      <node concept="3clFbS" id="5jb5jNBLbgw" role="3clF47">
        <node concept="3clFbJ" id="5jb5jNBLglj" role="3cqZAp">
          <node concept="22lmx$" id="5jb5jNBLkbI" role="3clFbw">
            <node concept="3fqX7Q" id="5jb5jNBLlXa" role="3uHU7w">
              <node concept="1eOMI4" id="5jb5jNBLlXc" role="3fr31v">
                <node concept="2ZW3vV" id="5jb5jNBLlXd" role="1eOMHV">
                  <node concept="3uibUv" id="5jb5jNBLlXe" role="2ZW6by">
                    <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
                  </node>
                  <node concept="37vLTw" id="5jb5jNBLlXf" role="2ZW6bz">
                    <ref role="3cqZAo" node="5jb5jNBLd8F" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17QLQc" id="5jb5jNBNrKQ" role="3uHU7B">
              <node concept="2OqwBi" id="5jb5jNBLgxM" role="3uHU7B">
                <node concept="37vLTw" id="5jb5jNBLgoX" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNBLd8F" resolve="port" />
                </node>
                <node concept="liA8E" id="5jb5jNBLgVh" role="2OqNvi">
                  <ref role="37wK5l" to="tphl:4O0ojQq1drw" resolve="getComponent" />
                </node>
              </node>
              <node concept="37vLTw" id="5jb5jNBLhoC" role="3uHU7w">
                <ref role="3cqZAo" node="3IX4BsK5Q_3" resolve="myView" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5jb5jNBLgll" role="3clFbx">
            <node concept="YS8fn" id="5jb5jNBLhI4" role="3cqZAp">
              <node concept="2ShNRf" id="5jb5jNBLhLI" role="YScLw">
                <node concept="1pGfFk" id="5jb5jNBLixy" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="5jb5jNBLiEC" role="37wK5m">
                    <property role="Xl_RC" value="invalid port" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5jb5jNBLmn_" role="3cqZAp">
          <node concept="10QFUN" id="5jb5jNBLw$K" role="3cqZAk">
            <node concept="3uibUv" id="5jb5jNBLyxM" role="10QFUM">
              <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            </node>
            <node concept="37vLTw" id="5jb5jNBLvrW" role="10QFUP">
              <ref role="3cqZAo" node="5jb5jNBLd8F" resolve="port" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5jb5jNBLMA2" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNBL7rd" role="3clF45">
        <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
      </node>
      <node concept="37vLTG" id="5jb5jNBLd8F" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBLd8E" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBMlOu" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24KKHp" role="jymVt">
      <property role="TrG5h" value="translateForm" />
      <node concept="3Tm1VV" id="1iOpS24KKHr" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24KKH_" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="1iOpS24KKHt" role="3clF46">
        <property role="TrG5h" value="originalPosition" />
        <node concept="3uibUv" id="1iOpS24KKH$" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24KKHv" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="1iOpS24KKHw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iOpS24KKHx" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="1iOpS24KKHy" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="1iOpS24KKHz" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1iOpS24KKHA" role="3clF47">
        <node concept="3cpWs8" id="1iOpS24KSaV" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24KSaW" role="3cpWs9">
            <property role="TrG5h" value="position" />
            <node concept="3uibUv" id="1iOpS24KSaS" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2ShNRf" id="1iOpS24KSaX" role="33vP2m">
              <node concept="1pGfFk" id="1iOpS24KSaY" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(java.awt.Point)" resolve="Point" />
                <node concept="37vLTw" id="1iOpS24KSaZ" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24KKHt" resolve="originalPosition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24KQwu" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24KT1w" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24KSb0" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS24KSaW" resolve="position" />
            </node>
            <node concept="liA8E" id="1iOpS24KU8i" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Point.translate(int,int):void" resolve="translate" />
              <node concept="37vLTw" id="1iOpS24KUcz" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS24KKHv" resolve="dx" />
              </node>
              <node concept="37vLTw" id="1iOpS24KUx8" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS24KKHx" resolve="dy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24KURL" role="3cqZAp">
          <node concept="37vLTw" id="1iOpS24KURJ" role="3clFbG">
            <ref role="3cqZAo" node="1iOpS24KSaW" resolve="position" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24KKHB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24KOu3" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24KKHC" role="jymVt">
      <property role="TrG5h" value="transformFormAt" />
      <node concept="3Tm1VV" id="1iOpS24KKHE" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24KKHF" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="1iOpS24KKHG" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1iOpS24KKHP" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24KKHI" role="3clF46">
        <property role="TrG5h" value="originalForm" />
        <node concept="3uibUv" id="1iOpS24KKHO" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24KKHK" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="1iOpS24KKHL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iOpS24KKHM" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1iOpS24KKHN" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1iOpS24KKHQ" role="3clF47">
        <node concept="3clFbF" id="1iOpS24KKHT" role="3cqZAp">
          <node concept="10Nm6u" id="1iOpS24KKHS" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24KKHR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24KUSB" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24KKHU" role="jymVt">
      <property role="TrG5h" value="updateCellWithForm" />
      <node concept="3Tm1VV" id="1iOpS24KKHW" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24KKHX" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24KKHY" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24KKI0" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS24KKI1" role="3clF47">
        <node concept="3clFbF" id="1iOpS24LFwF" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24LFPn" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24LFwE" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
            </node>
            <node concept="liA8E" id="1iOpS24LGzm" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setX(int):void" resolve="setX" />
              <node concept="2OqwBi" id="1iOpS24LHft" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24LGTy" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24KKHY" resolve="position" />
                </node>
                <node concept="2OwXpG" id="1iOpS24LHTK" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24LI1x" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24LI1y" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24LI1z" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
            </node>
            <node concept="liA8E" id="1iOpS24LI1$" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setY(int):void" resolve="setY" />
              <node concept="2OqwBi" id="1iOpS24LI1_" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24LI1A" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24KKHY" resolve="position" />
                </node>
                <node concept="2OwXpG" id="1iOpS24LJnZ" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24KKI2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IQSxPg" role="jymVt" />
    <node concept="3clFb_" id="38k27IQSq5X" role="jymVt">
      <property role="TrG5h" value="updateCellSelection" />
      <node concept="3Tm1VV" id="38k27IQSq5Z" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IQSq60" role="3clF45" />
      <node concept="37vLTG" id="38k27IQSq61" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="38k27IQSq62" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IQSq63" role="3clF47">
        <node concept="3clFbF" id="2JpbWDsOqOa" role="3cqZAp">
          <node concept="2OqwBi" id="2JpbWDsOqOb" role="3clFbG">
            <node concept="liA8E" id="2JpbWDsOqOf" role="2OqNvi">
              <ref role="37wK5l" to="5ueo:~StyleImpl.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object):void" resolve="set" />
              <node concept="10M0yZ" id="2JpbWDsOqOg" role="37wK5m">
                <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                <ref role="3cqZAo" to="5ueo:~StyleAttributes.FONT_STYLE" resolve="FONT_STYLE" />
              </node>
              <node concept="3K4zz7" id="2JpbWDsOqOh" role="37wK5m">
                <node concept="10M0yZ" id="2JpbWDsOqOi" role="3K4E3e">
                  <ref role="3cqZAo" to="z60i:~Font.BOLD" resolve="BOLD" />
                  <ref role="1PxDUh" to="z60i:~Font" resolve="Font" />
                </node>
                <node concept="10M0yZ" id="2JpbWDsOqOj" role="3K4GZi">
                  <ref role="1PxDUh" to="z60i:~Font" resolve="Font" />
                  <ref role="3cqZAo" to="z60i:~Font.PLAIN" resolve="PLAIN" />
                </node>
                <node concept="37vLTw" id="1iOpS25v4ya" role="3K4Cdx">
                  <ref role="3cqZAo" node="38k27IQSq61" resolve="selected" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1iOpS25v215" role="2Oq$k0">
              <node concept="37vLTw" id="1iOpS25v2iJ" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
              </node>
              <node concept="2OwXpG" id="1iOpS25v218" role="2OqNvi">
                <ref role="2Oxat5" node="1CY1mmBs_Ib" resolve="myNameTextStyle" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IQSq64" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24KWFl" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24KKI3" role="jymVt">
      <property role="TrG5h" value="paintTrace" />
      <node concept="3Tm1VV" id="1iOpS24KKI5" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24KKI6" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24KKI7" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1iOpS24KKI8" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24KKI9" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24KKIb" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS24KKIc" role="3clF47">
        <node concept="3cpWs8" id="1CY1mmCB1do" role="3cqZAp">
          <node concept="3cpWsn" id="1CY1mmCB1dp" role="3cpWs9">
            <property role="TrG5h" value="traceCenterX" />
            <node concept="10Oyi0" id="1CY1mmCB1dq" role="1tU5fm" />
            <node concept="3cpWs3" id="1CY1mmCB1dr" role="33vP2m">
              <node concept="FJ1c_" id="1CY1mmCB1ds" role="3uHU7w">
                <node concept="2OqwBi" id="1iOpS24Lllx" role="3uHU7B">
                  <node concept="37vLTw" id="1iOpS24LkBU" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
                  </node>
                  <node concept="liA8E" id="1iOpS24Lmyy" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth():int" resolve="getWidth" />
                  </node>
                </node>
                <node concept="3cmrfG" id="1CY1mmCB1du" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
              <node concept="2OqwBi" id="2JpbWDsQ40b" role="3uHU7B">
                <node concept="37vLTw" id="1iOpS24Lk1H" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24KKI9" resolve="position" />
                </node>
                <node concept="2OwXpG" id="2JpbWDsQa2_" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1CY1mmCAW10" role="3cqZAp">
          <node concept="2OqwBi" id="1CY1mmCAX6A" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIVNUX7" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
            </node>
            <node concept="liA8E" id="1CY1mmCAZtN" role="2OqNvi">
              <ref role="37wK5l" to="ubo9:1CY1mmCAv_l" resolve="paintTrace" />
              <node concept="10QFUN" id="1CY1mmCAZEJ" role="37wK5m">
                <node concept="3uibUv" id="1CY1mmCAZEK" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="2OqwBi" id="1CY1mmCEmY7" role="10QFUP">
                  <node concept="37vLTw" id="1CY1mmCCDqw" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24KKI7" resolve="g" />
                  </node>
                  <node concept="liA8E" id="1CY1mmCEoyz" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.create():java.awt.Graphics" resolve="create" />
                  </node>
                </node>
              </node>
              <node concept="3cpWsd" id="1CY1mmCAZEM" role="37wK5m">
                <node concept="FJ1c_" id="1CY1mmCAZEN" role="3uHU7w">
                  <node concept="3cmrfG" id="1CY1mmCAZEO" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="1CY1mmCAZEP" role="3uHU7B">
                    <node concept="37vLTw" id="4y$DvIVNU1n" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                    </node>
                    <node concept="liA8E" id="1CY1mmCAZER" role="2OqNvi">
                      <ref role="37wK5l" to="ubo9:7qPnRGGb3$p" resolve="getWidth" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1CY1mmCB3Ij" role="3uHU7B">
                  <ref role="3cqZAo" node="1CY1mmCB1dp" resolve="traceCenterX" />
                </node>
              </node>
              <node concept="3cpWs3" id="1CY1mmCAZET" role="37wK5m">
                <node concept="2OqwBi" id="1iOpS24LDPk" role="3uHU7w">
                  <node concept="37vLTw" id="1iOpS24LEjO" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmliaAt$MH" resolve="myComponentCell" />
                  </node>
                  <node concept="liA8E" id="1iOpS24LDPn" role="2OqNvi">
                    <ref role="37wK5l" node="3IX4BsK6stl" resolve="getLineSize" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2JpbWDsQf2Y" role="3uHU7B">
                  <node concept="37vLTw" id="1iOpS24LCV4" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24KKI9" resolve="position" />
                  </node>
                  <node concept="2OwXpG" id="2JpbWDsQl5o" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24KKId" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAtbjX" role="jymVt" />
    <node concept="312cEu" id="6tmliaAtcSm" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyCell" />
      <node concept="2tJIrI" id="6tmliaAtvSb" role="jymVt" />
      <node concept="312cEg" id="1CY1mmBs_Ib" role="jymVt">
        <property role="TrG5h" value="myNameTextStyle" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="1CY1mmBs$3p" role="1B3o_S" />
        <node concept="2ShNRf" id="1CY1mmBsC7x" role="33vP2m">
          <node concept="1pGfFk" id="1CY1mmBsDas" role="2ShVmc">
            <ref role="37wK5l" to="5ueo:~StyleImpl.&lt;init&gt;()" resolve="StyleImpl" />
          </node>
        </node>
        <node concept="3uibUv" id="1CY1mmBsByG" role="1tU5fm">
          <ref role="3uigEE" to="5ueo:~StyleImpl" resolve="StyleImpl" />
        </node>
      </node>
      <node concept="312cEg" id="3IX4BsK5QLo" role="jymVt">
        <property role="TrG5h" value="myNameText" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="3IX4BsK5QCK" role="1B3o_S" />
        <node concept="3uibUv" id="3IX4BsK5QLb" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~TextLine" resolve="TextLine" />
        </node>
        <node concept="2ShNRf" id="3IX4BsK5QQY" role="33vP2m">
          <node concept="1pGfFk" id="3IX4BsK6c$z" role="2ShVmc">
            <ref role="37wK5l" to="g51k:~TextLine.&lt;init&gt;(java.lang.String,jetbrains.mps.openapi.editor.style.Style,boolean)" resolve="TextLine" />
            <node concept="Xl_RD" id="3IX4BsK6cBU" role="37wK5m">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="37vLTw" id="1CY1mmBsGFU" role="37wK5m">
              <ref role="3cqZAo" node="1CY1mmBs_Ib" resolve="myNameTextStyle" />
            </node>
            <node concept="3clFbT" id="3IX4BsK6cNt" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6tmliaAtDZ4" role="jymVt" />
      <node concept="3clFbW" id="6tmliaAtJnn" role="jymVt">
        <node concept="3cqZAl" id="6tmliaAtJno" role="3clF45" />
        <node concept="3Tm6S6" id="4y$DvIVVXa_" role="1B3o_S" />
        <node concept="3clFbS" id="6tmliaAtJnr" role="3clF47">
          <node concept="XkiVB" id="6tmliaAtJnt" role="3cqZAp">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode)" resolve="EditorCell_Basic" />
            <node concept="37vLTw" id="6tmliaAtJny" role="37wK5m">
              <ref role="3cqZAo" node="6tmliaAtJnu" resolve="editorContext" />
            </node>
            <node concept="37vLTw" id="6tmliaAtJnA" role="37wK5m">
              <ref role="3cqZAo" node="6tmliaAtJnz" resolve="node" />
            </node>
          </node>
          <node concept="3clFbF" id="1CY1mmBsM8U" role="3cqZAp">
            <node concept="2OqwBi" id="1CY1mmBsMou" role="3clFbG">
              <node concept="1rXfSq" id="1CY1mmBsM8S" role="2Oq$k0">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
              </node>
              <node concept="liA8E" id="1CY1mmBsNr9" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.add(jetbrains.mps.openapi.editor.style.Style):void" resolve="add" />
                <node concept="37vLTw" id="1CY1mmBsOpX" role="37wK5m">
                  <ref role="3cqZAo" node="1CY1mmBs_Ib" resolve="myNameTextStyle" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6tmliaAtJnu" role="3clF46">
          <property role="TrG5h" value="editorContext" />
          <node concept="3uibUv" id="6tmliaAtJnw" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
          </node>
          <node concept="2AHcQZ" id="6tmliaAtJnx" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="6tmliaAtJnz" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6tmliaAtJn_" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4y$DvIXqbCJ" role="jymVt" />
      <node concept="3Tm6S6" id="4y$DvIVVXte" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaAtfnw" role="1zkMxy">
        <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
      </node>
      <node concept="3clFb_" id="3IX4BsK6Fxd" role="jymVt">
        <property role="TrG5h" value="paintContent" />
        <node concept="3Tmbuc" id="3IX4BsK6Fxe" role="1B3o_S" />
        <node concept="3cqZAl" id="3IX4BsK6Fxg" role="3clF45" />
        <node concept="37vLTG" id="3IX4BsK6Fxh" role="3clF46">
          <property role="TrG5h" value="graphics" />
          <node concept="3uibUv" id="3IX4BsK6Fxi" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
        <node concept="37vLTG" id="3IX4BsK6Fxj" role="3clF46">
          <property role="TrG5h" value="settings" />
          <node concept="3uibUv" id="3IX4BsK6Fxk" role="1tU5fm">
            <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
          </node>
        </node>
        <node concept="3clFbS" id="3IX4BsK6Fxl" role="3clF47">
          <node concept="3cpWs8" id="1CY1mmBEKyd" role="3cqZAp">
            <node concept="3cpWsn" id="1CY1mmBEKye" role="3cpWs9">
              <property role="TrG5h" value="g" />
              <node concept="3uibUv" id="1CY1mmBEKyf" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
              </node>
              <node concept="10QFUN" id="1CY1mmBELI2" role="33vP2m">
                <node concept="3uibUv" id="1CY1mmBELI0" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="2OqwBi" id="1CY1mmBEM5$" role="10QFUP">
                  <node concept="37vLTw" id="1CY1mmBELW3" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK6Fxh" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="1CY1mmBEMtZ" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.create():java.awt.Graphics" resolve="create" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2JpbWDsPSZ9" role="3cqZAp" />
          <node concept="3cpWs8" id="1CY1mmCAHm$" role="3cqZAp">
            <node concept="3cpWsn" id="1CY1mmCAHm_" role="3cpWs9">
              <property role="TrG5h" value="centerX" />
              <node concept="10Oyi0" id="1CY1mmCAHmA" role="1tU5fm" />
              <node concept="3cpWs3" id="1CY1mmCAHmB" role="33vP2m">
                <node concept="FJ1c_" id="1CY1mmCAHmC" role="3uHU7w">
                  <node concept="37vLTw" id="1CY1mmCAHmD" role="3uHU7B">
                    <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myWidth" resolve="myWidth" />
                  </node>
                  <node concept="3cmrfG" id="1CY1mmCAHmE" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="37vLTw" id="1iOpS24LKtv" role="3uHU7B">
                  <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myX" resolve="myX" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1CY1mmCAHmG" role="3cqZAp">
            <node concept="2OqwBi" id="1CY1mmCAHmH" role="3clFbG">
              <node concept="37vLTw" id="1CY1mmCAHmI" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsK5QLo" resolve="myNameText" />
              </node>
              <node concept="liA8E" id="1CY1mmCAHmJ" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~TextLine.paint(java.awt.Graphics,int,int):void" resolve="paint" />
                <node concept="37vLTw" id="1CY1mmCCCaE" role="37wK5m">
                  <ref role="3cqZAo" node="1CY1mmBEKye" resolve="g" />
                </node>
                <node concept="3cpWsd" id="1CY1mmCAHmL" role="37wK5m">
                  <node concept="FJ1c_" id="1CY1mmCAHmM" role="3uHU7w">
                    <node concept="3cmrfG" id="1CY1mmCAHmN" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="1CY1mmCAHmO" role="3uHU7B">
                      <node concept="37vLTw" id="1CY1mmCAHmP" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IX4BsK5QLo" resolve="myNameText" />
                      </node>
                      <node concept="liA8E" id="1CY1mmCAHmQ" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1CY1mmCAHmR" role="3uHU7B">
                    <ref role="3cqZAo" node="1CY1mmCAHm_" resolve="centerX" />
                  </node>
                </node>
                <node concept="37vLTw" id="1iOpS24LLck" role="37wK5m">
                  <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myY" resolve="myY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1CY1mmCAHmT" role="3cqZAp">
            <node concept="2OqwBi" id="1CY1mmCAHmU" role="3clFbG">
              <node concept="37vLTw" id="4y$DvIVNVOE" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
              </node>
              <node concept="liA8E" id="1CY1mmCAHmW" role="2OqNvi">
                <ref role="37wK5l" to="ubo9:7qPnRGG7$7p" resolve="paint" />
                <node concept="10QFUN" id="1CY1mmCAHmX" role="37wK5m">
                  <node concept="3uibUv" id="1CY1mmCAHmY" role="10QFUM">
                    <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                  </node>
                  <node concept="37vLTw" id="1CY1mmCCCIv" role="10QFUP">
                    <ref role="3cqZAo" node="1CY1mmBEKye" resolve="g" />
                  </node>
                </node>
                <node concept="3cpWsd" id="1CY1mmCAHn0" role="37wK5m">
                  <node concept="FJ1c_" id="1CY1mmCAHn1" role="3uHU7w">
                    <node concept="3cmrfG" id="1CY1mmCAHn2" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="1CY1mmCAHn3" role="3uHU7B">
                      <node concept="37vLTw" id="4y$DvIVNWA2" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="1CY1mmCAHn5" role="2OqNvi">
                        <ref role="37wK5l" to="ubo9:7qPnRGGb3$p" resolve="getWidth" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1CY1mmCAHn6" role="3uHU7B">
                    <ref role="3cqZAo" node="1CY1mmCAHm_" resolve="centerX" />
                  </node>
                </node>
                <node concept="3cpWs3" id="1CY1mmCAHn7" role="37wK5m">
                  <node concept="1rXfSq" id="1CY1mmCAHn8" role="3uHU7w">
                    <ref role="37wK5l" node="3IX4BsK6stl" resolve="getLineSize" />
                  </node>
                  <node concept="37vLTw" id="1iOpS24LLIf" role="3uHU7B">
                    <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myY" resolve="myY" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3IX4BsK6Fxm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6tmliaAthG7" role="jymVt" />
      <node concept="3clFb_" id="3IX4BsK6j02" role="jymVt">
        <property role="TrG5h" value="synchronize" />
        <node concept="3Tm6S6" id="4y$DvIVVVyX" role="1B3o_S" />
        <node concept="3cqZAl" id="3IX4BsK6j04" role="3clF45" />
        <node concept="3clFbS" id="3IX4BsK6j05" role="3clF47">
          <node concept="3cpWs8" id="4y$DvIXpHfE" role="3cqZAp">
            <node concept="3cpWsn" id="2i$17fOkgVH" role="3cpWs9">
              <property role="TrG5h" value="lineSize" />
              <node concept="10Oyi0" id="2i$17fOkgVF" role="1tU5fm" />
              <node concept="1rXfSq" id="4y$DvIXqku1" role="33vP2m">
                <ref role="37wK5l" node="3IX4BsK6stl" resolve="getLineSize" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1iOpS24R9yV" role="3cqZAp" />
          <node concept="3clFbF" id="3IX4BsK6zPJ" role="3cqZAp">
            <node concept="2OqwBi" id="3IX4BsK6$fN" role="3clFbG">
              <node concept="37vLTw" id="3IX4BsK6zPH" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsK5QLo" resolve="myNameText" />
              </node>
              <node concept="liA8E" id="3IX4BsK6AF1" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~TextLine.setText(java.lang.String):void" resolve="setText" />
                <node concept="2OqwBi" id="3IX4BsK6B29" role="37wK5m">
                  <node concept="37vLTw" id="4y$DvIVPA1F" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK5Q_3" resolve="myView" />
                  </node>
                  <node concept="liA8E" id="3IX4BsK6BmK" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:7qPnRGGlWnJ" resolve="getInstanceName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3IX4BsK6j1H" role="3cqZAp">
            <node concept="2OqwBi" id="3IX4BsK6j1I" role="3clFbG">
              <node concept="37vLTw" id="3IX4BsK6j1J" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
              </node>
              <node concept="liA8E" id="3IX4BsK6j1K" role="2OqNvi">
                <ref role="37wK5l" to="ubo9:7qPnRGG7cIr" resolve="syncronize" />
                <node concept="37vLTw" id="4y$DvIVPAjL" role="37wK5m">
                  <ref role="3cqZAo" node="3IX4BsK5Q_3" resolve="myView" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7PF$iX$ugAj" role="3cqZAp">
            <node concept="2OqwBi" id="7PF$iX$ugAk" role="3clFbG">
              <node concept="37vLTw" id="7PF$iX$ugAl" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsK5QLo" resolve="myNameText" />
              </node>
              <node concept="liA8E" id="7PF$iX$ugAm" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~TextLine.relayout():void" resolve="relayout" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1iOpS24R27R" role="3cqZAp" />
          <node concept="3clFbF" id="1iOpS24R2pl" role="3cqZAp">
            <node concept="1rXfSq" id="1iOpS24R2pj" role="3clFbG">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setWidth(int):void" resolve="setWidth" />
              <node concept="2YIFZM" id="3IX4BsK6vba" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
                <node concept="2OqwBi" id="3IX4BsK6wqN" role="37wK5m">
                  <node concept="37vLTw" id="3IX4BsK6wgs" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK5QLo" resolve="myNameText" />
                  </node>
                  <node concept="liA8E" id="3IX4BsK6ylS" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3IX4BsK6j2f" role="37wK5m">
                  <node concept="37vLTw" id="3IX4BsK6j2g" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                  </node>
                  <node concept="liA8E" id="3IX4BsK6j2h" role="2OqNvi">
                    <ref role="37wK5l" to="ubo9:7qPnRGGb3$p" resolve="getWidth" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iOpS24R6Rf" role="3cqZAp">
            <node concept="1rXfSq" id="1iOpS24R6Rd" role="3clFbG">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setHeight(int):void" resolve="setHeight" />
              <node concept="3cpWs3" id="3IX4BsK6u7q" role="37wK5m">
                <node concept="37vLTw" id="2i$17fOkgVK" role="3uHU7B">
                  <ref role="3cqZAo" node="2i$17fOkgVH" resolve="lineSize" />
                </node>
                <node concept="2OqwBi" id="3IX4BsK6j1P" role="3uHU7w">
                  <node concept="liA8E" id="3IX4BsK6j1R" role="2OqNvi">
                    <ref role="37wK5l" to="ubo9:7qPnRGGb3$v" resolve="getHeight" />
                  </node>
                  <node concept="37vLTw" id="4y$DvIXqp$y" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK5Q_6" resolve="myFBCellComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6tmliaAKEif" role="jymVt" />
      <node concept="3clFb_" id="6tmliaAKFQE" role="jymVt">
        <property role="TrG5h" value="paintSelectionIfRequired" />
        <node concept="3Tmbuc" id="6tmliaAKFQF" role="1B3o_S" />
        <node concept="3cqZAl" id="6tmliaAKFQH" role="3clF45" />
        <node concept="37vLTG" id="6tmliaAKFQI" role="3clF46">
          <property role="TrG5h" value="g" />
          <node concept="3uibUv" id="6tmliaAKFQJ" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
        <node concept="37vLTG" id="6tmliaAKFQK" role="3clF46">
          <property role="TrG5h" value="parentSettings" />
          <node concept="3uibUv" id="6tmliaAKFQL" role="1tU5fm">
            <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
          </node>
        </node>
        <node concept="3clFbS" id="6tmliaAKFQM" role="3clF47" />
        <node concept="2AHcQZ" id="6tmliaAKFQN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6tmliaAtoEd" role="jymVt" />
      <node concept="3clFb_" id="7PF$iX$dL3e" role="jymVt">
        <property role="TrG5h" value="relayoutImpl" />
        <node concept="3Tmbuc" id="7PF$iX$dL3f" role="1B3o_S" />
        <node concept="3cqZAl" id="7PF$iX$dL3h" role="3clF45" />
        <node concept="3clFbS" id="7PF$iX$dL3i" role="3clF47">
          <node concept="3clFbF" id="7PF$iX$dL3l" role="3cqZAp">
            <node concept="3nyPlj" id="7PF$iX$dL3k" role="3clFbG">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.relayoutImpl():void" resolve="relayoutImpl" />
            </node>
          </node>
          <node concept="3clFbF" id="4JFQCPi2TSE" role="3cqZAp">
            <node concept="2OqwBi" id="4JFQCPi2UQc" role="3clFbG">
              <node concept="37vLTw" id="4JFQCPi2TSC" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsK5QLo" resolve="myNameText" />
              </node>
              <node concept="liA8E" id="4JFQCPi2Xyl" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~TextLine.relayout():void" resolve="relayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7PF$iX$dL3j" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3IX4BsK6r$2" role="jymVt" />
      <node concept="3clFb_" id="3IX4BsK6stl" role="jymVt">
        <property role="TrG5h" value="getLineSize" />
        <node concept="3Tm6S6" id="3IX4BsK6stm" role="1B3o_S" />
        <node concept="10Oyi0" id="3IX4BsK6stn" role="3clF45" />
        <node concept="3clFbS" id="3IX4BsK6sto" role="3clF47">
          <node concept="3cpWs6" id="3IX4BsK6stp" role="3cqZAp">
            <node concept="2YIFZM" id="7pEplJkse8M" role="3cqZAk">
              <ref role="1Pybhc" to="rvgs:1Oxt8dqZWeT" resolve="LayoutUtil" />
              <ref role="37wK5l" to="rvgs:7qPnRGFzb_r" resolve="getLineSize" />
              <node concept="1rXfSq" id="3IX4BsK6t$d" role="37wK5m">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4O0ojQq1kJQ">
    <property role="TrG5h" value="FBNetworkComponentSynhcronizer" />
    <node concept="2tJIrI" id="4O0ojQq1kKD" role="jymVt" />
    <node concept="312cEg" id="4y$DvIXnDSX" role="jymVt">
      <property role="TrG5h" value="myViewpoint" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIXnDP8" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIXnDSN" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:17nGqbJdbfv" resolve="SceneViewpoint" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXnDTg" role="jymVt" />
    <node concept="3Tm1VV" id="4O0ojQq1kJR" role="1B3o_S" />
    <node concept="3uibUv" id="4y$DvIXnDGU" role="EKbjA">
      <ref role="3uigEE" to="xxy3:1gL472EF7fL" resolve="ComponentSynchronizer" />
      <node concept="3uibUv" id="4y$DvIXnDIx" role="11_B2D">
        <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
      </node>
      <node concept="3uibUv" id="1iOpS24I$DJ" role="11_B2D">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
    <node concept="3clFbW" id="4y$DvIXnDTT" role="jymVt">
      <node concept="3cqZAl" id="4y$DvIXnDTU" role="3clF45" />
      <node concept="3Tm1VV" id="4y$DvIXnDTV" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIXnDTX" role="3clF47">
        <node concept="3clFbF" id="4y$DvIXnDU1" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIXnDU3" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIXnDZ9" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIXnDSX" resolve="myViewpoint" />
            </node>
            <node concept="37vLTw" id="4y$DvIXnDUa" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIXnDU0" resolve="viewpoint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIXnDU0" role="3clF46">
        <property role="TrG5h" value="viewpoint" />
        <node concept="3uibUv" id="4y$DvIXnDTZ" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:17nGqbJdbfv" resolve="SceneViewpoint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXqQUd" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXnE3F" role="jymVt">
      <property role="TrG5h" value="getForm" />
      <node concept="37vLTG" id="4y$DvIXnE3G" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="4y$DvIXnE3N" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXnE3I" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIXnE3K" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIXIDPH" role="3clF45">
        <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
        <node concept="3uibUv" id="1iOpS24I_gN" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIXnE3M" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4y$DvIXnE3O" role="3clF47">
        <node concept="3clFbJ" id="4y$DvIXnEdx" role="3cqZAp">
          <node concept="2ZW3vV" id="4y$DvIXnE_V" role="3clFbw">
            <node concept="3uibUv" id="4y$DvIXnEIY" role="2ZW6by">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstanceView" />
            </node>
            <node concept="37vLTw" id="4y$DvIXnEi9" role="2ZW6bz">
              <ref role="3cqZAo" node="4y$DvIXnE3G" resolve="component" />
            </node>
          </node>
          <node concept="3clFbS" id="4y$DvIXnEdz" role="3clFbx">
            <node concept="3cpWs8" id="4y$DvIXoCJ4" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIXoCJ5" role="3cpWs9">
                <property role="TrG5h" value="fbInstance" />
                <node concept="3uibUv" id="4y$DvIXoCJ0" role="1tU5fm">
                  <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstanceView" />
                </node>
                <node concept="10QFUN" id="4y$DvIXoCJ6" role="33vP2m">
                  <node concept="3uibUv" id="4y$DvIXoCJ7" role="10QFUM">
                    <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstanceView" />
                  </node>
                  <node concept="37vLTw" id="4y$DvIXoCJ8" role="10QFUP">
                    <ref role="3cqZAo" node="4y$DvIXnE3G" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4y$DvIXIF1J" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIXIF1K" role="3cpWs9">
                <property role="TrG5h" value="x" />
                <node concept="10Oyi0" id="4y$DvIXIF1H" role="1tU5fm" />
                <node concept="2OqwBi" id="4y$DvIXIF1L" role="33vP2m">
                  <node concept="37vLTw" id="4y$DvIXIF1M" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIXoCJ5" resolve="fbInstance" />
                  </node>
                  <node concept="liA8E" id="4y$DvIXIF1N" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:4y$DvIXoEou" resolve="getX" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4y$DvIXIFqv" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIXIFqw" role="3cpWs9">
                <property role="TrG5h" value="y" />
                <node concept="10Oyi0" id="4y$DvIXIFqs" role="1tU5fm" />
                <node concept="2OqwBi" id="4y$DvIXIFqx" role="33vP2m">
                  <node concept="37vLTw" id="4y$DvIXIFqy" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIXoCJ5" resolve="fbInstance" />
                  </node>
                  <node concept="liA8E" id="4y$DvIXIFqz" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:4y$DvIXoFl9" resolve="getY" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4y$DvIXIGd7" role="3cqZAp">
              <node concept="1bVj0M" id="4y$DvIXIGDB" role="3cqZAk">
                <node concept="3clFbS" id="4y$DvIXIGDD" role="1bW5cS">
                  <node concept="3clFbF" id="1iOpS24IEPx" role="3cqZAp">
                    <node concept="2ShNRf" id="4y$DvIXqU07" role="3clFbG">
                      <node concept="1pGfFk" id="4y$DvIXqUKM" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                        <node concept="2OqwBi" id="4y$DvIXqRl6" role="37wK5m">
                          <node concept="37vLTw" id="4y$DvIXqRaa" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIXnDSX" resolve="myViewpoint" />
                          </node>
                          <node concept="liA8E" id="4y$DvIXqTfX" role="2OqNvi">
                            <ref role="37wK5l" to="rvgs:7sG$k3BM$l1" resolve="translateToEditorX" />
                            <node concept="37vLTw" id="4y$DvIXIF1O" role="37wK5m">
                              <ref role="3cqZAo" node="4y$DvIXIF1K" resolve="x" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4y$DvIXqVyL" role="37wK5m">
                          <node concept="37vLTw" id="4y$DvIXqVyM" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIXnDSX" resolve="myViewpoint" />
                          </node>
                          <node concept="liA8E" id="4y$DvIXqVyN" role="2OqNvi">
                            <ref role="37wK5l" to="rvgs:309fsJ6evNL" resolve="translateToEditorY" />
                            <node concept="37vLTw" id="4y$DvIXIFq$" role="37wK5m">
                              <ref role="3cqZAo" node="4y$DvIXIFqw" resolve="y" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4y$DvIXqLtE" role="3cqZAp">
          <node concept="2ZW3vV" id="4y$DvIXqLtF" role="3clFbw">
            <node concept="3uibUv" id="4y$DvIXqLAH" role="2ZW6by">
              <ref role="3uigEE" to="tphl:6tmlia_XI2H" resolve="InterfaceEndpointView" />
            </node>
            <node concept="37vLTw" id="4y$DvIXqLtH" role="2ZW6bz">
              <ref role="3cqZAo" node="4y$DvIXnE3G" resolve="component" />
            </node>
          </node>
          <node concept="3clFbS" id="4y$DvIXqLtI" role="3clFbx">
            <node concept="3cpWs8" id="4y$DvIXqLtJ" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIXqLtK" role="3cpWs9">
                <property role="TrG5h" value="interfaceEndpoint" />
                <node concept="3uibUv" id="4y$DvIXqLEo" role="1tU5fm">
                  <ref role="3uigEE" to="tphl:6tmlia_XI2H" resolve="InterfaceEndpointView" />
                </node>
                <node concept="10QFUN" id="4y$DvIXqLtM" role="33vP2m">
                  <node concept="3uibUv" id="4y$DvIXqLC2" role="10QFUM">
                    <ref role="3uigEE" to="tphl:6tmlia_XI2H" resolve="InterfaceEndpointView" />
                  </node>
                  <node concept="37vLTw" id="4y$DvIXqLtO" role="10QFUP">
                    <ref role="3cqZAo" node="4y$DvIXnE3G" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4y$DvIXIHRm" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIXIHRn" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="10P_77" id="4y$DvIXIHRe" role="1tU5fm" />
                <node concept="2OqwBi" id="4y$DvIXIHRo" role="33vP2m">
                  <node concept="37vLTw" id="4y$DvIXIHRp" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIXqLtK" resolve="interfaceEndpoint" />
                  </node>
                  <node concept="liA8E" id="4y$DvIXIHRq" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:5FPxgJnz8w3" resolve="isSource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4y$DvIXIIhf" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIXIIhg" role="3cpWs9">
                <property role="TrG5h" value="pos" />
                <node concept="10Oyi0" id="4y$DvIXIIh9" role="1tU5fm" />
                <node concept="2OqwBi" id="4y$DvIXIIhh" role="33vP2m">
                  <node concept="37vLTw" id="4y$DvIXIIhi" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIXqLtK" resolve="interfaceEndpoint" />
                  </node>
                  <node concept="liA8E" id="4y$DvIXIIhj" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:4y$DvIXqMCJ" resolve="getPosition" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4y$DvIXIJ6c" role="3cqZAp">
              <node concept="1bVj0M" id="4y$DvIXIJWk" role="3cqZAk">
                <node concept="3clFbS" id="4y$DvIXIJWm" role="1bW5cS">
                  <node concept="3clFbF" id="1iOpS24IEtM" role="3cqZAp">
                    <node concept="2ShNRf" id="4y$DvIXqWd5" role="3clFbG">
                      <node concept="1pGfFk" id="4y$DvIXqWd6" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                        <node concept="2OqwBi" id="4y$DvIXqWd7" role="37wK5m">
                          <node concept="37vLTw" id="4y$DvIXqWd8" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIXnDSX" resolve="myViewpoint" />
                          </node>
                          <node concept="liA8E" id="4y$DvIXqWd9" role="2OqNvi">
                            <ref role="37wK5l" to="rvgs:7sG$k3BM$l1" resolve="translateToEditorX" />
                            <node concept="3K4zz7" id="4y$DvIXqXtO" role="37wK5m">
                              <node concept="3cmrfG" id="4y$DvIXqXAH" role="3K4E3e">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="3cmrfG" id="4y$DvIXqXJc" role="3K4GZi">
                                <property role="3cmrfH" value="5000" />
                              </node>
                              <node concept="37vLTw" id="4y$DvIXIHRr" role="3K4Cdx">
                                <ref role="3cqZAo" node="4y$DvIXIHRn" resolve="source" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4y$DvIXqWdd" role="37wK5m">
                          <node concept="37vLTw" id="4y$DvIXqWde" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIXnDSX" resolve="myViewpoint" />
                          </node>
                          <node concept="liA8E" id="4y$DvIXqWdf" role="2OqNvi">
                            <ref role="37wK5l" to="rvgs:309fsJ6evNL" resolve="translateToEditorY" />
                            <node concept="17qRlL" id="4y$DvIXr053" role="37wK5m">
                              <node concept="37vLTw" id="4y$DvIXIM0_" role="3uHU7B">
                                <ref role="3cqZAo" node="4y$DvIXIIhg" resolve="pos" />
                              </node>
                              <node concept="3cmrfG" id="4y$DvIXr1rQ" role="3uHU7w">
                                <property role="3cmrfH" value="100" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="4y$DvIXr23S" role="3cqZAp">
          <node concept="2ShNRf" id="4y$DvIXr2kZ" role="YScLw">
            <node concept="1pGfFk" id="4y$DvIXr3bp" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="Xl_RD" id="4y$DvIXr3ju" role="37wK5m">
                <property role="Xl_RC" value="unknown network component" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIXnE3P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXrk4_" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXnE3S" role="jymVt">
      <property role="TrG5h" value="setForm" />
      <node concept="3Tm1VV" id="4y$DvIXnE3U" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXnE3V" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIXnE3W" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="4y$DvIXnE42" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXnE3Y" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIXnE3Z" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24I_jQ" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXnE41" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIXnE43" role="3clF47">
        <node concept="3clFbJ" id="4y$DvIXr51g" role="3cqZAp">
          <node concept="2ZW3vV" id="4y$DvIXr51h" role="3clFbw">
            <node concept="3uibUv" id="4y$DvIXr51i" role="2ZW6by">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstanceView" />
            </node>
            <node concept="37vLTw" id="4y$DvIXr51j" role="2ZW6bz">
              <ref role="3cqZAo" node="4y$DvIXnE3W" resolve="component" />
            </node>
          </node>
          <node concept="3clFbS" id="4y$DvIXr51k" role="3clFbx">
            <node concept="3cpWs8" id="4y$DvIXr51l" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIXr51m" role="3cpWs9">
                <property role="TrG5h" value="fbInstance" />
                <node concept="3uibUv" id="4y$DvIXr51n" role="1tU5fm">
                  <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstanceView" />
                </node>
                <node concept="10QFUN" id="4y$DvIXr51o" role="33vP2m">
                  <node concept="3uibUv" id="4y$DvIXr51p" role="10QFUM">
                    <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstanceView" />
                  </node>
                  <node concept="37vLTw" id="4y$DvIXr51q" role="10QFUP">
                    <ref role="3cqZAo" node="4y$DvIXnE3W" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4y$DvIXrdbT" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIXrdDj" role="3clFbG">
                <node concept="37vLTw" id="4y$DvIXrdbR" role="2Oq$k0">
                  <ref role="3cqZAo" node="4y$DvIXr51m" resolve="fbInstance" />
                </node>
                <node concept="liA8E" id="4y$DvIXreuR" role="2OqNvi">
                  <ref role="37wK5l" to="tphl:309fsJ6buVo" resolve="setX" />
                  <node concept="2OqwBi" id="4y$DvIXreJO" role="37wK5m">
                    <node concept="37vLTw" id="4y$DvIXrey3" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIXnDSX" resolve="myViewpoint" />
                    </node>
                    <node concept="liA8E" id="4y$DvIXreXw" role="2OqNvi">
                      <ref role="37wK5l" to="rvgs:309fsJ6iBhP" resolve="translateFromEditorX" />
                      <node concept="2OqwBi" id="4y$DvIXrfqP" role="37wK5m">
                        <node concept="37vLTw" id="1iOpS24I_Mt" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXnE3Z" resolve="position" />
                        </node>
                        <node concept="2OwXpG" id="4y$DvIXrfIK" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4y$DvIXrfPR" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIXrfPS" role="3clFbG">
                <node concept="37vLTw" id="4y$DvIXrfPT" role="2Oq$k0">
                  <ref role="3cqZAo" node="4y$DvIXr51m" resolve="fbInstance" />
                </node>
                <node concept="liA8E" id="4y$DvIXrfPU" role="2OqNvi">
                  <ref role="37wK5l" to="tphl:309fsJ6buV_" resolve="setY" />
                  <node concept="2OqwBi" id="4y$DvIXrfPV" role="37wK5m">
                    <node concept="37vLTw" id="4y$DvIXrfPW" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIXnDSX" resolve="myViewpoint" />
                    </node>
                    <node concept="liA8E" id="4y$DvIXrfPX" role="2OqNvi">
                      <ref role="37wK5l" to="rvgs:309fsJ6iBhV" resolve="translateFromEditorY" />
                      <node concept="2OqwBi" id="4y$DvIXrfPY" role="37wK5m">
                        <node concept="37vLTw" id="1iOpS24I_Uv" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXnE3Z" resolve="position" />
                        </node>
                        <node concept="2OwXpG" id="4y$DvIXGo$0" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4y$DvIXr51G" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbJ" id="4y$DvIXr51L" role="3cqZAp">
          <node concept="2ZW3vV" id="4y$DvIXr51M" role="3clFbw">
            <node concept="3uibUv" id="4y$DvIXr51N" role="2ZW6by">
              <ref role="3uigEE" to="tphl:6tmlia_XI2H" resolve="InterfaceEndpointView" />
            </node>
            <node concept="37vLTw" id="4y$DvIXr51O" role="2ZW6bz">
              <ref role="3cqZAo" node="4y$DvIXnE3W" resolve="component" />
            </node>
          </node>
          <node concept="3clFbS" id="4y$DvIXr51P" role="3clFbx">
            <node concept="RRSsy" id="4y$DvIXrhkl" role="3cqZAp">
              <property role="RRSoG" value="warn" />
              <node concept="Xl_RD" id="4y$DvIXrhkn" role="RRSoy">
                <property role="Xl_RC" value="InterfaceEndpointView location modification triggered" />
              </node>
              <node concept="2ShNRf" id="4y$DvIXrhTh" role="RRSow">
                <node concept="1pGfFk" id="4y$DvIXri$B" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~Throwable.&lt;init&gt;()" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4y$DvIXrjlp" role="3cqZAp" />
          </node>
        </node>
        <node concept="YS8fn" id="4y$DvIXr52n" role="3cqZAp">
          <node concept="2ShNRf" id="4y$DvIXr52o" role="YScLw">
            <node concept="1pGfFk" id="4y$DvIXr52p" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="Xl_RD" id="4y$DvIXr52q" role="37wK5m">
                <property role="Xl_RC" value="unknown network component" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIXnE44" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5jb5jNBJKHJ">
    <property role="TrG5h" value="FBNetworkCompponentController" />
    <node concept="2tJIrI" id="5jb5jNBJKIt" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBJMpJ" role="jymVt">
      <property role="TrG5h" value="getPortCoordinates" />
      <node concept="3clFbS" id="5jb5jNBJMpK" role="3clF47" />
      <node concept="3Tm1VV" id="5jb5jNBJMpQ" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNBJMpR" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="5jb5jNBJMEw" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBJMGo" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJMMG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNBJMpS" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="5jb5jNBJMpT" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJMP0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBJMSg" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBJMpV" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBJMpW" role="jymVt">
      <property role="TrG5h" value="getPortBounds" />
      <node concept="3Tm1VV" id="5jb5jNBJMpX" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNBJMpY" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="2AHcQZ" id="5jb5jNBJMpZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="5jb5jNBJMHm" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBJMHn" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJMNP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNBJMq0" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="5jb5jNBJMq1" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJMQc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNBJMq2" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5jb5jNBJOFv" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBJO$O" role="jymVt">
      <property role="TrG5h" value="isSource" />
      <node concept="3Tm1VV" id="5jb5jNBJO$P" role="1B3o_S" />
      <node concept="10P_77" id="5jb5jNBJOHe" role="3clF45" />
      <node concept="37vLTG" id="5jb5jNBJO$S" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBJO$T" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJO$U" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNBJO$Y" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="5jb5jNBJKHK" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4O0ojQq0OIY">
    <property role="TrG5h" value="FBNetworkModelProvider" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="4y$DvIXlSpL" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXlSFv" role="jymVt">
      <property role="TrG5h" value="getComponents" />
      <node concept="3Tm1VV" id="4y$DvIXlSFx" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIXlSFy" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4y$DvIXlSF$" role="11_B2D">
          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIXlSF_" role="3clF47">
        <node concept="3clFbF" id="4y$DvIXlT72" role="3cqZAp">
          <node concept="1rXfSq" id="4y$DvIXlT6Z" role="3clFbG">
            <ref role="37wK5l" to="5lkm:4O0ojQpH$XA" resolve="components" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIXlSFA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXlSrg" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq11nx" role="jymVt">
      <property role="TrG5h" value="ports" />
      <node concept="3Tm1VV" id="4O0ojQq11nz" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQq11n$" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4O0ojQq11nD" role="11_B2D">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQq11nA" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="4O0ojQq11nC" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
        </node>
      </node>
      <node concept="3clFbS" id="4O0ojQq11nE" role="3clF47">
        <node concept="3clFbF" id="4O0ojQq153S" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQq15em" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQq153R" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQq11nA" resolve="component" />
            </node>
            <node concept="liA8E" id="4O0ojQq15yq" role="2OqNvi">
              <ref role="37wK5l" to="tphl:4O0ojQq0PNT" resolve="getPorts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4O0ojQq11nF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQq1fAP" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq11nI" role="jymVt">
      <property role="TrG5h" value="component" />
      <node concept="37vLTG" id="4O0ojQq11nJ" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="4O0ojQq11nP" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4O0ojQq11nM" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQq11nO" role="3clF45">
        <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
      </node>
      <node concept="3clFbS" id="4O0ojQq11nQ" role="3clF47">
        <node concept="3clFbF" id="4O0ojQq1cqc" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQq1cun" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQq1cqb" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQq11nJ" resolve="port" />
            </node>
            <node concept="liA8E" id="4O0ojQq1eg9" role="2OqNvi">
              <ref role="37wK5l" to="tphl:4O0ojQq1drw" resolve="getComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4O0ojQq11nR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQq1fuh" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq11nS" role="jymVt">
      <property role="TrG5h" value="sourcePort" />
      <node concept="3Tm1VV" id="4O0ojQq11nU" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQq11nZ" role="3clF45">
        <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
      <node concept="37vLTG" id="4O0ojQq11nW" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="3uibUv" id="4O0ojQq11nY" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
        </node>
      </node>
      <node concept="3clFbS" id="4O0ojQq11o0" role="3clF47">
        <node concept="3clFbF" id="4O0ojQq1eiX" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQq1erv" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQq1eiW" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQq11nW" resolve="edge" />
            </node>
            <node concept="liA8E" id="4O0ojQq1f8c" role="2OqNvi">
              <ref role="37wK5l" to="tphl:4y$DvIW7xbI" resolve="getSourcePort" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4O0ojQq11o1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW1pp7" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW1py7" role="jymVt">
      <property role="TrG5h" value="setSourcePort" />
      <node concept="3Tm1VV" id="4y$DvIW1py9" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW1pya" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIW1pyb" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="3uibUv" id="4y$DvIW1pyf" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIW1pyd" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="4y$DvIW1pyg" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIW1pyh" role="3clF47">
        <node concept="3clFbF" id="4y$DvIW1pKe" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIW1qbr" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIW1pKd" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIW1pyb" resolve="edge" />
            </node>
            <node concept="liA8E" id="4y$DvIW1qyi" role="2OqNvi">
              <ref role="37wK5l" to="tphl:4y$DvIW7xgx" resolve="setSourcePort" />
              <node concept="37vLTw" id="4y$DvIW1q_r" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIW1pyd" resolve="port" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW1pyi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQq1fkI" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq11o2" role="jymVt">
      <property role="TrG5h" value="targetPort" />
      <node concept="3Tm1VV" id="4O0ojQq11o4" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQq11o9" role="3clF45">
        <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
      <node concept="37vLTG" id="4O0ojQq11o6" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="3uibUv" id="4O0ojQq11o8" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
        </node>
      </node>
      <node concept="3clFbS" id="4O0ojQq11oa" role="3clF47">
        <node concept="3clFbF" id="4O0ojQq1fao" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQq1fap" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQq1faq" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQq11o6" resolve="edge" />
            </node>
            <node concept="liA8E" id="4O0ojQq1far" role="2OqNvi">
              <ref role="37wK5l" to="tphl:4y$DvIW7xlq" resolve="getTargetPort" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4O0ojQq11ob" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW7yDD" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW7yRs" role="jymVt">
      <property role="TrG5h" value="setTargetPort" />
      <node concept="3Tm1VV" id="4y$DvIW7yRu" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW7yRv" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIW7yRw" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="3uibUv" id="4y$DvIW7yR_" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIW7yRy" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="4y$DvIW7yR$" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIW7yRA" role="3clF47">
        <node concept="3clFbF" id="4y$DvIW7z7C" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIW7zbL" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIW7z7B" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIW7yRw" resolve="edge" />
            </node>
            <node concept="liA8E" id="4y$DvIW7zFC" role="2OqNvi">
              <ref role="37wK5l" to="tphl:4y$DvIW7xlj" resolve="setTargetPort" />
              <node concept="37vLTw" id="4y$DvIW7zIC" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIW7yRy" resolve="port" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW7yRB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW9GIz" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW9GYV" role="jymVt">
      <property role="TrG5h" value="removeEdge" />
      <node concept="37vLTG" id="4y$DvIW9GYW" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="3uibUv" id="4y$DvIW9GZ2" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9GYY" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIW9GZ0" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW9GZ1" role="3clF45" />
      <node concept="3clFbS" id="4y$DvIW9GZ3" role="3clF47">
        <node concept="3clFbF" id="4y$DvIW9HkD" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIW9HoM" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIW9HkC" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIW9GYW" resolve="edge" />
            </node>
            <node concept="liA8E" id="4y$DvIW9HGt" role="2OqNvi">
              <ref role="37wK5l" to="tphl:4y$DvIW7y4w" resolve="remove" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW9GZ4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXIfzS" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXndDw" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="4y$DvIXndDy" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXndDz" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIXndD$" role="3clF46">
        <property role="TrG5h" value="entry" />
        <node concept="3uibUv" id="4y$DvIXndDG" role="1tU5fm">
          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIXndDH" role="3clF47">
        <node concept="3clFbF" id="4y$DvIXHzZO" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIXH$bk" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIXHzZM" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIXndD$" resolve="entry" />
            </node>
            <node concept="liA8E" id="4y$DvIXH$u4" role="2OqNvi">
              <ref role="37wK5l" to="tphl:4y$DvIXHsD_" resolve="remove" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIXndDI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4O0ojQq0OIZ" role="1B3o_S" />
    <node concept="3uibUv" id="4O0ojQq0OKt" role="EKbjA">
      <ref role="3uigEE" to="5lkm:4O0ojQpH$TE" resolve="DiagramModelProvider" />
      <node concept="3uibUv" id="4O0ojQq11jM" role="11_B2D">
        <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
      </node>
      <node concept="3uibUv" id="4O0ojQq11kc" role="11_B2D">
        <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
      <node concept="3uibUv" id="4O0ojQq11m4" role="11_B2D">
        <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
      </node>
    </node>
    <node concept="3uibUv" id="4y$DvIXlRCi" role="EKbjA">
      <ref role="3uigEE" to="hyqd:1KCfUoKQiq3" resolve="ComponentsView" />
      <node concept="3uibUv" id="4y$DvIXlS59" role="11_B2D">
        <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4O0ojQq1tYH">
    <property role="TrG5h" value="FBPortSettingProvider" />
    <node concept="2tJIrI" id="4O0ojQq1u0o" role="jymVt" />
    <node concept="312cEg" id="4O0ojQq1_97" role="jymVt">
      <property role="TrG5h" value="myMapper" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4O0ojQq1$tR" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQq1$XZ" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="5jb5jNBMxCC" role="11_B2D">
          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
        </node>
        <node concept="3uibUv" id="5jb5jNBMy5W" role="11_B2D">
          <ref role="3uigEE" node="5jb5jNBJKHJ" resolve="FBNetworkCompponentController" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBMzaJ" role="jymVt" />
    <node concept="2tJIrI" id="4y$DvIXuswE" role="jymVt" />
    <node concept="3clFbW" id="4y$DvIVWOEH" role="jymVt">
      <node concept="3cqZAl" id="4y$DvIVWOEI" role="3clF45" />
      <node concept="3Tm1VV" id="4y$DvIVWOEJ" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIVWOEL" role="3clF47">
        <node concept="3clFbF" id="4y$DvIVWOER" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIVWOET" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIVWPUp" role="37vLTJ">
              <ref role="3cqZAo" node="4O0ojQq1_97" resolve="myMapper" />
            </node>
            <node concept="37vLTw" id="4y$DvIVWOF0" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIVWOEQ" resolve="fbivMapper" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIVWOEQ" role="3clF46">
        <property role="TrG5h" value="fbivMapper" />
        <node concept="3uibUv" id="4y$DvIVWOEN" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="5jb5jNBMzXD" role="11_B2D">
            <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
          </node>
          <node concept="3uibUv" id="5jb5jNBM$7P" role="11_B2D">
            <ref role="3uigEE" node="5jb5jNBJKHJ" resolve="FBNetworkCompponentController" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXzzC6" role="jymVt" />
    <node concept="2YIFZL" id="4y$DvIXz$nA" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="4y$DvIXz_Is" role="3clF46">
        <property role="TrG5h" value="componentsFacitlity" />
        <node concept="3uibUv" id="4y$DvIXz_It" role="1tU5fm">
          <ref role="3uigEE" to="xxy3:3vyG44ANA6n" resolve="ComponentsFacility" />
          <node concept="3uibUv" id="4y$DvIXz_Iu" role="11_B2D">
            <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
          </node>
          <node concept="3uibUv" id="1iOpS24VDjq" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIXz$nD" role="3clF47">
        <node concept="3clFbF" id="4y$DvIXz$Pl" role="3cqZAp">
          <node concept="2ShNRf" id="4y$DvIXz$Pj" role="3clFbG">
            <node concept="1pGfFk" id="4y$DvIXz_wy" role="2ShVmc">
              <ref role="37wK5l" node="4y$DvIVWOEH" resolve="FBPortSettingProvider" />
              <node concept="1bVj0M" id="4y$DvIXuvN5" role="37wK5m">
                <node concept="3clFbS" id="4y$DvIXuvN6" role="1bW5cS">
                  <node concept="3clFbF" id="4y$DvIXuwcQ" role="3cqZAp">
                    <node concept="10QFUN" id="4y$DvIXuwRU" role="3clFbG">
                      <node concept="3uibUv" id="5jb5jNBM$Fp" role="10QFUM">
                        <ref role="3uigEE" node="5jb5jNBJKHJ" resolve="FBNetworkCompponentController" />
                      </node>
                      <node concept="2OqwBi" id="4y$DvIXuwpT" role="10QFUP">
                        <node concept="37vLTw" id="4y$DvIXz_Vo" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXz_Is" resolve="componentsFacitlity" />
                        </node>
                        <node concept="liA8E" id="4y$DvIXuw_N" role="2OqNvi">
                          <ref role="37wK5l" to="xxy3:4y$DvIVUIFH" resolve="getController" />
                          <node concept="37vLTw" id="4y$DvIXuwIZ" role="37wK5m">
                            <ref role="3cqZAo" node="4y$DvIXuvQv" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="4y$DvIXuvQv" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="3uibUv" id="5jb5jNBM$se" role="1tU5fm">
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIXzzYM" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIXz$G8" role="3clF45">
        <ref role="3uigEE" node="4O0ojQq1tYH" resolve="FBPortSettingProvider" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIVWOln" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq1u10" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3Tm1VV" id="4O0ojQq1u12" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQq1u13" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="2AHcQZ" id="4O0ojQq1u14" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="1iOpS24VJ$d" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24VKb3" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="1iOpS24VKms" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQq1u15" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="4O0ojQq1u18" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQq1u17" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4O0ojQq1u19" role="3clF47">
        <node concept="3cpWs8" id="5jb5jNBMBjh" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBMBji" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="5jb5jNBMBje" role="1tU5fm">
              <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
            </node>
            <node concept="2OqwBi" id="5jb5jNBMBjj" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBMBjk" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQq1u15" resolve="port" />
              </node>
              <node concept="liA8E" id="5jb5jNBMBjl" role="2OqNvi">
                <ref role="37wK5l" to="tphl:4O0ojQq1drw" resolve="getComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jb5jNBMHnd" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBMHne" role="3cpWs9">
            <property role="TrG5h" value="controller" />
            <node concept="3uibUv" id="5jb5jNBMHn2" role="1tU5fm">
              <ref role="3uigEE" node="5jb5jNBJKHJ" resolve="FBNetworkCompponentController" />
            </node>
            <node concept="2OqwBi" id="5jb5jNBMHnf" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBMHng" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQq1_97" resolve="myMapper" />
              </node>
              <node concept="liA8E" id="5jb5jNBMHnh" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object):java.lang.Object" resolve="apply" />
                <node concept="37vLTw" id="5jb5jNBMHni" role="37wK5m">
                  <ref role="3cqZAo" node="5jb5jNBMBji" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jb5jNBMC_O" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNBMI0C" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNBMHnj" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNBMHne" resolve="controller" />
            </node>
            <node concept="liA8E" id="5jb5jNBMNk1" role="2OqNvi">
              <ref role="37wK5l" node="5jb5jNBJMpW" resolve="getPortBounds" />
              <node concept="37vLTw" id="5jb5jNBMNFx" role="37wK5m">
                <ref role="3cqZAo" node="4O0ojQq1u15" resolve="port" />
              </node>
              <node concept="37vLTw" id="5jb5jNBMNpD" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS24VJ$d" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4O0ojQq1u1a" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIVWKI$" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq1u1d" role="jymVt">
      <property role="TrG5h" value="getEndpointPosition" />
      <node concept="37vLTG" id="1iOpS24VM42" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24VM43" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="1iOpS24VM44" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQq1u1e" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="4O0ojQq1u1l" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQq1u1g" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4O0ojQq1u1i" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQq1u1j" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2AHcQZ" id="4O0ojQq1u1k" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4O0ojQq1u1m" role="3clF47">
        <node concept="3cpWs8" id="5jb5jNBMOwn" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBMOwo" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="5jb5jNBMOwp" role="1tU5fm">
              <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
            </node>
            <node concept="2OqwBi" id="5jb5jNBMOwq" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBMOwr" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQq1u1e" resolve="port" />
              </node>
              <node concept="liA8E" id="5jb5jNBMOws" role="2OqNvi">
                <ref role="37wK5l" to="tphl:4O0ojQq1drw" resolve="getComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jb5jNBMOwt" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBMOwu" role="3cpWs9">
            <property role="TrG5h" value="controller" />
            <node concept="3uibUv" id="5jb5jNBMOwv" role="1tU5fm">
              <ref role="3uigEE" node="5jb5jNBJKHJ" resolve="FBNetworkCompponentController" />
            </node>
            <node concept="2OqwBi" id="5jb5jNBMOww" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBMOwx" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQq1_97" resolve="myMapper" />
              </node>
              <node concept="liA8E" id="5jb5jNBMOwy" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object):java.lang.Object" resolve="apply" />
                <node concept="37vLTw" id="5jb5jNBMOwz" role="37wK5m">
                  <ref role="3cqZAo" node="5jb5jNBMOwo" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jb5jNBMOw$" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNBMOw_" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNBMOwA" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNBMOwu" resolve="controller" />
            </node>
            <node concept="liA8E" id="5jb5jNBMOwB" role="2OqNvi">
              <ref role="37wK5l" node="5jb5jNBJMpJ" resolve="getPortCoordinates" />
              <node concept="37vLTw" id="5jb5jNBMOwC" role="37wK5m">
                <ref role="3cqZAo" node="4O0ojQq1u1e" resolve="port" />
              </node>
              <node concept="37vLTw" id="5jb5jNBMOwD" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS24VM42" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4O0ojQq1u1n" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBJCPi" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBJDiA" role="jymVt">
      <property role="TrG5h" value="canBeSourcedAt" />
      <node concept="37vLTG" id="5jb5jNBJDiB" role="3clF46">
        <property role="TrG5h" value="componentForm" />
        <node concept="3uibUv" id="5jb5jNBJDiS" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJDiD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNBJDiE" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBJDiR" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJDiG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNBJDiH" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="5jb5jNBJDiI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5jb5jNBJDiJ" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="5jb5jNBJDiK" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5jb5jNBJDiO" role="1B3o_S" />
      <node concept="10P_77" id="5jb5jNBJDiP" role="3clF45" />
      <node concept="3clFbS" id="5jb5jNBJDiT" role="3clF47">
        <node concept="3cpWs8" id="5jb5jNBMOWA" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBMOWB" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="5jb5jNBMOWC" role="1tU5fm">
              <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
            </node>
            <node concept="2OqwBi" id="5jb5jNBMOWD" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBMOWE" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNBJDiE" resolve="port" />
              </node>
              <node concept="liA8E" id="5jb5jNBMOWF" role="2OqNvi">
                <ref role="37wK5l" to="tphl:4O0ojQq1drw" resolve="getComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jb5jNBMOWG" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBMOWH" role="3cpWs9">
            <property role="TrG5h" value="controller" />
            <node concept="3uibUv" id="5jb5jNBMOWI" role="1tU5fm">
              <ref role="3uigEE" node="5jb5jNBJKHJ" resolve="FBNetworkCompponentController" />
            </node>
            <node concept="2OqwBi" id="5jb5jNBMOWJ" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBMOWK" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQq1_97" resolve="myMapper" />
              </node>
              <node concept="liA8E" id="5jb5jNBMOWL" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object):java.lang.Object" resolve="apply" />
                <node concept="37vLTw" id="5jb5jNBMOWM" role="37wK5m">
                  <ref role="3cqZAo" node="5jb5jNBMOWB" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jb5jNBMOWN" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNBMOWO" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNBMOWP" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNBMOWH" resolve="controller" />
            </node>
            <node concept="liA8E" id="5jb5jNBMOWQ" role="2OqNvi">
              <ref role="37wK5l" node="5jb5jNBJO$O" resolve="isSource" />
              <node concept="37vLTw" id="5jb5jNBMOWR" role="37wK5m">
                <ref role="3cqZAo" node="5jb5jNBJDiE" resolve="port" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBJDiU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBJEwV" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBJDj1" role="jymVt">
      <property role="TrG5h" value="canBeTargetedAt" />
      <node concept="3Tm1VV" id="5jb5jNBJDj5" role="1B3o_S" />
      <node concept="10P_77" id="5jb5jNBJDj6" role="3clF45" />
      <node concept="37vLTG" id="5jb5jNBJDj7" role="3clF46">
        <property role="TrG5h" value="componentForm" />
        <node concept="3uibUv" id="5jb5jNBJDji" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJDj9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNBJDja" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBJDjj" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJDjc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNBJDjd" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="5jb5jNBJDje" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5jb5jNBJDjf" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="5jb5jNBJDjg" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5jb5jNBJDjk" role="3clF47">
        <node concept="3cpWs8" id="5jb5jNBMPzd" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBMPze" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="5jb5jNBMPzf" role="1tU5fm">
              <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
            </node>
            <node concept="2OqwBi" id="5jb5jNBMPzg" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBMPzh" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNBJDja" resolve="port" />
              </node>
              <node concept="liA8E" id="5jb5jNBMPzi" role="2OqNvi">
                <ref role="37wK5l" to="tphl:4O0ojQq1drw" resolve="getComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jb5jNBMPzj" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBMPzk" role="3cpWs9">
            <property role="TrG5h" value="controller" />
            <node concept="3uibUv" id="5jb5jNBMPzl" role="1tU5fm">
              <ref role="3uigEE" node="5jb5jNBJKHJ" resolve="FBNetworkCompponentController" />
            </node>
            <node concept="2OqwBi" id="5jb5jNBMPzm" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNBMPzn" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQq1_97" resolve="myMapper" />
              </node>
              <node concept="liA8E" id="5jb5jNBMPzo" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object):java.lang.Object" resolve="apply" />
                <node concept="37vLTw" id="5jb5jNBMPzp" role="37wK5m">
                  <ref role="3cqZAo" node="5jb5jNBMPze" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jb5jNBMPzq" role="3cqZAp">
          <node concept="3fqX7Q" id="5jb5jNBMQ05" role="3clFbG">
            <node concept="2OqwBi" id="5jb5jNBMQ07" role="3fr31v">
              <node concept="37vLTw" id="5jb5jNBMQ08" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNBMPzk" resolve="controller" />
              </node>
              <node concept="liA8E" id="5jb5jNBMQ09" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNBJO$O" resolve="isSource" />
                <node concept="37vLTw" id="5jb5jNBMQ0a" role="37wK5m">
                  <ref role="3cqZAo" node="5jb5jNBJDja" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBJDjl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4O0ojQq1tYI" role="1B3o_S" />
    <node concept="3uibUv" id="4O0ojQq1tZF" role="EKbjA">
      <ref role="3uigEE" to="5lkm:4O0ojQpHEzY" resolve="PortSettingProvider" />
      <node concept="3uibUv" id="4O0ojQq1u07" role="11_B2D">
        <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
      <node concept="3uibUv" id="1iOpS24VCQx" role="11_B2D">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6tmlia_TEhu">
    <property role="TrG5h" value="InterfaceEndpointController" />
    <node concept="2tJIrI" id="6tmlia_TG1P" role="jymVt" />
    <node concept="Wx3nA" id="6tmliaAiupa" role="jymVt">
      <property role="TrG5h" value="INNER_BORDER_PADDING" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="6tmliaAiupd" role="1tU5fm" />
      <node concept="3cmrfG" id="6tmliaAiupe" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
      <node concept="3Tm6S6" id="6tmliaAiupc" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6tmliaAinbC" role="jymVt" />
    <node concept="312cEg" id="6tmlia_TG21" role="jymVt">
      <property role="TrG5h" value="myView" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tmlia_TG22" role="1B3o_S" />
      <node concept="3uibUv" id="6tmlia_Zpvr" role="1tU5fm">
        <ref role="3uigEE" to="tphl:6tmlia_XI2H" resolve="InterfaceEndpointView" />
      </node>
    </node>
    <node concept="312cEg" id="6tmliaAwbfr" role="jymVt">
      <property role="TrG5h" value="myComponentCell" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tmliaAvsfQ" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaAwaOn" role="1tU5fm">
        <ref role="3uigEE" node="6tmliaAvuGZ" resolve="InterfaceEndpointController.MyCell" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_TG2m" role="jymVt" />
    <node concept="3clFbW" id="6tmlia_TG2n" role="jymVt">
      <node concept="3cqZAl" id="6tmlia_TG2o" role="3clF45" />
      <node concept="3Tm1VV" id="6tmlia_TG2p" role="1B3o_S" />
      <node concept="3clFbS" id="6tmlia_TG2q" role="3clF47">
        <node concept="3clFbF" id="6tmliaAwdYp" role="3cqZAp">
          <node concept="37vLTI" id="6tmliaAwfEy" role="3clFbG">
            <node concept="2ShNRf" id="6tmliaAwgwS" role="37vLTx">
              <node concept="1pGfFk" id="6tmliaAwhjf" role="2ShVmc">
                <ref role="37wK5l" node="6tmliaAwjJ2" resolve="InterfaceEndpointController.MyCell" />
                <node concept="37vLTw" id="4y$DvIXmpJM" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIVSoMg" resolve="context" />
                </node>
                <node concept="37vLTw" id="6tmlia_TG2v" role="37wK5m">
                  <ref role="3cqZAo" node="6tmlia_TG2F" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6tmliaAwdYn" role="37vLTJ">
              <ref role="3cqZAo" node="6tmliaAwbfr" resolve="myComponentCell" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_TG2w" role="3cqZAp">
          <node concept="37vLTI" id="6tmlia_TG2x" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_TG2y" role="37vLTx">
              <ref role="3cqZAo" node="6tmlia_TG2H" resolve="endpoint" />
            </node>
            <node concept="37vLTw" id="6tmlia_TG2z" role="37vLTJ">
              <ref role="3cqZAo" node="6tmlia_TG21" resolve="myView" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIVSoMg" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4y$DvIXmpAK" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="6tmlia_TG2F" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="6tmlia_TG2G" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6tmlia_TG2H" role="3clF46">
        <property role="TrG5h" value="endpoint" />
        <node concept="3uibUv" id="6tmlia_ZoI6" role="1tU5fm">
          <ref role="3uigEE" to="tphl:6tmlia_XI2H" resolve="InterfaceEndpointView" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAwPqS" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAwO6e" role="jymVt">
      <property role="TrG5h" value="getComponentCell" />
      <node concept="3Tm1VV" id="6tmliaAwO6g" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaAwO6h" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="2AHcQZ" id="6tmliaAwO6i" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="6tmliaAwO6j" role="3clF47">
        <node concept="3clFbF" id="6tmliaAwQPm" role="3cqZAp">
          <node concept="37vLTw" id="6tmliaAwQPj" role="3clFbG">
            <ref role="3cqZAo" node="6tmliaAwbfr" resolve="myComponentCell" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmliaAwO6k" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAwZ98" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAwO6n" role="jymVt">
      <property role="TrG5h" value="synchronize" />
      <node concept="3Tm1VV" id="6tmliaAwO6p" role="1B3o_S" />
      <node concept="3cqZAl" id="6tmliaAwO6q" role="3clF45" />
      <node concept="3clFbS" id="6tmliaAwO6r" role="3clF47">
        <node concept="3clFbF" id="6tmliaAwReF" role="3cqZAp">
          <node concept="2OqwBi" id="6tmliaAwRQc" role="3clFbG">
            <node concept="37vLTw" id="6tmliaAwReE" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAwbfr" resolve="myComponentCell" />
            </node>
            <node concept="liA8E" id="6tmliaAwYG5" role="2OqNvi">
              <ref role="37wK5l" node="6tmlia_TG5$" resolve="synchronize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmliaAwO6s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAx1Xp" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAwO6A" role="jymVt">
      <property role="TrG5h" value="canStartMoveAt" />
      <node concept="3Tm1VV" id="6tmliaAwO6C" role="1B3o_S" />
      <node concept="10P_77" id="6tmliaAwO6D" role="3clF45" />
      <node concept="3clFbS" id="6tmliaAwO6H" role="3clF47">
        <node concept="3clFbF" id="4y$DvIVSY4a" role="3cqZAp">
          <node concept="3clFbT" id="4y$DvIVSY49" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmliaAwO6I" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="1iOpS24MDs$" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24MEyy" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="6tmliaAYhN5" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6tmliaAYhN4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmliaAYjsY" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6tmliaAYkLb" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBJQ_9" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBJSDt" role="jymVt">
      <property role="TrG5h" value="getPortCoordinates" />
      <node concept="3Tm1VV" id="5jb5jNBJSDv" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNBJSDw" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="5jb5jNBJSDx" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBJSDy" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJSDz" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNBJSD$" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="5jb5jNBJSD_" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJSDA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBJSDB" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="5jb5jNBJSDC" role="3clF47">
        <node concept="3clFbF" id="5jb5jNBKu_z" role="3cqZAp">
          <node concept="1rXfSq" id="5jb5jNBKu_$" role="3clFbG">
            <ref role="37wK5l" node="5jb5jNBK2tG" resolve="assertSelf" />
            <node concept="37vLTw" id="5jb5jNBKu__" role="37wK5m">
              <ref role="3cqZAo" node="5jb5jNBJSDx" resolve="port" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIVWFy2" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIVWFy4" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIVWFy5" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAwbfr" resolve="myComponentCell" />
            </node>
            <node concept="liA8E" id="4y$DvIVWFy6" role="2OqNvi">
              <ref role="37wK5l" node="6tmliaAw8sK" resolve="getPortCoordinates" />
              <node concept="37vLTw" id="1iOpS24MBvv" role="37wK5m">
                <ref role="3cqZAo" node="5jb5jNBJSD$" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBJSDD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBKAng" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBJSDG" role="jymVt">
      <property role="TrG5h" value="getPortBounds" />
      <node concept="3Tm1VV" id="5jb5jNBJSDH" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNBJSDI" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="2AHcQZ" id="5jb5jNBJSDJ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="5jb5jNBJSDK" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBJSDL" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJSDM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNBJSDN" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="5jb5jNBJSDO" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJSDP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNBJSDR" role="3clF47">
        <node concept="3clFbF" id="5jb5jNBKtNx" role="3cqZAp">
          <node concept="1rXfSq" id="5jb5jNBKtNy" role="3clFbG">
            <ref role="37wK5l" node="5jb5jNBK2tG" resolve="assertSelf" />
            <node concept="37vLTw" id="5jb5jNBKtNz" role="37wK5m">
              <ref role="3cqZAo" node="5jb5jNBJSDK" resolve="port" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jb5jNBKJH_" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNBKJHA" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNBKJHB" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAwbfr" resolve="myComponentCell" />
            </node>
            <node concept="liA8E" id="5jb5jNBKJHC" role="2OqNvi">
              <ref role="37wK5l" node="6tmliaB9v6B" resolve="getBounds" />
              <node concept="37vLTw" id="5jb5jNBKJHD" role="37wK5m">
                <ref role="3cqZAo" node="5jb5jNBJSDN" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBJSDS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBKEpR" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBKG4o" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3Tm1VV" id="5jb5jNBKG4q" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNBKG4r" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="2AHcQZ" id="5jb5jNBKG4s" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="5jb5jNBKG4t" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="5jb5jNBKG4v" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNBKG4w" role="3clF47">
        <node concept="3clFbF" id="1iOpS24MCS1" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24MCS2" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24MCS3" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAwbfr" resolve="myComponentCell" />
            </node>
            <node concept="liA8E" id="1iOpS24MCS4" role="2OqNvi">
              <ref role="37wK5l" node="6tmliaB9v6B" resolve="getBounds" />
              <node concept="37vLTw" id="5jb5jNBKJhT" role="37wK5m">
                <ref role="3cqZAo" node="5jb5jNBKG4t" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBKG4x" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBK$M7" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBJSDV" role="jymVt">
      <property role="TrG5h" value="isSource" />
      <node concept="3Tm1VV" id="5jb5jNBJSDW" role="1B3o_S" />
      <node concept="10P_77" id="5jb5jNBJSDX" role="3clF45" />
      <node concept="37vLTG" id="5jb5jNBJSDY" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBJSDZ" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBJSE0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNBJSE2" role="3clF47">
        <node concept="3clFbF" id="5jb5jNBKsYk" role="3cqZAp">
          <node concept="1rXfSq" id="5jb5jNBKsYi" role="3clFbG">
            <ref role="37wK5l" node="5jb5jNBK2tG" resolve="assertSelf" />
            <node concept="37vLTw" id="5jb5jNBKtsm" role="37wK5m">
              <ref role="3cqZAo" node="5jb5jNBJSDY" resolve="port" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jb5jNBJWSa" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNBJXJC" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNBJWS8" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAwbfr" resolve="myComponentCell" />
            </node>
            <node concept="2OwXpG" id="5jb5jNBJYD4" role="2OqNvi">
              <ref role="2Oxat5" node="4y$DvIVT5CJ" resolve="myIsSource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBJSE3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBJZ00" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBK2tG" role="jymVt">
      <property role="TrG5h" value="assertSelf" />
      <node concept="37vLTG" id="5jb5jNBK46Y" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5jb5jNBK46Z" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNBK470" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNBK2tJ" role="3clF47">
        <node concept="3clFbJ" id="5jb5jNBK5D3" role="3cqZAp">
          <node concept="17QLQc" id="5jb5jNBNuVW" role="3clFbw">
            <node concept="37vLTw" id="5jb5jNBK5GH" role="3uHU7B">
              <ref role="3cqZAo" node="5jb5jNBK46Y" resolve="port" />
            </node>
            <node concept="37vLTw" id="5jb5jNBK6d4" role="3uHU7w">
              <ref role="3cqZAo" node="6tmlia_TG21" resolve="myView" />
            </node>
          </node>
          <node concept="3clFbS" id="5jb5jNBK5D5" role="3clFbx">
            <node concept="YS8fn" id="5jb5jNBK6Ca" role="3cqZAp">
              <node concept="2ShNRf" id="5jb5jNBK6KK" role="YScLw">
                <node concept="1pGfFk" id="5jb5jNBKrZK" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="5jb5jNBKs60" role="37wK5m">
                    <property role="Xl_RC" value="invalid port" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5jb5jNBK0N8" role="1B3o_S" />
      <node concept="3cqZAl" id="5jb5jNBK2cQ" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1iOpS24MSJW" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24MKk6" role="jymVt">
      <property role="TrG5h" value="transformFormAt" />
      <node concept="3Tm1VV" id="1iOpS24MKk8" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24MKk9" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="1iOpS24MKka" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1iOpS24MKkj" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24MKkc" role="3clF46">
        <property role="TrG5h" value="originalForm" />
        <node concept="3uibUv" id="1iOpS24MKki" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24MKke" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="1iOpS24MKkf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iOpS24MKkg" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1iOpS24MKkh" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1iOpS24MKkk" role="3clF47">
        <node concept="3clFbF" id="1iOpS24MKkn" role="3cqZAp">
          <node concept="10Nm6u" id="1iOpS24MKkm" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24MKkl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24MVfi" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24MKko" role="jymVt">
      <property role="TrG5h" value="updateCellWithForm" />
      <node concept="3Tm1VV" id="1iOpS24MKkq" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24MKkr" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24MKks" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24MKku" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS24MKkv" role="3clF47">
        <node concept="3clFbF" id="1iOpS24MYrD" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24MZ1w" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24MYrC" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAwbfr" resolve="myComponentCell" />
            </node>
            <node concept="liA8E" id="1iOpS24MZNv" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setX(int):void" resolve="setX" />
              <node concept="2OqwBi" id="1iOpS24N0JW" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24N08U" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24MKks" resolve="position" />
                </node>
                <node concept="2OwXpG" id="1iOpS24N19r" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24N1vp" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24N1vq" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24N1vr" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAwbfr" resolve="myComponentCell" />
            </node>
            <node concept="liA8E" id="1iOpS24N1vs" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setY(int):void" resolve="setY" />
              <node concept="2OqwBi" id="1iOpS24N1vt" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24N1vu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24MKks" resolve="position" />
                </node>
                <node concept="2OwXpG" id="1iOpS24N2Nu" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24MKkw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IQSBTA" role="jymVt" />
    <node concept="3clFb_" id="38k27IQSD_C" role="jymVt">
      <property role="TrG5h" value="updateCellSelection" />
      <node concept="3Tm1VV" id="38k27IQSD_E" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IQSD_F" role="3clF45" />
      <node concept="37vLTG" id="38k27IQSD_G" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="38k27IQSD_H" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IQSD_I" role="3clF47">
        <node concept="3SKdUt" id="38k27IQSFkO" role="3cqZAp">
          <node concept="3SKdUq" id="38k27IQSFkP" role="3SKWNk">
            <property role="3SKdUp" value="do nothing" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IQSD_J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24MWHh" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24MKkx" role="jymVt">
      <property role="TrG5h" value="paintTrace" />
      <node concept="3Tm1VV" id="1iOpS24MKkz" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24MKk$" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24MKk_" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1iOpS24MKkA" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24MKkB" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24MKkD" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS24MKkE" role="3clF47">
        <node concept="3SKdUt" id="1iOpS24N2Z8" role="3cqZAp">
          <node concept="3SKdUq" id="1iOpS24N2Z9" role="3SKWNk">
            <property role="3SKdUp" value="do nothing" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24MKkF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24Jobj" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24JpoO" role="jymVt">
      <property role="TrG5h" value="translateForm" />
      <node concept="3Tm1VV" id="1iOpS24JpoQ" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24JpoX" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="1iOpS24MF5f" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24MGcQ" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24JpoS" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="1iOpS24JpoT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iOpS24JpoU" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="1iOpS24JpoV" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="1iOpS24JpoW" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1iOpS24JpoY" role="3clF47">
        <node concept="3cpWs8" id="1iOpS24JxrZ" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24Jxs0" role="3cpWs9">
            <property role="TrG5h" value="point" />
            <node concept="3uibUv" id="1iOpS24JxrS" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2ShNRf" id="1iOpS24Jxs1" role="33vP2m">
              <node concept="1pGfFk" id="1iOpS24Jxs2" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(java.awt.Point)" resolve="Point" />
                <node concept="37vLTw" id="1iOpS24MH0z" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24MF5f" resolve="position" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24Js2W" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24JwX$" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24Jxs6" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS24Jxs0" resolve="point" />
            </node>
            <node concept="liA8E" id="1iOpS24J_pC" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Point.translate(int,int):void" resolve="translate" />
              <node concept="37vLTw" id="1iOpS24J_tD" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS24JpoS" resolve="dx" />
              </node>
              <node concept="37vLTw" id="1iOpS24J_JO" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS24JpoU" resolve="dy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24JA0H" role="3cqZAp">
          <node concept="37vLTw" id="1iOpS24JA0F" role="3clFbG">
            <ref role="3cqZAo" node="1iOpS24Jxs0" resolve="point" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24JpoZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_TG4F" role="jymVt" />
    <node concept="312cEu" id="6tmliaAvuGZ" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyCell" />
      <node concept="2tJIrI" id="6tmlia_TG6r" role="jymVt" />
      <node concept="312cEg" id="4y$DvIVT5CJ" role="jymVt">
        <property role="TrG5h" value="myIsSource" />
        <node concept="3Tm6S6" id="4y$DvIVT4pd" role="1B3o_S" />
        <node concept="10P_77" id="4y$DvIVT5tC" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="4y$DvIVTmpM" role="jymVt">
        <property role="TrG5h" value="myEntryKind" />
        <node concept="3Tm6S6" id="4y$DvIVTld7" role="1B3o_S" />
        <node concept="3uibUv" id="4y$DvIVTo7c" role="1tU5fm">
          <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
        </node>
      </node>
      <node concept="312cEg" id="6tmlia_TG2a" role="jymVt">
        <property role="TrG5h" value="myNameText" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="6tmlia_TG2b" role="1B3o_S" />
        <node concept="3uibUv" id="6tmlia_TG2c" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~TextLine" resolve="TextLine" />
        </node>
        <node concept="2ShNRf" id="6tmlia_TG2d" role="33vP2m">
          <node concept="1pGfFk" id="6tmlia_TG2e" role="2ShVmc">
            <ref role="37wK5l" to="g51k:~TextLine.&lt;init&gt;(java.lang.String,jetbrains.mps.openapi.editor.style.Style,boolean)" resolve="TextLine" />
            <node concept="Xl_RD" id="6tmlia_TG2f" role="37wK5m">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="1rXfSq" id="6tmlia_TG2g" role="37wK5m">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
            </node>
            <node concept="3clFbT" id="6tmlia_TG2h" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6tmliaAwzeR" role="jymVt" />
      <node concept="3clFbW" id="6tmliaAwjJ2" role="jymVt">
        <node concept="3cqZAl" id="6tmliaAwjJ3" role="3clF45" />
        <node concept="3Tm6S6" id="4y$DvIVWyrx" role="1B3o_S" />
        <node concept="3clFbS" id="6tmliaAwjJ6" role="3clF47">
          <node concept="XkiVB" id="6tmliaAwjJ8" role="3cqZAp">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode)" resolve="EditorCell_Basic" />
            <node concept="37vLTw" id="6tmliaAwjJd" role="37wK5m">
              <ref role="3cqZAo" node="6tmliaAwjJ9" resolve="editorContext" />
            </node>
            <node concept="37vLTw" id="6tmliaAwjJh" role="37wK5m">
              <ref role="3cqZAo" node="6tmliaAwjJe" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6tmliaAwjJ9" role="3clF46">
          <property role="TrG5h" value="editorContext" />
          <node concept="3uibUv" id="6tmliaAwjJb" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
          </node>
          <node concept="2AHcQZ" id="6tmliaAwjJc" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="6tmliaAwjJe" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6tmliaAwjJg" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6tmliaAwlTo" role="jymVt" />
      <node concept="3clFb_" id="6tmliaAw8sK" role="jymVt">
        <property role="TrG5h" value="getPortCoordinates" />
        <node concept="3clFbS" id="6tmliaAw8sN" role="3clF47">
          <node concept="3clFbF" id="6tmliaAw9_f" role="3cqZAp">
            <node concept="2ShNRf" id="6tmliaAw9_h" role="3clFbG">
              <node concept="1pGfFk" id="6tmliaAw9_i" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                <node concept="3cpWs3" id="6tmliaAw9_j" role="37wK5m">
                  <node concept="1eOMI4" id="6tmliaAw9_k" role="3uHU7w">
                    <node concept="3K4zz7" id="6tmliaAw9_l" role="1eOMHV">
                      <node concept="37vLTw" id="6$FGuy5W49Z" role="3K4E3e">
                        <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myWidth" resolve="myWidth" />
                      </node>
                      <node concept="3cmrfG" id="6$FGuy5W4MA" role="3K4GZi">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="4y$DvIVThSM" role="3K4Cdx">
                        <ref role="3cqZAo" node="4y$DvIVT5CJ" resolve="myIsSource" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1iOpS24Mp1c" role="3uHU7B">
                    <node concept="37vLTw" id="1iOpS24Moo1" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS24MmC7" resolve="position" />
                    </node>
                    <node concept="2OwXpG" id="1iOpS24MpqI" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="6tmliaAw9_q" role="37wK5m">
                  <node concept="FJ1c_" id="6tmliaAw9_r" role="3uHU7w">
                    <node concept="3cmrfG" id="6tmliaAw9_s" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="37vLTw" id="6tmliaAw9_t" role="3uHU7B">
                      <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myHeight" resolve="myHeight" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1iOpS24MpZb" role="3uHU7B">
                    <node concept="37vLTw" id="1iOpS24MpZc" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS24MmC7" resolve="position" />
                    </node>
                    <node concept="2OwXpG" id="1iOpS24MqTW" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="4y$DvIVWyDU" role="1B3o_S" />
        <node concept="3uibUv" id="6tmliaAw8eM" role="3clF45">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="37vLTG" id="1iOpS24MmC7" role="3clF46">
          <property role="TrG5h" value="position" />
          <node concept="3uibUv" id="1iOpS24MmC6" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4y$DvIVW$Gw" role="jymVt" />
      <node concept="3clFb_" id="6tmliaB9v6B" role="jymVt">
        <property role="TrG5h" value="getBounds" />
        <node concept="37vLTG" id="1iOpS24Mrdu" role="3clF46">
          <property role="TrG5h" value="position" />
          <node concept="3uibUv" id="1iOpS24Mrdv" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
        <node concept="3Tm6S6" id="6tmliaB9v6C" role="1B3o_S" />
        <node concept="3uibUv" id="6tmliaB9v6D" role="3clF45">
          <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
        </node>
        <node concept="3clFbS" id="6tmliaB9uVa" role="3clF47">
          <node concept="3cpWs6" id="6tmliaB9v0P" role="3cqZAp">
            <node concept="2ShNRf" id="6tmliaB9v0Q" role="3cqZAk">
              <node concept="1pGfFk" id="6tmliaB9v0R" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                <node concept="2OqwBi" id="1iOpS24MwkN" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS24Mv3y" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24Mrdu" resolve="position" />
                  </node>
                  <node concept="2OwXpG" id="1iOpS24MwIn" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1iOpS24MzGF" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS24MyKR" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24Mrdu" resolve="position" />
                  </node>
                  <node concept="2OwXpG" id="1iOpS24M$6i" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                  </node>
                </node>
                <node concept="37vLTw" id="6tmliaB9v0U" role="37wK5m">
                  <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myWidth" resolve="myWidth" />
                </node>
                <node concept="37vLTw" id="6tmliaB9v0V" role="37wK5m">
                  <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myHeight" resolve="myHeight" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4y$DvIXrQ7u" role="jymVt" />
      <node concept="3clFb_" id="4y$DvIXrQdX" role="jymVt">
        <property role="TrG5h" value="getDimension" />
        <node concept="3Tm6S6" id="4y$DvIXrSiM" role="1B3o_S" />
        <node concept="3uibUv" id="4y$DvIXrQdZ" role="3clF45">
          <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXrQe0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4y$DvIXrQe1" role="3clF47">
          <node concept="3cpWs8" id="4y$DvIXrQe2" role="3cqZAp">
            <node concept="3cpWsn" id="4y$DvIXrQe3" role="3cpWs9">
              <property role="TrG5h" value="lineSize" />
              <node concept="10Oyi0" id="4y$DvIXrQe4" role="1tU5fm" />
              <node concept="1rXfSq" id="4y$DvIXrQe5" role="33vP2m">
                <ref role="37wK5l" node="6tmlia_TG6s" resolve="getLineSize" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4y$DvIXrQe6" role="3cqZAp">
            <node concept="2ShNRf" id="4y$DvIXrQe7" role="3clFbG">
              <node concept="1pGfFk" id="4y$DvIXrQe8" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                <node concept="3cpWs3" id="4y$DvIXrQe9" role="37wK5m">
                  <node concept="2OqwBi" id="4y$DvIXrQea" role="3uHU7w">
                    <node concept="37vLTw" id="4y$DvIXrQeb" role="2Oq$k0">
                      <ref role="3cqZAo" node="6tmlia_TG2a" resolve="myNameText" />
                    </node>
                    <node concept="liA8E" id="4y$DvIXrQec" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="4y$DvIXrQed" role="3uHU7B">
                    <node concept="37vLTw" id="4y$DvIXrQee" role="3uHU7w">
                      <ref role="3cqZAo" node="6tmliaAiupa" resolve="INNER_BORDER_PADDING" />
                    </node>
                    <node concept="FJ1c_" id="4y$DvIXrQef" role="3uHU7B">
                      <node concept="37vLTw" id="4y$DvIXrQeg" role="3uHU7B">
                        <ref role="3cqZAo" node="4y$DvIXrQe3" resolve="lineSize" />
                      </node>
                      <node concept="3cmrfG" id="4y$DvIXrQeh" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4y$DvIXrQei" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIXrQe3" resolve="lineSize" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6$FGuy61cYR" role="jymVt" />
      <node concept="3clFb_" id="6$FGuy61ewA" role="jymVt">
        <property role="TrG5h" value="paintSelectionIfRequired" />
        <node concept="3Tmbuc" id="6$FGuy61ewB" role="1B3o_S" />
        <node concept="3cqZAl" id="6$FGuy61ewD" role="3clF45" />
        <node concept="37vLTG" id="6$FGuy61ewE" role="3clF46">
          <property role="TrG5h" value="g" />
          <node concept="3uibUv" id="6$FGuy61ewF" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
        <node concept="37vLTG" id="6$FGuy61ewG" role="3clF46">
          <property role="TrG5h" value="parentSettings" />
          <node concept="3uibUv" id="6$FGuy61ewH" role="1tU5fm">
            <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
          </node>
        </node>
        <node concept="3clFbS" id="6$FGuy61ewI" role="3clF47">
          <node concept="3SKdUt" id="6$FGuy61hLD" role="3cqZAp">
            <node concept="3SKdUq" id="6$FGuy61hLE" role="3SKWNk">
              <property role="3SKdUp" value="do nothing" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6$FGuy61ewJ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6tmliaAw5N8" role="jymVt" />
      <node concept="3clFb_" id="6tmlia_TG4G" role="jymVt">
        <property role="TrG5h" value="paintContent" />
        <node concept="3Tmbuc" id="6tmlia_TG4H" role="1B3o_S" />
        <node concept="3cqZAl" id="6tmlia_TG4I" role="3clF45" />
        <node concept="37vLTG" id="6tmlia_TG4J" role="3clF46">
          <property role="TrG5h" value="graphics" />
          <node concept="3uibUv" id="6tmlia_TG4K" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
        <node concept="37vLTG" id="6tmlia_TG4L" role="3clF46">
          <property role="TrG5h" value="settings" />
          <node concept="3uibUv" id="6tmlia_TG4M" role="1tU5fm">
            <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
          </node>
        </node>
        <node concept="3clFbS" id="6tmlia_TG4N" role="3clF47">
          <node concept="3cpWs8" id="6tmlia_WbYo" role="3cqZAp">
            <node concept="3cpWsn" id="6tmlia_WbYp" role="3cpWs9">
              <property role="TrG5h" value="g" />
              <node concept="3uibUv" id="6tmlia_WbYn" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
              </node>
              <node concept="10QFUN" id="6tmlia_WbYq" role="33vP2m">
                <node concept="3uibUv" id="6tmlia_WbYr" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="2OqwBi" id="6tmlia_Wi1i" role="10QFUP">
                  <node concept="37vLTw" id="6tmlia_WbYs" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmlia_TG4J" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="6tmlia_WiCA" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.create():java.awt.Graphics" resolve="create" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6tmlia_WhvQ" role="3cqZAp" />
          <node concept="3cpWs8" id="6tmlia_VUCR" role="3cqZAp">
            <node concept="3cpWsn" id="6tmlia_VUCS" role="3cpWs9">
              <property role="TrG5h" value="lineSize" />
              <node concept="10Oyi0" id="6tmlia_VUCQ" role="1tU5fm" />
              <node concept="1rXfSq" id="6tmlia_VUCT" role="33vP2m">
                <ref role="37wK5l" node="6tmlia_TG6s" resolve="getLineSize" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6tmlia_VZTB" role="3cqZAp">
            <node concept="3cpWsn" id="6tmlia_VZTC" role="3cpWs9">
              <property role="TrG5h" value="textWidth" />
              <node concept="10Oyi0" id="6tmlia_VZT_" role="1tU5fm" />
              <node concept="2OqwBi" id="6tmlia_VZTD" role="33vP2m">
                <node concept="37vLTw" id="6tmlia_VZTE" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmlia_TG2a" resolve="myNameText" />
                </node>
                <node concept="liA8E" id="6tmlia_VZTF" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6tmlia_VQyq" role="3cqZAp">
            <node concept="3cpWsn" id="6tmlia_VQyr" role="3cpWs9">
              <property role="TrG5h" value="shape" />
              <node concept="3uibUv" id="6tmlia_VQys" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
              </node>
              <node concept="3K4zz7" id="6tmlia_VSd3" role="33vP2m">
                <node concept="1rXfSq" id="6tmliaAvQAT" role="3K4E3e">
                  <ref role="37wK5l" node="6tmlia_VeOh" resolve="getInputShape" />
                  <node concept="37vLTw" id="6tmliaAv$Kd" role="37wK5m">
                    <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myX" resolve="myX" />
                  </node>
                  <node concept="37vLTw" id="6tmliaAv$Ke" role="37wK5m">
                    <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myY" resolve="myY" />
                  </node>
                  <node concept="37vLTw" id="6tmliaAv$Kf" role="37wK5m">
                    <ref role="3cqZAo" node="6tmlia_VUCS" resolve="lineSize" />
                  </node>
                  <node concept="37vLTw" id="6tmliaAv$Kg" role="37wK5m">
                    <ref role="3cqZAo" node="6tmlia_VZTC" resolve="textWidth" />
                  </node>
                </node>
                <node concept="1rXfSq" id="6tmlia_W3sT" role="3K4GZi">
                  <ref role="37wK5l" node="6tmlia_VePR" resolve="getOutputShape" />
                  <node concept="37vLTw" id="6tmlia_W3sU" role="37wK5m">
                    <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myX" resolve="myX" />
                  </node>
                  <node concept="37vLTw" id="6tmlia_W3sV" role="37wK5m">
                    <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myY" resolve="myY" />
                  </node>
                  <node concept="37vLTw" id="6tmlia_W3sW" role="37wK5m">
                    <ref role="3cqZAo" node="6tmlia_VUCS" resolve="lineSize" />
                  </node>
                  <node concept="37vLTw" id="6tmlia_W3sX" role="37wK5m">
                    <ref role="3cqZAo" node="6tmlia_VZTC" resolve="textWidth" />
                  </node>
                </node>
                <node concept="37vLTw" id="4y$DvIVTiFT" role="3K4Cdx">
                  <ref role="3cqZAo" node="4y$DvIVT5CJ" resolve="myIsSource" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6tmlia_TG4O" role="3cqZAp">
            <node concept="3cpWsn" id="6tmlia_TG4P" role="3cpWs9">
              <property role="TrG5h" value="myTextX" />
              <node concept="10Oyi0" id="6tmlia_TG4Q" role="1tU5fm" />
              <node concept="3cpWs3" id="6tmlia_TG4R" role="33vP2m">
                <node concept="37vLTw" id="6tmlia_TG4V" role="3uHU7B">
                  <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myX" resolve="myX" />
                </node>
                <node concept="1eOMI4" id="6tmlia_W6BW" role="3uHU7w">
                  <node concept="3K4zz7" id="6tmlia_W8_P" role="1eOMHV">
                    <node concept="37vLTw" id="6$FGuy5WSLl" role="3K4E3e">
                      <ref role="3cqZAo" node="6tmliaAiupa" resolve="INNER_BORDER_PADDING" />
                    </node>
                    <node concept="FJ1c_" id="6$FGuy5WSLi" role="3K4GZi">
                      <node concept="3cmrfG" id="6$FGuy5WSLj" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="37vLTw" id="6$FGuy5WSLk" role="3uHU7B">
                        <ref role="3cqZAo" node="6tmlia_VUCS" resolve="lineSize" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4y$DvIVTjvo" role="3K4Cdx">
                      <ref role="3cqZAo" node="4y$DvIVT5CJ" resolve="myIsSource" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6tmlia_WgEl" role="3cqZAp" />
          <node concept="3clFbF" id="6tmlia_Xkp0" role="3cqZAp">
            <node concept="2OqwBi" id="6tmlia_XkTZ" role="3clFbG">
              <node concept="37vLTw" id="6tmlia_XkoY" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_WbYp" resolve="g" />
              </node>
              <node concept="liA8E" id="6tmlia_Xmko" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint):void" resolve="setPaint" />
                <node concept="2YIFZM" id="6tmlia_Xn5l" role="37wK5m">
                  <ref role="1Pybhc" to="ubo9:2JGKyjit8pv" resolve="DiagramColors" />
                  <ref role="37wK5l" to="ubo9:3diMC1cjnxP" resolve="createGradientPaint" />
                  <node concept="2YIFZM" id="7pEplJkt7xE" role="37wK5m">
                    <ref role="37wK5l" to="ubo9:7pEplJksrRt" resolve="getColorFor" />
                    <ref role="1Pybhc" to="ubo9:2JGKyjit8pv" resolve="DiagramColors" />
                    <node concept="37vLTw" id="7pEplJkt7I8" role="37wK5m">
                      <ref role="3cqZAo" node="4y$DvIVTmpM" resolve="myEntryKind" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="1iOpS24M_GR" role="37wK5m">
                    <node concept="1pGfFk" id="1iOpS24M_GS" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                      <node concept="37vLTw" id="1iOpS24MAsW" role="37wK5m">
                        <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myX" resolve="myX" />
                      </node>
                      <node concept="37vLTw" id="1iOpS24MB6D" role="37wK5m">
                        <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myY" resolve="myY" />
                      </node>
                      <node concept="37vLTw" id="1iOpS24M_GZ" role="37wK5m">
                        <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myWidth" resolve="myWidth" />
                      </node>
                      <node concept="37vLTw" id="1iOpS24M_H0" role="37wK5m">
                        <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myHeight" resolve="myHeight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6tmlia_Xagm" role="3cqZAp">
            <node concept="2OqwBi" id="6tmlia_XaJO" role="3clFbG">
              <node concept="37vLTw" id="6tmlia_Xagk" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_WbYp" resolve="g" />
              </node>
              <node concept="liA8E" id="6tmlia_XcaC" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
                <node concept="37vLTw" id="6tmlia_XchQ" role="37wK5m">
                  <ref role="3cqZAo" node="6tmlia_VQyr" resolve="shape" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6tmlia_X4hZ" role="3cqZAp">
            <node concept="2OqwBi" id="6tmlia_X4K4" role="3clFbG">
              <node concept="37vLTw" id="6tmlia_X4hX" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_WbYp" resolve="g" />
              </node>
              <node concept="liA8E" id="6tmlia_X69f" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
                <node concept="10M0yZ" id="6tmlia_X6iV" role="37wK5m">
                  <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                  <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6tmlia_TG4W" role="3cqZAp">
            <node concept="2OqwBi" id="6tmlia_TG4X" role="3clFbG">
              <node concept="37vLTw" id="6tmlia_TG4Y" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_TG2a" resolve="myNameText" />
              </node>
              <node concept="liA8E" id="6tmlia_TG4Z" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~TextLine.paint(java.awt.Graphics,int,int):void" resolve="paint" />
                <node concept="37vLTw" id="6tmlia_TG50" role="37wK5m">
                  <ref role="3cqZAo" node="6tmlia_TG4J" resolve="graphics" />
                </node>
                <node concept="37vLTw" id="6tmlia_TG57" role="37wK5m">
                  <ref role="3cqZAo" node="6tmlia_TG4P" resolve="myTextX" />
                </node>
                <node concept="37vLTw" id="6tmlia_TG58" role="37wK5m">
                  <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myY" resolve="myY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6tmlia_Weuq" role="3cqZAp">
            <node concept="2OqwBi" id="6tmlia_WeWn" role="3clFbG">
              <node concept="37vLTw" id="6tmlia_Weuo" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_WbYp" resolve="g" />
              </node>
              <node concept="liA8E" id="6tmlia_Wfgi" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
                <node concept="37vLTw" id="6tmlia_Wfnn" role="37wK5m">
                  <ref role="3cqZAo" node="6tmlia_VQyr" resolve="shape" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6tmlia_TG5q" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6tmlia_TG5r" role="jymVt" />
      <node concept="3clFb_" id="6tmlia_TG5s" role="jymVt">
        <property role="TrG5h" value="canBeSynchronized" />
        <node concept="3Tm1VV" id="6tmlia_TG5t" role="1B3o_S" />
        <node concept="10P_77" id="6tmlia_TG5u" role="3clF45" />
        <node concept="3clFbS" id="6tmlia_TG5v" role="3clF47">
          <node concept="3clFbF" id="6tmlia_TG5w" role="3cqZAp">
            <node concept="3clFbT" id="6tmlia_TG5x" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6tmlia_TG5y" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6tmlia_Ve9D" role="jymVt" />
      <node concept="3clFb_" id="6tmlia_TG5$" role="jymVt">
        <property role="TrG5h" value="synchronize" />
        <node concept="3Tm1VV" id="6tmlia_TG5_" role="1B3o_S" />
        <node concept="3cqZAl" id="6tmlia_TG5A" role="3clF45" />
        <node concept="3clFbS" id="6tmlia_TG5B" role="3clF47">
          <node concept="3cpWs8" id="1iOpS25Bic2" role="3cqZAp">
            <node concept="3cpWsn" id="1iOpS25Bic5" role="3cpWs9">
              <property role="TrG5h" value="lineSize" />
              <node concept="10Oyi0" id="1iOpS25Bic0" role="1tU5fm" />
              <node concept="1rXfSq" id="1iOpS25BiyB" role="33vP2m">
                <ref role="37wK5l" node="6tmlia_TG6s" resolve="getLineSize" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1iOpS25BhWz" role="3cqZAp" />
          <node concept="3clFbF" id="4y$DvIVT7m_" role="3cqZAp">
            <node concept="37vLTI" id="4y$DvIVT8OC" role="3clFbG">
              <node concept="2OqwBi" id="4y$DvIVT9ZB" role="37vLTx">
                <node concept="37vLTw" id="4y$DvIVT9yE" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmlia_TG21" resolve="myView" />
                </node>
                <node concept="liA8E" id="4y$DvIVTgF1" role="2OqNvi">
                  <ref role="37wK5l" to="tphl:5FPxgJnz8w3" resolve="isSource" />
                </node>
              </node>
              <node concept="37vLTw" id="4y$DvIVT7mz" role="37vLTJ">
                <ref role="3cqZAo" node="4y$DvIVT5CJ" resolve="myIsSource" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4y$DvIVToQ5" role="3cqZAp">
            <node concept="37vLTI" id="4y$DvIVTrQf" role="3clFbG">
              <node concept="2OqwBi" id="4y$DvIVTsOw" role="37vLTx">
                <node concept="37vLTw" id="4y$DvIVTswz" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmlia_TG21" resolve="myView" />
                </node>
                <node concept="liA8E" id="4y$DvIVTz$Q" role="2OqNvi">
                  <ref role="37wK5l" to="tphl:5FPxgJnz8Ag" resolve="getKind" />
                </node>
              </node>
              <node concept="37vLTw" id="4y$DvIVToQ3" role="37vLTJ">
                <ref role="3cqZAo" node="4y$DvIVTmpM" resolve="myEntryKind" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6tmlia_TG5H" role="3cqZAp">
            <node concept="2OqwBi" id="6tmlia_TG5I" role="3clFbG">
              <node concept="37vLTw" id="6tmlia_TG5J" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_TG2a" resolve="myNameText" />
              </node>
              <node concept="liA8E" id="6tmlia_TG5K" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~TextLine.setText(java.lang.String):void" resolve="setText" />
                <node concept="2OqwBi" id="6tmlia_TG5L" role="37wK5m">
                  <node concept="37vLTw" id="6tmlia_TG5M" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmlia_TG21" resolve="myView" />
                  </node>
                  <node concept="liA8E" id="6tmlia_TG5N" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:6tmlia_XSf0" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6tmlia_TG5T" role="3cqZAp">
            <node concept="2OqwBi" id="6tmlia_TG5U" role="3clFbG">
              <node concept="37vLTw" id="6tmlia_TG5V" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_TG2a" resolve="myNameText" />
              </node>
              <node concept="liA8E" id="6tmlia_TG5W" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~TextLine.relayout():void" resolve="relayout" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6tmlia_VDhv" role="3cqZAp" />
          <node concept="3clFbF" id="6tmlia_VFXq" role="3cqZAp">
            <node concept="1rXfSq" id="6tmlia_VFXo" role="3clFbG">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setWidth(int):void" resolve="setWidth" />
              <node concept="3cpWs3" id="6tmlia_VJiS" role="37wK5m">
                <node concept="2OqwBi" id="6tmlia_VMjC" role="3uHU7w">
                  <node concept="37vLTw" id="6tmlia_VJNv" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmlia_TG2a" resolve="myNameText" />
                  </node>
                  <node concept="liA8E" id="6tmlia_VMTS" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
                  </node>
                </node>
                <node concept="3cpWs3" id="6tmliaAj8eW" role="3uHU7B">
                  <node concept="37vLTw" id="6tmliaAj8ui" role="3uHU7w">
                    <ref role="3cqZAo" node="6tmliaAiupa" resolve="INNER_BORDER_PADDING" />
                  </node>
                  <node concept="FJ1c_" id="6tmlia_VHqS" role="3uHU7B">
                    <node concept="37vLTw" id="6tmlia_VGGO" role="3uHU7B">
                      <ref role="3cqZAo" node="1iOpS25Bic5" resolve="lineSize" />
                    </node>
                    <node concept="3cmrfG" id="6tmlia_VHuf" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6tmlia_VDuD" role="3cqZAp">
            <node concept="1rXfSq" id="6tmlia_VDuE" role="3clFbG">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setHeight(int):void" resolve="setHeight" />
              <node concept="37vLTw" id="6tmlia_VEBZ" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS25Bic5" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6tmlia_TG6e" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6tmliaAvKaX" role="jymVt" />
      <node concept="3clFb_" id="6tmlia_TG6s" role="jymVt">
        <property role="TrG5h" value="getLineSize" />
        <node concept="3Tm6S6" id="6tmlia_TG6t" role="1B3o_S" />
        <node concept="10Oyi0" id="6tmlia_TG6u" role="3clF45" />
        <node concept="3clFbS" id="6tmlia_TG6v" role="3clF47">
          <node concept="3cpWs6" id="6tmlia_TG6w" role="3cqZAp">
            <node concept="2YIFZM" id="7pEplJkse8N" role="3cqZAk">
              <ref role="1Pybhc" to="rvgs:1Oxt8dqZWeT" resolve="LayoutUtil" />
              <ref role="37wK5l" to="rvgs:7qPnRGFzb_r" resolve="getLineSize" />
              <node concept="1rXfSq" id="6tmlia_TG6y" role="37wK5m">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4y$DvIVWxqe" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaAvwDW" role="1zkMxy">
        <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
      </node>
      <node concept="3uibUv" id="6tmliaAvxpP" role="EKbjA">
        <ref role="3uigEE" to="g51k:~SynchronizeableEditorCell" resolve="SynchronizeableEditorCell" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_VePQ" role="jymVt" />
    <node concept="2YIFZL" id="6tmlia_VeOh" role="jymVt">
      <property role="TrG5h" value="getInputShape" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="6tmlia_ViTg" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6tmlia_Vj$1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmlia_VjHA" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6tmlia_Vkon" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmlia_Vkzo" role="3clF46">
        <property role="TrG5h" value="lineSize" />
        <node concept="10Oyi0" id="6tmlia_Vleb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmlia_VlAT" role="3clF46">
        <property role="TrG5h" value="textWidth" />
        <node concept="10Oyi0" id="6tmlia_VmhI" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6tmlia_VeOi" role="3clF47">
        <node concept="3cpWs8" id="6tmlia_VeOj" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeOk" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="6tmlia_VeOl" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="6tmlia_VeOm" role="33vP2m">
              <node concept="1pGfFk" id="6tmlia_VeOn" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_VeOo" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeOp" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10P55v" id="6tmlia_VeOq" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmlia_VnRn" role="33vP2m">
              <node concept="FJ1c_" id="6tmlia_VpmC" role="3uHU7w">
                <node concept="3cmrfG" id="6tmlia_VppV" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="6tmlia_Vohq" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmlia_Vkzo" resolve="lineSize" />
                </node>
              </node>
              <node concept="3cpWs3" id="6tmliaAix9o" role="3uHU7B">
                <node concept="37vLTw" id="6tmliaAixOM" role="3uHU7w">
                  <ref role="3cqZAo" node="6tmliaAiupa" resolve="INNER_BORDER_PADDING" />
                </node>
                <node concept="37vLTw" id="6tmlia_VmW0" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmlia_VlAT" resolve="textWidth" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_VeOu" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeOv" role="3cpWs9">
            <property role="TrG5h" value="height" />
            <node concept="10P55v" id="6tmlia_VeOw" role="1tU5fm" />
            <node concept="37vLTw" id="6tmlia_VqcH" role="33vP2m">
              <ref role="3cqZAo" node="6tmlia_Vkzo" resolve="lineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_VeOK" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeOL" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="6tmlia_VeOM" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmlia_VeON" role="33vP2m">
              <node concept="37vLTw" id="6tmlia_VeOO" role="3uHU7w">
                <ref role="3cqZAo" node="6tmlia_VeOp" resolve="width" />
              </node>
              <node concept="37vLTw" id="6tmlia_VrcU" role="3uHU7B">
                <ref role="3cqZAo" node="6tmlia_ViTg" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_VeOQ" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeOR" role="3cpWs9">
            <property role="TrG5h" value="y2" />
            <node concept="10P55v" id="6tmlia_VeOS" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmlia_VeOT" role="33vP2m">
              <node concept="37vLTw" id="6tmlia_VeOU" role="3uHU7w">
                <ref role="3cqZAo" node="6tmlia_VeOv" resolve="height" />
              </node>
              <node concept="37vLTw" id="6tmlia_VrMx" role="3uHU7B">
                <ref role="3cqZAo" node="6tmlia_VjHA" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_VeOW" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeOX" role="3cpWs9">
            <property role="TrG5h" value="x3" />
            <node concept="10P55v" id="6tmlia_VeOY" role="1tU5fm" />
            <node concept="3cpWsd" id="6tmlia_VeOZ" role="33vP2m">
              <node concept="3cpWs3" id="6tmlia_VeP0" role="3uHU7B">
                <node concept="37vLTw" id="6tmlia_VrPO" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmlia_ViTg" resolve="x" />
                </node>
                <node concept="37vLTw" id="6tmlia_VeP2" role="3uHU7w">
                  <ref role="3cqZAo" node="6tmlia_VeOp" resolve="width" />
                </node>
              </node>
              <node concept="FJ1c_" id="6tmlia_VeP3" role="3uHU7w">
                <node concept="3cmrfG" id="6tmlia_VeP4" role="3uHU7w">
                  <property role="3cmrfH" value="4" />
                </node>
                <node concept="37vLTw" id="6tmlia_VeP5" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmlia_VeOv" resolve="height" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_VeP6" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeP7" role="3cpWs9">
            <property role="TrG5h" value="y3" />
            <node concept="10P55v" id="6tmlia_VeP8" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmlia_VeP9" role="33vP2m">
              <node concept="FJ1c_" id="6tmlia_VePa" role="3uHU7w">
                <node concept="3cmrfG" id="6tmlia_VePb" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="6tmlia_VePc" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmlia_VeOv" resolve="height" />
                </node>
              </node>
              <node concept="37vLTw" id="6tmlia_VrT7" role="3uHU7B">
                <ref role="3cqZAo" node="6tmlia_VjHA" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VePe" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VePf" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VePg" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VeOk" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VePh" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(double,double):void" resolve="moveTo" />
              <node concept="37vLTw" id="6tmlia_VssV" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_ViTg" resolve="x" />
              </node>
              <node concept="37vLTw" id="6tmlia_VePj" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeOR" resolve="y2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VePk" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VePl" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VePm" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VeOk" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VePn" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="6tmlia_VePo" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeOX" resolve="x3" />
              </node>
              <node concept="37vLTw" id="6tmlia_VePp" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeOR" resolve="y2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VePq" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VePr" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VePs" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VeOk" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VePt" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="6tmlia_VePu" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeOL" resolve="x2" />
              </node>
              <node concept="37vLTw" id="6tmlia_VePv" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeP7" resolve="y3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VePw" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VePx" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VePy" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VeOk" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VePz" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="6tmlia_VeP$" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeOX" resolve="x3" />
              </node>
              <node concept="37vLTw" id="6tmlia_Vth3" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VjHA" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VePA" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VePB" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VePC" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VeOk" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VePD" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float):void" resolve="lineTo" />
              <node concept="37vLTw" id="6tmlia_VsHF" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_ViTg" resolve="x" />
              </node>
              <node concept="37vLTw" id="6tmlia_VsSU" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VjHA" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VePG" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VePH" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VePI" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VeOk" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VePJ" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath():void" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6tmlia_VePK" role="3cqZAp">
          <node concept="37vLTw" id="6tmlia_VePL" role="3cqZAk">
            <ref role="3cqZAo" node="6tmlia_VeOk" resolve="shape" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6tmlia_Vgkh" role="1B3o_S" />
      <node concept="3uibUv" id="6tmlia_VePN" role="3clF45">
        <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAvtHu" role="jymVt" />
    <node concept="2YIFZL" id="6tmlia_VePR" role="jymVt">
      <property role="TrG5h" value="getOutputShape" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6tmlia_VePS" role="3clF47">
        <node concept="3cpWs8" id="6tmlia_VePT" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VePU" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="6tmlia_VePV" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="6tmlia_VePW" role="33vP2m">
              <node concept="1pGfFk" id="6tmlia_VePX" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_Vua8" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_Vua9" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10P55v" id="6tmlia_Vuaa" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmlia_Vuab" role="33vP2m">
              <node concept="FJ1c_" id="6tmlia_Vuac" role="3uHU7w">
                <node concept="3cmrfG" id="6tmlia_Vuad" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="6tmlia_Vuae" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmlia_VtuO" resolve="lineSize" />
                </node>
              </node>
              <node concept="3cpWs3" id="6tmliaAisrj" role="3uHU7B">
                <node concept="37vLTw" id="6tmliaAivFJ" role="3uHU7w">
                  <ref role="3cqZAo" node="6tmliaAiupa" resolve="INNER_BORDER_PADDING" />
                </node>
                <node concept="37vLTw" id="6tmlia_Vuaf" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmlia_VtuQ" resolve="textWidth" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_Vuag" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_Vuah" role="3cpWs9">
            <property role="TrG5h" value="height" />
            <node concept="10P55v" id="6tmlia_Vuai" role="1tU5fm" />
            <node concept="37vLTw" id="6tmlia_Vuaj" role="33vP2m">
              <ref role="3cqZAo" node="6tmlia_VtuO" resolve="lineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_VeQm" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeQn" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="6tmlia_VeQo" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmlia_VeQp" role="33vP2m">
              <node concept="37vLTw" id="6tmlia_VeQq" role="3uHU7w">
                <ref role="3cqZAo" node="6tmlia_Vua9" resolve="width" />
              </node>
              <node concept="37vLTw" id="6tmlia_VeQr" role="3uHU7B">
                <ref role="3cqZAo" node="6tmlia_VtuK" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_VeQs" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeQt" role="3cpWs9">
            <property role="TrG5h" value="y2" />
            <node concept="10P55v" id="6tmlia_VeQu" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmlia_VeQv" role="33vP2m">
              <node concept="37vLTw" id="6tmlia_VuX_" role="3uHU7w">
                <ref role="3cqZAo" node="6tmlia_Vuah" resolve="height" />
              </node>
              <node concept="37vLTw" id="6tmlia_VeQx" role="3uHU7B">
                <ref role="3cqZAo" node="6tmlia_VtuM" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_VeQy" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeQz" role="3cpWs9">
            <property role="TrG5h" value="x3" />
            <node concept="10P55v" id="6tmlia_VeQ$" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmlia_VeQ_" role="33vP2m">
              <node concept="37vLTw" id="6tmlia_VeQA" role="3uHU7B">
                <ref role="3cqZAo" node="6tmlia_VtuK" resolve="x" />
              </node>
              <node concept="FJ1c_" id="6tmlia_VeQB" role="3uHU7w">
                <node concept="3cmrfG" id="6tmlia_VeQC" role="3uHU7w">
                  <property role="3cmrfH" value="4" />
                </node>
                <node concept="37vLTw" id="6tmlia_VeQD" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmlia_Vuah" resolve="height" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmlia_VeQE" role="3cqZAp">
          <node concept="3cpWsn" id="6tmlia_VeQF" role="3cpWs9">
            <property role="TrG5h" value="y3" />
            <node concept="10P55v" id="6tmlia_VeQG" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmlia_VeQH" role="33vP2m">
              <node concept="FJ1c_" id="6tmlia_VeQI" role="3uHU7w">
                <node concept="3cmrfG" id="6tmlia_VeQJ" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="6tmlia_VeQK" role="3uHU7B">
                  <ref role="3cqZAo" node="6tmlia_Vuah" resolve="height" />
                </node>
              </node>
              <node concept="37vLTw" id="6tmlia_VeQL" role="3uHU7B">
                <ref role="3cqZAo" node="6tmlia_VtuM" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VeQM" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VeQN" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VeQO" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VePU" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VeQP" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(double,double):void" resolve="moveTo" />
              <node concept="37vLTw" id="6tmlia_VeQQ" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VtuK" resolve="x" />
              </node>
              <node concept="37vLTw" id="6tmlia_VeQR" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeQF" resolve="y3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VeQS" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VeQT" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VeQU" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VePU" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VeQV" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="6tmlia_VeQW" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeQz" resolve="x3" />
              </node>
              <node concept="37vLTw" id="6tmlia_VeQX" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeQt" resolve="y2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VeQY" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VeQZ" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VeR0" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VePU" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VeR1" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="6tmlia_VeR2" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeQn" resolve="x2" />
              </node>
              <node concept="37vLTw" id="6tmlia_VeR3" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeQt" resolve="y2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VeR4" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VeR5" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VeR6" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VePU" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VeR7" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="6tmlia_VeR8" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeQn" resolve="x2" />
              </node>
              <node concept="37vLTw" id="6tmlia_VeR9" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VtuM" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VeRa" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VeRb" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VeRc" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VePU" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VeRd" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="6tmlia_VeRe" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VeQz" resolve="x3" />
              </node>
              <node concept="37vLTw" id="6tmlia_VeRf" role="37wK5m">
                <ref role="3cqZAo" node="6tmlia_VtuM" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmlia_VeRg" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_VeRh" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_VeRi" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmlia_VePU" resolve="shape" />
            </node>
            <node concept="liA8E" id="6tmlia_VeRj" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath():void" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6tmlia_VeRk" role="3cqZAp">
          <node concept="37vLTw" id="6tmlia_VeRl" role="3cqZAk">
            <ref role="3cqZAo" node="6tmlia_VePU" resolve="shape" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6tmlia_VzwC" role="1B3o_S" />
      <node concept="3uibUv" id="6tmlia_VeRn" role="3clF45">
        <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
      </node>
      <node concept="37vLTG" id="6tmlia_VtuK" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6tmlia_VtuL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmlia_VtuM" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6tmlia_VtuN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmlia_VtuO" role="3clF46">
        <property role="TrG5h" value="lineSize" />
        <node concept="10Oyi0" id="6tmlia_VtuP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmlia_VtuQ" role="3clF46">
        <property role="TrG5h" value="textWidth" />
        <node concept="10Oyi0" id="6tmlia_VtuR" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6tmlia_TEhv" role="1B3o_S" />
    <node concept="3uibUv" id="6tmlia_TZny" role="EKbjA">
      <ref role="3uigEE" to="xxy3:1KCfUoKRRlk" resolve="ComponentController" />
      <node concept="3uibUv" id="1iOpS24J35w" role="11_B2D">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
    <node concept="3uibUv" id="5jb5jNBJL1w" role="EKbjA">
      <ref role="3uigEE" node="5jb5jNBJKHJ" resolve="FBNetworkCompponentController" />
    </node>
  </node>
</model>

