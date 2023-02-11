package connection.field

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import java.nio.ByteBuffer

data class WStringField(override var content:String = "", override val contentState: MutableState<String> = mutableStateOf(content)): ConnectionField<String>(content, contentState) {
    override fun getFromFBValue(): ByteArray {
        val contentBytes: ByteArray = content.toByteArray()
        return ByteBuffer.allocate(contentBytes.size + 3).put(getTypeID().code.toByte()).putShort(content.length.toShort()).put(contentBytes).array()
    }

    override fun getFBValue(d: ByteArray) {
        var size = ByteBuffer.wrap(d).getShort(1)
        setValue(String(d.copyOfRange(3, 3 + size.toInt())))
        println(d.contentToString())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.WSTRING
    }

}