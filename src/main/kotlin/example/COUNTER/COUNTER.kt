package example.COUNTER

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.material.Checkbox
import androidx.compose.material.Switch
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import connection.field.*
import connection.provider.ConnectionProvider

val countField: ConnectionField<String> = StringField()

var connectionProvider: ConnectionProvider<String> = ConnectionProvider(countField,  65003, "225.0.0.2")



@Composable
fun Count_HMI() {

    var checkedState = remember{ countField }
    Column {
        Box(
            modifier = Modifier.background(color = Color.Gray)
                .width(200.dp)
                .height(200.dp)
        ) {
            Text(checkedState.contentState.value.toString())
            connectionProvider.response(1000)
        }
    }
}

@Composable
fun Count_String_HMI() {

    var checkedState = remember{ countField }
    Column {
        Box(
            modifier = Modifier.background(color = Color.Gray)
                .width(200.dp)
                .height(200.dp)
        ) {
            Text(checkedState.contentState.value)
            connectionProvider.response(1000)
        }
    }
}


