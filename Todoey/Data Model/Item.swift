//
//  Item.swift
//  Todoey
//
//  Created by Praveen Ojha on 23/7/18.
//  Copyright © 2018 Praveen Ojha. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated = Date()
    //Here is the parent relationship in Realm AKA inverse relationship <- many to one
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")

}
