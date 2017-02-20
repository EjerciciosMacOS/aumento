//
//  Document.swift
//  Aumento
//
//  Created by Leonardo Guzman on 2/13/17.
//  Copyright © 2017 Leonardo Guzman. All rights reserved.
//

import Cocoa

class Document: NSDocument {

    var empleados : [Empleado] = [];
    
    // MARK: - Document
    
    override init() {
        super.init()
        
    }

    override class func autosavesInPlace() -> Bool {
        return true
    }

    override var windowNibName: String? {
        // Returns the nib file name of the document
        // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this property and override -makeWindowControllers instead.
        return "Document"
    }

    override func data(ofType typeName: String) throws -> Data {
        return Data();
    }

    override func read(from data: Data, ofType typeName: String) throws {
    }
}

