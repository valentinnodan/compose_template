package example.INCHOICE

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
import connection.field.BoolField
import connection.field.ConnectionField
import connection.field.StringField
import connection.provider.ConnectionProvider

val field: ConnectionField<Boolean> = BoolField()
val toggleField: ConnectionField<Boolean> = BoolField()
val ipField: ConnectionField<String> = StringField()

var connectionProvider: ConnectionProvider<Boolean> = ConnectionProvider(field, 65001)
var connectionProviderToggle: ConnectionProvider<Boolean> = ConnectionProvider(toggleField, 65000)
var connectionProviderIpText: ConnectionProvider<String> = ConnectionProvider(ipField, 65002)


val ping = 1

@Composable
fun LampToggle() {
    val checkedState = remember { toggleField }
    Switch(
        checked = checkedState.contentState.value,
        onCheckedChange = {
            checkedState.setValue(it)
            connectionProviderToggle.request()}
    )
}


val trueColor = Color.Yellow
val falseColor = Color.Black




@Composable
fun Lamp_HMI() {
    fun getColor(s: Boolean): Color {
        if (s) {
            return trueColor
        } else {
            return falseColor
        }
    }


    var checkedState = remember{ field }
    Column {
        Box(
            modifier = Modifier.background(color = if (checkedState.contentState.value) trueColor else falseColor)
                .width(600.dp)
                .height(600.dp)
        ) {
            connectionProvider.response()
        }
        Box(
            modifier = Modifier.background(color = Color.Gray)
                .width(200.dp)
                .height(200.dp)
        ) {
            Text(ipField.contentState.value)
            connectionProviderIpText.response()
        }
    }
}

val blinkingSampleInitRequests: List<String> = listOf(
    // create resource EMB_RES
    // init Blinky Sample
    "<Request ID=\"2\" Action=\"CREATE\"><FB Name=\"E_CYCLE\" Type=\"E_CYCLE\"/></Request>",
    "<Request ID=\"3\" Action=\"WRITE\"><Connection Source=\"T#1000ms\" Destination=\"E_CYCLE.DT\"/></Request>",
    "<Request ID=\"4\" Action=\"CREATE\"><FB Name=\"E_SWITCH\" Type=\"E_SWITCH\"/></Request>",
    "<Request ID=\"5\" Action=\"CREATE\"><FB Name=\"E_SR\" Type=\"E_SR\"/></Request>",
    "<Request ID=\"6\" Action=\"CREATE\"><Connection Source=\"E_CYCLE.EO\" Destination=\"E_SWITCH.EI\"/></Request>",
    "<Request ID=\"7\" Action=\"CREATE\"><Connection Source=\"E_SWITCH.EO0\" Destination=\"E_SR.S\"/></Request>",
    "<Request ID=\"8\" Action=\"CREATE\"><Connection Source=\"E_SWITCH.EO1\" Destination=\"E_SR.R\"/></Request>",
    "<Request ID=\"9\" Action=\"CREATE\"><Connection Source=\"START.COLD\" Destination=\"E_CYCLE.START\"/></Request>",
    "<Request ID=\"10\" Action=\"CREATE\"><Connection Source=\"START.WARM\" Destination=\"E_CYCLE.START\"/></Request>",
    "<Request ID=\"11\" Action=\"CREATE\"><Connection Source=\"E_SR.Q\" Destination=\"E_SWITCH.G\"/></Request>",
    // start resource
    "<Request ID=\"12\" Action=\"START\"/>",
    // add watches
    "<Request ID=\"13\" Action=\"CREATE\"><Watch Source=\"E_SR.EO\" Destination=\"*\" /></Request>",
    "<Request ID=\"14\" Action=\"CREATE\"><Watch Source=\"E_SR.\$ECC\" Destination=\"*\" /></Request>"
)

//private fun test(resourceName: String, requests: List<String>) {
//    val connectionProvider = ConnectionProvider(resourceName)
//
//    with(connectionProvider) {
//        val createResourceRequest = "<Request ID=\"0\" Action=\"CREATE\"><FB Name=\"$resourceName\" Type=\"EMB_RES\"/></Request>"
//
//        println(createResourceRequest)
//
//        request(
//            resource = "",
//            request = createResourceRequest
//        )
//
//        for (request in requests) {
//            println(request)
//            request(resource = resourceName, request = request)
//        }
//
//        repeat(1) {
//            Thread.sleep(3000)
//        }
//
//        repeat(100) {
//            println(response())
//            Thread.sleep(ping * 3000L)
//        }
//        socket.leaveGroup(group)
//        socket.close()
//    }
//}

//fun runTest() {
//    test("EMB_RES", blinkingSampleInitRequests)
//}

