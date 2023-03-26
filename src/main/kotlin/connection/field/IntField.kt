package connection.field;

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.sourceInformation
import java.nio.ByteBuffer
import java.util.*

data class IntField(var defaultValue:Int, override var content:Int = 0, override val contentState: MutableState<Int> = mutableStateOf(defaultValue)): ConnectionField<Int>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(5).put(getTypeID().code.toByte()).putInt(content).array()
        return bytes
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.UDINT.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getInt(1))
        } else {
            if (buf[0] == TYPE_ID.UINT.code.toByte()) {
                setValue(ByteBuffer.wrap(d).getInt(1))
            }
        }
        println(d.contentToString())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.UINT
    }
}
