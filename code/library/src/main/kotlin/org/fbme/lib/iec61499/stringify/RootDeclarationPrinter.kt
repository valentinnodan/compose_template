package org.fbme.lib.iec61499.stringify

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.parser.ConverterArguments
import org.jdom.DocType
import org.jdom.Document
import org.jdom.Element

class RootDeclarationPrinter(private val myDeclaration: Declaration, val converterArguments: ConverterArguments) {
    fun print(): Document {
        val rootElement: Element = when (myDeclaration) {
            is AdapterTypeDeclaration -> AdapterTypePrinter(myDeclaration).print()
            is BasicFBTypeDeclaration -> BasicFBTypePrinter(myDeclaration).print()
            is CompositeFBTypeDeclaration -> CompositeFBTypePrinter(myDeclaration).print()
            is CATBlockTypeDeclaration -> CATBlockTypePrinter(myDeclaration).print()
            is HMIInterfaceTypeDeclaration -> HMIBlockPrinter(myDeclaration, converterArguments).print()
            is DeviceTypeDeclaration -> DeviceTypePrinter(myDeclaration).print()
            is ResourceTypeDeclaration -> ResourceTypePrinter(myDeclaration).print()
            is ServiceInterfaceFBTypeDeclaration -> ServiceInterfaceFBTypePrinter(myDeclaration).print()
            is SubapplicationTypeDeclaration -> SubappTypePrinter(myDeclaration).print()
            is SystemDeclaration -> SystemPrinter(myDeclaration).print()
            else -> error("Unrecognized root declaration")
        }
        val document = Document()
        document.rootElement = rootElement
        document.docType = DocType(
            rootElement.name,
            DTD_LOCATION
        )
        return document
    }

    companion object {
        private const val DTD_LOCATION = "https://www.holobloc.com/xml/LibraryElement.dtd"
    }
}