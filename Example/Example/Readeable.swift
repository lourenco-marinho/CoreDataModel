//
//  Readeable.swift
//  Example
//
//  Created by Lourenço Marinho on 09/03/16.
//  Copyright © 2016 Lourenço Marinho. All rights reserved.
//

import Foundation

/**
    Protocol defining entities that can be read from any data source.
*/
protocol Readable {
    
    /**
        Find all objects from the data source.
     
        - Returns: An array containing all objects with the same type as the source object.
     */
    static func all() -> [Self]
    
    /**
        Find all objects according to the predicate from a data source.
     
        - Parameters predicate: A predicate to filter objects.
     
        - Returns: An array containing all objects with the same type as the source object.
     */
    static func find(predicate: NSPredicate) -> [Self]
        
    /**
        The count method retrieves the number of records from a given entity.
     
     - Returns: The number of objects from a given entity.
     */
    static func count() -> Int
    
    /**
        The isEmpty method checks if there are any object in the data source.
     
     - Returns: Boolean indicating if exists entities in the data source.
     */
    static func isEmpty() -> Bool
}
