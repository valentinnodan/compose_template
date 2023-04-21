package org.fbme.lib.iec61499.parser

import org.fbme.lib.iec61499.declarations.*
import org.jdom.Document

class RootConverter(
    private val myConfiguration: Iec61499ConverterConfiguration,
    private val myLocus: IdentifierLocus,
    private val myDocument: Document
) {
    fun convertFBType(): FBTypeDeclaration {
        val root = myDocument.rootElement
        if (root.getAttribute("UsedInCAT") != null && root.getAttribute("UsedInCAT").value == "TRUE") {
            return HMIInterfaceConverter(arguments()).extract()
        }
        if (root.getChild("FBNetwork") != null) {
            return myConfiguration.createCompositeFbTypeConverter(arguments()).extract()
        }
        return if (root.getChild("BasicFB") != null) {
            myConfiguration.createBasicFbTypeConverter(arguments()).extract()
        } else ServiceInterfaceFBTypeConverter(
            arguments()
        ).extract()
    }

    fun convertAdapterType(): AdapterTypeDeclaration {
        return AdapterTypeConverter(arguments()).extract()
    }

    fun convertSubapplicationType(): SubapplicationTypeDeclaration {
        return SubappTypeConverter(arguments()).extract()
    }

    fun convertResourceType(): ResourceTypeDeclaration {
        return ResourceTypeConverter(arguments()).extract()
    }

    fun convertDeviceType(): DeviceTypeDeclaration {
        return DeviceTypeConverter(arguments()).extract()
    }

    fun convertSegmentType(): SegmentTypeDeclaration {
        return SegmentTypeConverter(arguments()).extract()
    }

    fun convertSystemConfiguration(): SystemDeclaration {
        return SystemConverter(arguments()).extract()
    }

    fun convertCATConfiguration(): CATBlockTypeDeclaration {
        return CATBlockTypeConverter(arguments()).extract()
    }

    private fun arguments(): ConverterArgumentsHolder {
        return ConverterArgumentsHolder(
            myConfiguration.entryFactory,
            myConfiguration.stEntryFactory,
            myLocus,
            myDocument.rootElement
        )
    }
}