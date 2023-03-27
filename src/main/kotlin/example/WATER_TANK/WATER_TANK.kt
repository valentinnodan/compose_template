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
import connection.ConnectionFieldRegistry
import lib.elements.*
import lib.elements.getters.Bulb
import lib.elements.getters.LightingText
import lib.elements.getters.VerticalIndicator
import lib.elements.setters.RoundKnob
import lib.visual.PositionedBox

@Composable
fun WaterTank(registry: ConnectionFieldRegistry) {

    Box {
        PositionedBox(@Composable { LampIndicator("lampIndicator1", "225.0.0.1", 65000, registry) }, 120, 190)
        PositionedBox(@Composable { LampIndicator("lampIndicator2", "225.0.0.1", 65001, registry) }, 120, 380)
        PositionedBox(@Composable { PipeConnector(Color.Gray, 100.dp, 30.dp) }, 150, 100)
        PositionedBox(@Composable { Figure(RoundedCornerShape(100.dp),
            modifier = Modifier.size(200.dp, 300.dp)
                .background(brush = METALLIC_BRUSH, shape = RoundedCornerShape(20.dp))
        )
        }, 200, 150, zIndex = 2f)
        PositionedBox(@Composable { Pipe(Color.Gray, 100.dp, 30.dp) }, 400, 400)
        PositionedBox(@Composable {
            VerticalIndicator(
                "tankIndicator", "225.0.0.1", 65002, registry,
                color = Color.Blue, step = 20f, minTemperature = 0f, maxTemperature = 100f,
                trackHeight = 200.dp, indicatorWidth = 20.dp
            )
        }, 300, 200, zIndex = 3f)
    }
}

@Composable
fun LampIndicator(name: String, host: String, port: Int, registry: ConnectionFieldRegistry, pipeSize: Dp = 30.dp) {
    Row {
        PositionedBox(@Composable {
            Bulb(
                name,
                host,
                port,
                registry,
                size = pipeSize,
                borderWidth = 4.dp,
                modifier = Modifier.zIndex(2f)
            )
        }, pipeSize.value / 2)
        Pipe(Color.Gray, 100.dp, pipeSize)
    }
}


@Composable
fun System(registry: ConnectionFieldRegistry) {
    PositionedBox(@Composable {
        RoundKnob(
            "knob1",
            "225.0.0.1",
            65008,
            registry,
            0..100,
            0,
            knobSize = 60.dp,
            knobColor = Color.Red
        )
    }, 10, 50)
    PositionedBox(@Composable {
        RoundKnob(
            "knob2",
            "225.0.0.1",
            65009,
            registry,
            0..100,
            0,
            knobSize = 60.dp,
            knobColor = Color.Blue
        )
    }, 10, 120)
    WaterTank(registry)
    PositionedBox(@Composable {
        VerticalIndicator(
            "outputIndicator", "225.0.0.1", 65003, registry,
            color = Color.Red, step = 20f, minTemperature = 0f, maxTemperature = 100f,
            trackHeight = 200.dp, indicatorWidth = 20.dp
        )
    }, 440, 150, zIndex = 3f)
    PositionedBox(@Composable {
        LightingText(
            "stateInlet",
            "225.0.0.1",
            65005,
            registry,
            "Inlet",
            width = 70.dp,
            height = 25.dp,
            borderWidth = 5.dp
        )
    }, 500, 150)
    PositionedBox(@Composable {
        LightingText(
            "stateHeat",
            "225.0.0.1",
            65006,
            registry,
            "Heat",
            width = 70.dp,
            height = 25.dp,
            borderWidth = 5.dp
        )
    }, 500, 200)
    PositionedBox(@Composable {
        LightingText(
            "stateOutlet",
            "225.0.0.1",
            65007,
            registry,
            "Outlet",
            width = 70.dp,
            height = 25.dp,
            borderWidth = 5.dp
        )
    }, 500, 250)
}