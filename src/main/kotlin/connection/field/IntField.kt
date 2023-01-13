package connection.field;

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import java.nio.ByteBuffer

data class IntField(var defaultValue:Int, override var content:Int = defaultValue, override val contentState: MutableState<Int> = mutableStateOf(content)): ConnectionField<Int>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(4).putInt(content).array()
        return bytes
    }

    override fun getFBValue(d: ByteArray) {
        setValue(ByteBuffer.wrap(d).getInt(0))
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.UDINT
    }
}
