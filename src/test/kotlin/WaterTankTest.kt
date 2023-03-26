import kotlin.concurrent.thread

val system = buildSystem("src/main/kotlin/example/WATER_TANK/WATER_TANK.xml")
val model = system.second
val registry = system.first


val TANK_VOLUME = 100
val MAX_TEMP = 100

var isInlet: FieldWithCallback<Boolean> = FieldWithCallback(registry.getConnection("stateInlet")!!.first,
    {registry.getConnection("stateInlet")!!.second.request()}) as FieldWithCallback<Boolean>
var isHeat: FieldWithCallback<Boolean> = FieldWithCallback(registry.getConnection("stateHeat")!!.first,
    {registry.getConnection("stateHeat")!!.second.request()}) as FieldWithCallback<Boolean>
var isOutlet: FieldWithCallback<Boolean> = FieldWithCallback(registry.getConnection("stateOutlet")!!.first,
    {registry.getConnection("stateOutlet")!!.second.request()}) as FieldWithCallback<Boolean>
var lamp1: FieldWithCallback<Boolean> = FieldWithCallback(registry.getConnection("lampIndicator1")!!.first,
    {registry.getConnection("lampIndicator1")!!.second.request()}) as FieldWithCallback<Boolean>
var lamp2: FieldWithCallback<Boolean> = FieldWithCallback(registry.getConnection("lampIndicator2")!!.first,
    {registry.getConnection("lampIndicator2")!!.second.request()}) as FieldWithCallback<Boolean>
var tankIndicator: FieldWithCallback<Float> = FieldWithCallback(registry.getConnection("tankIndicator")!!.first,
    {registry.getConnection("tankIndicator")!!.second.request()}) as FieldWithCallback<Float>
var outputIndicator: FieldWithCallback<Float> = FieldWithCallback(registry.getConnection("outputIndicator")!!.first,
    {registry.getConnection("outputIndicator")!!.second.request()}) as FieldWithCallback<Float>
var knob1: FieldWithCallback<Int> = FieldWithCallback(registry.getConnection("knob1")!!.first, {runUpdate()}) as FieldWithCallback<Int>
var knob2: FieldWithCallback<Int> = FieldWithCallback(registry.getConnection("knob2")!!.first, {runUpdate()}) as FieldWithCallback<Int>


fun runSimulation(){
    thread {
        val connection = registry.getConnection("knob1")!!
        connection.second.response(callback = {knob1.callback(0)})
    }
    thread {
        val connection = registry.getConnection("knob2")!!
        connection.second.response(callback = {knob2.callback(0)})
    }

}

fun runUpdate() {
    if (isInlet.field.getValue() || isHeat.field.getValue() || isOutlet.field.getValue()) {
        return
    }
    isInlet.field.setValue(true)
    isInlet.callback(true)
    lamp1.field.setValue(true)
    lamp1.callback(true)
    var currTankState = 0
    while (currTankState < TANK_VOLUME) {
        currTankState += knob1.field.getValue() / 2
        tankIndicator.field.setValue(currTankState.toFloat())
        tankIndicator.callback(currTankState.toFloat())
        Thread.sleep( 500)
    }
    isInlet.field.setValue(false)
    isInlet.callback(false)
    lamp1.field.setValue(false)
    lamp1.callback(false)
    isHeat.field.setValue(true)
    isHeat.callback(true)
    var currTemp = knob2.field.getValue()
    while (currTemp < MAX_TEMP) {
        currTemp += 10
        outputIndicator.field.setValue(currTemp.toFloat())
        outputIndicator.callback(currTemp.toFloat())
        Thread.sleep(500)
    }
    isHeat.field.setValue(false)
    isHeat.callback(false)
    isOutlet.field.setValue(true)
    isOutlet.callback(true)
    lamp2.field.setValue(true)
    lamp2.callback(true)
    currTankState = TANK_VOLUME
    while (currTankState > 0) {
        currTankState -= knob1.field.getValue() / 2
        tankIndicator.field.setValue(currTankState.toFloat())
        tankIndicator.callback(currTankState.toFloat())
        Thread.sleep( 500)
    }
    isOutlet.field.setValue(false)
    isOutlet.callback(false)
    lamp2.field.setValue(false)
    lamp2.callback(false)
    outputIndicator.field.setValue(0f)
    outputIndicator.callback(0f)
}

fun main() {
    runSimulation()
}