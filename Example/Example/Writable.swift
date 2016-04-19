//
//  Writable.swift
//  Example
//
//  Created by Lourenço Marinho on 09/03/16.
//  Copyright © 2016 Lourenço Marinho. All rights reserved.
//

import Foundation

/**
    Protocol defining entities that can be written to any data store.
 */
protocol Writeable {
    
    /**
        Saves the object to a data store
     */
    func save()
    
    
    /**
        Creates a new object
    */
    static func new() -> Self
}