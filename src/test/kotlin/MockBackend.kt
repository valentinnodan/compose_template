import connection.ConnectionFieldRegistry
import connection.field.ConnectionField
import connection.field.TYPE_ID
import serializer.Mapping
import serializer.getMapping
import java.io.File

class FieldWithCallback<V>(val field: ConnectionField<V>, val callback: (V) -> Unit)

fun buildSystem(modelFile: String): Pair<ConnectionFieldRegistry, Mapping> {
    val modelText = File(modelFile).readText()
    val mapping = getMapping(modelText)

    val registry = ConnectionFieldRegistry()
    for (i in mapping.inputs.inputs) {
        registry.getConnection(i.name, TYPE_ID.valueOf(i.type), i.host, i.port)
    }
    for (i in mapping.outputs.outputs) {
        registry.getConnection(i.name, TYPE_ID.valueOf(i.type), i.host, i.port)
    }

    return Pair(registry, mapping)
}


