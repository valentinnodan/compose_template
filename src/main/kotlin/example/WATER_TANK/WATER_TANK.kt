package example.WATER_TANK

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.zIndex
import connection.AbstractClient
import connection.ConnectionFieldRegistry
import lib.elements.*
import lib.elements.getters.Bulb
import lib.elements.getters.LightingText
import lib.elements.getters.VerticalIndicator
import lib.elements.setters.RoundKnob
import lib.visual.PositionedBox

@Composable
fun WaterTank(client: AbstractClient, mapping: String) {

    Box {
        PositionedBox(@Composable { LampIndicator("$mapping#lampIndicator1", client) }, 120, 190)
        PositionedBox(@Composable { LampIndicator("$mapping#lampIndicator2", client) }, 120, 380)
        PositionedBox(@Composable { PipeConnector(Color.Gray, 100.dp, 30.dp) }, 150, 100)
        PositionedBox(@Composable { Figure(RoundedCornerShape(100.dp),
            modifier = Modifier.size(200.dp, 300.dp)
                .background(brush = METALLIC_BRUSH, shape = RoundedCornerShape(20.dp))
        )
        }, 200, 150, zIndex = 2f)
        PositionedBox(@Composable { Pipe(Color.Gray, 100.dp, 30.dp) }, 400, 400)
        PositionedBox(@Composable {
            VerticalIndicator(
                "$mapping#tankIndicator", client,
                color = Color.Blue, step = 20f, minTemperature = 0f, maxTemperature = 100f,
                trackHeight = 200.dp, indicatorWidth = 20.dp
            )
        }, 300, 200, zIndex = 3f)
    }
}

@Composable
fun LampIndicator(name: String, client: AbstractClient, pipeSize: Dp = 30.dp) {
    Row {
        PositionedBox(@Composable {
            Bulb(
                name,
                client,
                size = pipeSize,
                borderWidth = 4.dp,
                modifier = Modifier.zIndex(2f)
            )
        }, pipeSize.value / 2)
        Pipe(Color.Gray, 100.dp, pipeSize)
    }
}


@Composable
fun System(client: AbstractClient, mapping:String) {
    PositionedBox(@Composable {
        RoundKnob(
            "$mapping#knob1", // 123#lamp#indicator
            client,
            0..100,
            0f,
            knobSize = 60.dp,
            knobColor = Color.Red
        )
    }, 10, 50)
    PositionedBox(@Composable {
        RoundKnob(
            "$mapping#knob2",
            client,
            0..100,
            0f,
            knobSize = 60.dp,
            knobColor = Color.Blue
        )
    }, 10, 120)
    WaterTank(client, mapping)
    PositionedBox(@Composable {
        VerticalIndicator(
            "$mapping#outputIndicator", client,
            color = Color.Red, step = 20f, minTemperature = 0f, maxTemperature = 100f,
            trackHeight = 200.dp, indicatorWidth = 20.dp
        )
    }, 440, 150, zIndex = 3f)
    PositionedBox(@Composable {
        LightingText(
            "$mapping#stateInlet",
            client,
            "Inlet",
            width = 70.dp,
            height = 25.dp,
            borderWidth = 5.dp
        )
    }, 500, 150)
    PositionedBox(@Composable {
        LightingText(
            "$mapping#stateHeat",
            client,
            "Heat",
            width = 70.dp,
            height = 25.dp,
            borderWidth = 5.dp
        )
    }, 500, 200)
    PositionedBox(@Composable {
        LightingText(
            "$mapping#stateOutlet",
            client,
            "Outlet",
            width = 70.dp,
            height = 25.dp,
            borderWidth = 5.dp
        )
    }, 500, 250)
}