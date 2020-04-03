//
//  Item.swift
//  TodoeyiOS13
//
//  Created by Valentin Mille on 02/04/2020.
//  Copyright © 2020 Valentin Mille. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    // set the type and the name of the properties that made the link
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
