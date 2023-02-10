package connection.field

import androidx.compose.runtime.MutableState
import kotlinx.coroutines.Dispatchers

abstract class ConnectionField<V>(open var content: V, open val contentState: MutableState<V>) {
    abstract fun getFromFBValue():ByteArray
    abstract fun getFBValue(d: ByteArray)
    abstract fun getTypeID():TYPE_ID
    fun getValue():V {
        return content
    }
    fun setValue(v:V) {
        println("!!! BEFORE SET ${content}")
        content = v
        contentState.value = content
        println("!!! SET ${content}")
    }
}

enum class TYPE_ID(val code: Int) {
    BOOL(65),
    USINT(71),
    UINT(65),
    UDINT(71),
    ULINT(65),
    SINT(65),
    INT(65),
    DINT(65),
    LINT(65),
    REAL(65),
    LREAL(65),
    STRING(80),
    WSTRING(85),
    DATE_AND_TIME(79),
    ARRAY(118)
}