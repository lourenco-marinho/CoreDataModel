//
//  Deletable.swift
//  Example
//
//  Created by Lourenço Marinho on 09/03/16.
//  Copyright © 2016 Lourenço Marinho. All rights reserved.
//

import Foundation

protocol Deletable {
    
    /**
        Removes the object from a data store
     */
    func destroy()
}