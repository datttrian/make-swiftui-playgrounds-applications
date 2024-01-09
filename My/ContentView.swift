//
//  ContentView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct ContentView: View {
    
    func pizzaOrderText(size:Double) -> Text {
        Text(pizzaSizeText(size: size) + " Pizza")
    }
    var menu = MenuModel().menu
    var bannerImage:String = surfgirl
    var color = Color.green
    var title:String
    @State var isSmall:Bool = true
    @State var pizzaSize:Double = 10
    var body: some View {
        VStack {
            Text(title)
                .font(isSmall ? .title2 : .largeTitle).bold()
            pizzaOrderText(size: pizzaSize).font(isSmall ? .headline: .title3)
            
            if !isSmall {
                Image(bannerImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(10)
            }
            
            Button {
                isSmall.toggle()
            } label: {
                Text(isSmall ? "isSmall" : "isBig")
            }
            .padding(5)
            .background(.red, in: RoundedRectangle(cornerRadius: 5))
            HStack {
                ForEach(pizzaSizes, id:\.self) { size in
                    Button(pizzaSizeText(size: size)) {
                        pizzaSize = size
                    }
                    .font(.headline)
                    .padding(3)
                    .background(
                        .white, in: RoundedRectangle(cornerRadius: 3)
                    )
                }
            }
            Divider()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(menu) { item in
                        Image(item.thumbnailName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 40)
                            .padding(3)
                    }
                }
            }
            
            List {
                Text("Menu")
                    .font(.title)
                    .bold()
                ForEach(menu) { item in
                    MenuItemView(item: item, isTitle: false, isVertical: false)
                }
            }
            
            Spacer()
        }
        .background(color)
    }
}

#Preview {
    ContentView(title: companyName)
}
