package connection.field;

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.sourceInformation
import java.nio.ByteBuffer
import java.util.*

data class ShortField(var defaultValue:Short, override var content:Short = 0, override val contentState: MutableState<Short> = mutableStateOf(defaultValue)): ConnectionField<Short>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(2).putShort(content).array()
        return bytes
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.USINT.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getShort(1))
        }
    }

    override fun getTypeID(): TYPE_ID {
//        TODO("add support of just SINT")
        return TYPE_ID.USINT
    }
}
