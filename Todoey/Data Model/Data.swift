//
//  Data.swift
//  Todoey
//
//  Created by Praveen Ojha on 23/7/18.
//  Copyright © 2018 Praveen Ojha. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
}
