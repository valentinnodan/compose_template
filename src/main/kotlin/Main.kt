import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.runtime.snapshots.SnapshotStateList
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Window
import androidx.compose.ui.window.application
import androidx.compose.ui.window.rememberWindowState
import canvas.items.CustomItem
import connection.ConnectionFieldRegistry
import example.WATER_TANK.System

@Composable
fun CanvasContext(listFigures: SnapshotStateList<CustomItem>) {
    Scaffold { innerPadding ->
        Box(Modifier.fillMaxHeight().fillMaxWidth().background(Color.Gray)) {
            listFigures.forEach { f -> f.create() }
        }
    }
}

val registry = ConnectionFieldRegistry()


fun main() = application {
    Window(
        onCloseRequest = ::exitApplication,
        title = "Canvas for CAT",
        state = rememberWindowState(width = 600.dp, height = 600.dp)
    ) {
        MaterialTheme {
//            CounterLamp(registry)
            Column {
//                ComboBox("text",
//                    "225.0.0.1",
//                    65000,
//                    registry,
//                    modifier = Modifier.height(100.dp).width(100.dp),
//                    items = listOf("aa", "ab", "cb", "ddd", "say soma"),
//                    content = @Composable { item -> Text(item) });
//                ListBox(
//                    "text",
//                    "225.0.0.1",
//                    65000,
//                    registry,
//                    modifier = Modifier.height(100.dp).width(100.dp),
//                    items = listOf("a2", "b2", "c2"),
//                    content = @Composable { item -> Text(item) }
//                )

//InputTextBox("text1",
//    "225.0.0.1",
//    65010,
//    registry)
//                HorizontalTracker(0f..100f, 10f, steps = 10)
            }
//            PositionedBox(@Composable {RoundKnob(0..100, 10, knobSize = 100.dp)}, x = 50, y = 150)
//            PositionedBox(@Composable{ Indicator("text", "225.0.0.1", 65000, registry, 0, 100, 200.dp) })
//            PositionedBox(@Composable{VerticalIndicator("text", "225.0.0.1", 65000, registry,15f, 70f, 0f, Color.Red, 10f )}, 100, 200)
            System(registry)
        }
    }
//    runTest()
}