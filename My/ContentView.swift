//
//  ContentView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct ContentView: View {
    func pizzaSize(size:Double) -> String {
        if size >= 25 {return "X-Large"}
        if size >= 18 {return "Large"}
        if size >= 12 {return "Medium"}
        return "Small"
    }
    func pizzaOrderText(size:Double) -> Text {
        Text(pizzaSize(size: size) + " Pizza")
    }
    var menu = MenuModel().menu
    var bannerImage:String = surfgirl
    var color = Color.green
    var title:String
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle).bold()
            pizzaOrderText(size: 17).font(.largeTitle)
            Image(bannerImage)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
            Divider()
            MenuItemView(item: menu[0])
            MenuItemView(item: menu[1])
            MenuItemView(item: menu[0], isTitle: true, isVertical: true).padding(.leading)
            MenuItemView(item: menu[1]).padding(.leading)
            Spacer()
        }
        .background(color)
    }
}

#Preview {
    ContentView(title: companyName)
}
