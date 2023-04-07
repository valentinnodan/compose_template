package connection

import connection.field.ConnectionField
import connection.field.StringField
import connection.field.TYPE_ID
import connection.provider.ConnectionProvider
import serializer.Conf
import serializer.Mapping
import serializer.PlainMapping
import java.nio.ByteBuffer

abstract class AbstractClient() {
    protected val registry: ConnectionFieldRegistry = ConnectionFieldRegistry()
    val inputs: MutableSet<String> = mutableSetOf()
    val outputs: MutableSet<String> = mutableSetOf()
    val inputConnections: MutableList<ConnectionProvider> = mutableListOf()

    fun getField(name: String): ConnectionField<out Any>? {
        return registry.getConnection(name)?.first
    }

    abstract fun sendValue(name: String)
    abstract fun retrieveValues(callbacks: Map<String, () -> Unit> = mapOf())
}

class PlainClient(mapping: PlainMapping): AbstractClient() {
    init {
        mapping.inputs.inputs.forEach({
            registry.getConnection(it.name, TYPE_ID.valueOf(it.type), it.host, it.port)
            inputs.add(it.name)
            inputConnections.add(registry.getConnection(it.name)!!.second)
        })
        mapping.outputs.outputs.forEach({
            registry.getConnection(it.name, TYPE_ID.valueOf(it.type), it.host, it.port)
            outputs.add(it.name)
        })
    }

    override fun sendValue(name: String) {
        val fieldConnector = registry.getConnection(name)
        val field = fieldConnector!!.first
        val connector = fieldConnector.second
        connector.request(field, ByteArray(0))
    }

    override fun retrieveValues(callbacks: Map<String, () -> Unit>) {
        inputs.forEach{
            val fieldConnector = registry.getConnection(it)
            val field = fieldConnector!!.first
            val connector = fieldConnector.second
            connector.response({ba -> Pair(Pair(field, ba), it)})
        }
    }
}

class NamedClient(mapping: Mapping, conf: Conf): AbstractClient() {
    val nameField: ConnectionField<String> = StringField()
    val inputsTypes: MutableMap<TYPE_ID, Pair<String, Int>> = mutableMapOf()
    val outputsTypes: MutableMap<TYPE_ID, Pair<String, Int>> = mutableMapOf()

    init {
        conf.inputs.inputs.forEach({
            inputsTypes.put(TYPE_ID.valueOf(it.type), Pair(it.host, it.port))
        })
        conf.outputs.outputs.forEach({
            outputsTypes.put(TYPE_ID.valueOf(it.type), Pair(it.host, it.port))
        })
        mapping.inputs.inputs.forEach {
            val hostPort = inputsTypes.get(TYPE_ID.valueOf(it.type))
            registry.getConnection(it.name, TYPE_ID.valueOf(it.type), hostPort!!.first, hostPort.second)
            inputs.add(it.name)
        }
        mapping.outputs.outputs.forEach({
            val hostPort = outputsTypes.get(TYPE_ID.valueOf(it.type))
            registry.getConnection(it.name, TYPE_ID.valueOf(it.type), hostPort!!.first, hostPort.second)
            outputs.add(it.name)
        })
        inputsTypes.values.forEach({
            inputConnections.add(registry.getConnector(it)!!)
        })
    }

    override fun sendValue(name: String) {
        val fieldConnector = registry.getConnection(name)
        val field = fieldConnector!!.first
        val connector = fieldConnector.second
        nameField.setValue(name)
        connector.request(field, nameField.getFromFBValue())
    }

    override fun retrieveValues(callbacks: Map<String, () -> Unit>) {
        inputConnections.forEach {
            it.response({ ba ->
            var size = ByteBuffer.wrap(ba).getShort(1)
            val name = String(ba.copyOfRange(3, 3 + size.toInt()))
            val offset = 3 + size.toInt()
            registry.getConnection(name)
            val field = registry.getConnection(name)!!.first
            Pair(Pair(field, ba.copyOfRange(offset, ba.size)), name)
        })
        }
    }
}