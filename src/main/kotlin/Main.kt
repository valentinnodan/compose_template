import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material.Button
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Scaffold
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.snapshots.SnapshotStateList
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Window
import androidx.compose.ui.window.application
import androidx.compose.ui.window.rememberWindowState
import example.INCHOICE.*
import canvas.items.CustomItem
import canvas.items.RadioCustomItem
import canvas.items.RectangleCustomItem
import example.COUNTER.Count_HMI
import example.COUNTER.Count_String_HMI

@Composable
fun CanvasContext(listFigures: SnapshotStateList<CustomItem>) {
    Scaffold {innerPadding ->
        Box(Modifier.fillMaxHeight().fillMaxWidth().background(Color.Gray)) {
            listFigures.forEach{f -> f.create()}
        }
    }
}


fun main() = application {
    Window(
        onCloseRequest = ::exitApplication,
        title = "Canvas for CAT",
        state = rememberWindowState(width = 400.dp, height = 500.dp)
    ) {
        val listFigures = mutableStateListOf<CustomItem>()
        val count = remember { mutableStateOf(0) }
        MaterialTheme {
            Column {
//                Row {
//                    CheckboxButton(onClickFun = { listFigures.add(RectangleCustomItem()) })
//                    RadioButton(onClickFun = { listFigures.add(RadioCustomItem()) })
//                    ToggleButton(onClickFun = { listFigures.add(RectangleCustomItem()) })
//                    DropdownButton(onClickFun = { listFigures.add(RectangleCustomItem()) })
//
//                }
//                Column(Modifier.fillMaxSize(), Arrangement.spacedBy(5.dp)) {
//                    CanvasContext(listFigures)
//
//                }
Count_String_HMI()
            }
        }
    }
//    runTest()
}