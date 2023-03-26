package serializer

import kotlinx.serialization.Serializable
import kotlinx.serialization.modules.SerializersModule
import kotlinx.serialization.serializer
import nl.adaptivity.xmlutil.XmlDeclMode
import nl.adaptivity.xmlutil.serialization.XML
import nl.adaptivity.xmlutil.serialization.XmlElement
import nl.adaptivity.xmlutil.serialization.XmlSerialName

@Serializable
@XmlSerialName("Mapping", "", "")
data class Mapping(
    val inputs: Inputs,
    val outputs: Outputs,
)

@Serializable
@XmlSerialName("Inputs", "", "")
data class Inputs(
    val inputs: List<Input>
)

@Serializable
@XmlSerialName("Input", "", "")
data class Input(
    val name: String,
    val type: String,
    val host: String,
    val port: Int
)

@Serializable
@XmlSerialName("Outputs", "", "")
data class Outputs(
    val outputs: List<Output>

)

@Serializable
@XmlSerialName("Output", "", "")
data class Output(
    val name: String,
    val type: String,
    val host: String,
    val port: Int
)


fun getMapping(modelText: String): Mapping {
    val module = SerializersModule {}
    val xml = XML(module) {
        indentString = "    "
        xmlDeclMode = XmlDeclMode.Minimal
        autoPolymorphic = true
    }

    val serializer = serializer<Mapping>()
    return xml.decodeFromString(serializer, modelText)
}
