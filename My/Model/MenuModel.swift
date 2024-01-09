//
//  MenuModel.swift
//  menuModelPlay
//
//  Created by Steven Lipton on 9/14/22.
//

import Foundation
class MenuModel{
    var menu:[MenuItem] = [
        MenuItem(
            id: 0,
            name: "Margherita",
            price: 12.99,
            description: "The classic pizza of Buffalo. Mozzarella, tomatoes, and basil on a Neopolitan crust",
            rating: 5
        ),
        MenuItem(
            id: 1,
            name: "Quattro Formaggi",
            price: 15.99,
            description: "A blend of Asiago, Parmesan, buffalo mozzarella, and Gorgonzola on a Neopolitan crust", rating: 6),
        MenuItem(
            id:2,
            name: "The Big Island ",
            price:18.00,
            description: "A meaty calzone exploding like a volcano. Sausage combined with vegetables, pineapple, and a special lava sauce leaking out the top crater. Definitely share this one.",
            rating:4
        ),
        MenuItem(
            id:3,
            name: "Longboard",
            price:11.00,
            description: " A very long flatbread for vegetarians and vegans, made with olive oil, mushrooms, garlic, fresh ginger, and macadamias, sweetened with lilikoi.",
            rating:5
        ),
        MenuItem(
            id:4,
            name: "Pepperoni",
            price:12.00,
            description: " The New York classic version. A thin crust with pizza sauce, cheese, and pepperoni.",
            rating:5
            
        ),
        MenuItem(
            id:5,
            name: "Chicago Deep Dish",
            price:16.00,
            description: "Chicago Deep Dish: The classic deep dish cheese pizza. 2 inches Thick and filled with sauce and cheese. ",
            rating:4
        ),
        MenuItem(
            id:6,
            name: "Meat Lovers",
            price:18.00,
            description: "A deep dish for the carnivore. Sausage and pepperoni in the classic Chicago deep dish.",
            rating:4
        ),
        MenuItem(
            id:7,
            name: "BBQ Chicken",
            price:15.00,
            description: "BBQ Chicken: Grilled chicken with barbecue sauce, red onions, and peppers on a Neopolitan crust",
            rating:6
        ),
        MenuItem(
            id:8,
            name: "Huli Chicken",
            price:15.00,
            description: "Huli Chicken: Our original Hawaiian street food pizza, with Huli Huli chicken, onions, ginger, crushed macadamia nuts, tomato sauce, and cheese on a classic crust.",
            rating:6
        ),
        MenuItem(
            id:9,
            name: "Hawaiian",
            price:13.00,
            description: "It may be from the mainland, but we make it our own. Pineapple, SPAM, cheese, onions, bean sprouts, and tomato sauce on a thin crust.",
            rating:4
        ),
        
//        MenuItem(
//            id:10,
//            name: "Spam Musubi",
//            price:13.00,
//            description: "Spam, Furikake, Nori on a bed of Sushi rice",
//            rating:3
//        ),
//        MenuItem(
//            id:11,
//            name: "Veggie Musubi",
//            price:14.00,
//            description: "Coffee-Smoked Tofu, Pineapple,  Ube, and Nori on a bed of Sushi rice",
//            rating:4
//        )
        
    ]
}

