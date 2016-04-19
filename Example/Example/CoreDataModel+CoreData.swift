//
//  CoreDataModel+CoreData.swift
//  Example
//
//  Created by Lourenço Marinho on 09/03/16.
//  Copyright © 2016 Lourenço Marinho. All rights reserved.
//

import UIKit
import Foundation
import CoreData


/*
    Extending CoreDataModel to work with NSManagedObjectContext as a Context.
*/

extension CoreDataModel where Self: NSManagedObject {
    static var context: NSManagedObjectContext {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        return appDelegate.managedObjectContext
    }
}

/*
    CoreDataModel extension for writing methods.
*/

extension CoreDataModel where Self: NSManagedObject {
    func save() {
        if Self.context.hasChanges {
            do  {
                try Self.context.save()
            } catch {
                fatalError("Could not save changes on NSManagedObjectContext.")
            }
        }
    }
    
    static func new() -> Self {
        let newEntity = NSEntityDescription.insertNewObjectForEntityForName(Self.entityName, inManagedObjectContext: Self.context) as! Self
        return newEntity
    }
}

/*
    CoreDataModel extension for deletion methods.
*/

extension CoreDataModel where Self: NSManagedObject {
    func destroy() {
        Self.context.deleteObject(self)
        try! Self.context.save()
    }
}

/*
    CoreDataModel extension for reading methods.
*/

extension CoreDataModel where Self: NSManagedObject {
    static func all() -> [Self] {
        let fetchRequest = NSFetchRequest(entityName: Self.entityName)
        fetchRequest.predicate = NSPredicate(value: true)
        
        return try! context.executeFetchRequest(fetchRequest) as! [Self]
    }
    
    static func find(predicate: NSPredicate) -> [Self] {
        let fetchRequest = NSFetchRequest(entityName: Self.entityName)
        fetchRequest.predicate = predicate
        
        return try! context.executeFetchRequest(fetchRequest) as! [Self]
    }
    
    static func count() -> Int {
        let fetchRequest = NSFetchRequest(entityName: Self.entityName)
        return context.countForFetchRequest(fetchRequest, error: nil)
    }
    
    static func isEmpty() -> Bool {
        return count() == 0
    }
}

