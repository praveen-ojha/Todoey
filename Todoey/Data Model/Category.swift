//
//  Category.swift
//  Todoey
//
//  Created by Praveen Ojha on 23/7/18.
//  Copyright © 2018 Praveen Ojha. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    
    //Creating relationship one to many in Realm DB between Category and Item - this is forward relationship
    let items = List<Item>()
}
