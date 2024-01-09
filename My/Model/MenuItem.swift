//
//  MenuModel.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

func pizzaSizeText(size:Double) -> String {
    if size >= 25 {return "X-Large"}
    if size >= 18 {return "Large"}
    if size >= 12 {return "Medium"}
    return "Small"
}
let pizzaSizes:[Double] = [10, 12 ,18, 25]

struct MenuItem: Identifiable {
    var id:Int
    var name:String
    var price:Double
    var description:String = "Description here"
    var rating:Int = 3
    var imageName: String {
        return "\(id)_lg"
    }
    var thumbnailName: String {
        return "\(id)_sm"
    }
    var formattedPrice:String {
        price.formatted(.currency(code: "USD"))
    }
}

let testMenuItem1 = MenuItem(
    id: 0,
    name: "Margherita",
    price: 12.99,
    description: "The classic pizza of Buffalo. Mozzarella, tomatoes, and basil on a Neopolitan crust",
    rating: 5
)

let testMenuItem2 = MenuItem(id: 2, name: "Pepperoni", price: 9.00)

class OldMenuModel {
    var menu: [MenuItem] = [
        testMenuItem1,
        testMenuItem2
    ]
}
