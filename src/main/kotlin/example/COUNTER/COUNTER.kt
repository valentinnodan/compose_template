package example.COUNTER

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import connection.ConnectionFieldRegistry
import lib.elements.getters.Bulb
import lib.elements.getters.TextBox
import lib.elements.setters.Checkbox
import lib.elements.setters.Toggle
import lib.visual.PositionedBox


@Composable
fun Lamp(registry: ConnectionFieldRegistry) {

    PositionedBox(children = {
        Checkbox("toggle_status", "225.0.0.1", 65001, registry)
    }, x = 300, y = 100)
    Bulb("bulb_status", "225.0.0.1", 65000, registry)

}

@Composable
fun CounterLamp(registry: ConnectionFieldRegistry) {
    PositionedBox(children = {
        Row {
            Text("Count of changes: ")
            TextBox("count", "225.0.0.2", 65003, registry, Modifier.width(40.dp).height(30.dp).background(Color.LightGray))
//            PositionedBox( children = {Indicator("count", "225.0.0.2", 65003, registry, 0, 100, 1000.dp)}, x = 100, y = 100)
        }
    }, x = 200)
    Lamp(registry)
}