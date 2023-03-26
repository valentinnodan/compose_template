package connection.provider

import connection.field.ConnectionField
import java.net.DatagramPacket
import java.net.InetAddress
import java.net.MulticastSocket
import kotlin.concurrent.thread

class ConnectionProvider<T>(private val field: ConnectionField<T>, private val port: Int, private val host: String = "225.0.0.1") {
    val group = InetAddress.getByName(host);
    val socket = MulticastSocket(port);


    init {
        socket.joinGroup(group)

    }

    var ind = 0

    fun response(ping:Long = 1000, callback: () -> Unit = {}) {
        thread {
            while (true) {
                println("GETTING ${field.getTypeID()}")
                val buf = ByteArray(1024);
                val recv = DatagramPacket(buf, buf.size);
                socket.receive(recv)
                field.getFBValue(recv.data)
                callback()
                println("GOT ${field.getValue()}")
                Thread.sleep(ping)
            }
        }
    }

    fun request() {
        println("SENDING ${field.getValue()}")
        var msg = field.getFromFBValue()
        val hi = DatagramPacket(msg, msg.size,
            group, port);
        socket.send(hi)
    }

}