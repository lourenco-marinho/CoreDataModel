//
//  NSManagedObject+EntityName.swift
//  Example
//
//  Created by Lourenço Marinho on 09/03/16.
//  Copyright © 2016 Lourenço Marinho. All rights reserved.
//

import Foundation
import CoreData

extension NSManagedObject {
    
    static var entityName: String {
        return String(self)
    }
    
}