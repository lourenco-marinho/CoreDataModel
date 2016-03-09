//
//  Person.swift
//  Example
//
//  Created by Lourenço Marinho on 09/03/16.
//  Copyright © 2016 Equinocios. All rights reserved.
//

import Foundation
import CoreData


final class Person: NSManagedObject, CoreDataModel {

    @NSManaged var name: String
}
