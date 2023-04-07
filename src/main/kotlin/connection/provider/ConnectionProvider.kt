package connection.provider

import connection.field.ConnectionField
import java.net.DatagramPacket
import java.net.InetAddress
import java.net.MulticastSocket
import kotlin.concurrent.thread

class ConnectionProvider(private val port: Int, private val host: String = "225.0.0.1") {
    val group = InetAddress.getByName(host);
    val socket = MulticastSocket(port);


    init {
        socket.joinGroup(group)
    }

    var ind = 0

    fun response(fieldGetter: (ByteArray) -> Pair<Pair<ConnectionField<out Any>, ByteArray>, String>, ping:Long = 1000, callbacks: Map<String, () -> Unit> = mapOf()) {
        thread {
            while (true) {
                val buf = ByteArray(1024);
                val recv = DatagramPacket(buf, buf.size);
                socket.receive(recv)
                val fieldData = fieldGetter(recv.data)
                val field = fieldData.first.first
                val data = fieldData.first.second
                val name = fieldData.second
                println("GETTING ${field.getTypeID()}")
                field.getFBValue(data)
                callbacks.getOrDefault(name, {})()
                println("GOT ${field.getValue()}")
                Thread.sleep(ping)
            }
        }
    }

    fun request(field: ConnectionField<out Any>, prefix: ByteArray) {
        println("SENDING ${field.getValue()}")
        var msg = field.getFromFBValue()
        msg = prefix.plus(msg)
        val hi = DatagramPacket(msg, msg.size,
            group, port);
        socket.send(hi)
    }

}