//
//  ActiveRecordType.swift
//  Example
//
//  Created by Lourenço Marinho on 09/03/16.
//  Copyright © 2016 Lourenço Marinho. All rights reserved.
//

import Foundation

/**
    A protocol to group all operations that can be performed in any data source.
*/
protocol ActiveRecordType: Writeable, Deletable, Readable {
    
}