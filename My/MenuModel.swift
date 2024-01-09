//
//  MenuModel.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct MenuItem: Identifiable {
    var id:Int
    var name:String
    var price:Double
    var imageName: String {
        return "\(id).circle"
    }
    var formattedPrice:String {
        price.formatted(.currency(code: "USD"))
    }
}

let testMenuItem1 = MenuItem(id: 1, name: "Cheese", price: 7.00)
let testMenuItem2 = MenuItem(id: 2, name: "Pepperoni", price: 9.00)

class MenuModel {
    var menu: [MenuItem] = [
        testMenuItem1,
        testMenuItem2
    ]
}
