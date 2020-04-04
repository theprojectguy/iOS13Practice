//
//  Category.swift
//  TodoeyiOS13
//
//  Created by Valentin Mille on 02/04/2020.
//  Copyright © 2020 Valentin Mille. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var color: String?
    let items = List<Item>()
}
