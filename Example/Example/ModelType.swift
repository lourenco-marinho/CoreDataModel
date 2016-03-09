//
//  ModelType.swift
//  Example
//
//  Created by Lourenço Marinho on 09/03/16.
//  Copyright © 2016 Lourenço Marinho. All rights reserved.
//

import Foundation

/**
    A protocol to define a model that can operate in any kind database.
 */

protocol ModelType: ActiveRecordType {
   
    /**
        A generic placeholder to a database context.
     */
    
    typealias Context
    
    /**
        Returns the database context.
     */
    
    static var context: Self.Context { get }
}