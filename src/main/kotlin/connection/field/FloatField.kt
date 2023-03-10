package connection.field;

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import java.nio.ByteBuffer

data class FloatField(var defaultValue:Float, override var content:Float = 0f, override val contentState: MutableState<Float> = mutableStateOf(defaultValue)): ConnectionField<Float>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(3).put(getTypeID().code.toByte()).putFloat(content).array()
        return bytes
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.REAL.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getFloat(1))
        }
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.REAL
    }
}
