package connection

import connection.field.ConnectionField
import connection.field.TYPE_ID
import connection.provider.ConnectionProvider

class ConnectionFieldRegistry {
    private val fieldRegistry: MutableMap<String, Pair<ConnectionField<out Any>,ConnectionProvider<out Any>> > = mutableMapOf()

    fun getConnection(name: String, type: TYPE_ID, host: String, port: Int): Pair<ConnectionField<out Any>,ConnectionProvider<out Any>> {
        if (name in fieldRegistry) {
            return fieldRegistry[name]!!
        }
        val field = ConnectionField.create(type)
        val provider = ConnectionProvider(field, port, host)
        val connection = Pair(field, provider)
        fieldRegistry[name] = connection
        return connection
    }

    fun getConnection(name: String): Pair<ConnectionField<out Any>,ConnectionProvider<out Any>>? {
        if (name in fieldRegistry) {
            return fieldRegistry[name]!!
        }
        return null
    }
}