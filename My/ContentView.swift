//
//  ContentView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct ContentView: View {
    
    func pizzaOrderText(size:PizzaSize) -> Text {
        if selectedPizza != nil {
            return Text(size.rawValue + " " + selectedPizza!.name + " Pizza")
        } else {
            return Text("Select a Pizza")
        }
        
    }
    var menu = MenuModel().menu
    var bannerImage:String = surfgirl
    var color = Color.green
    var title:String
    @State var isSmall:Bool = true
    @State var pizzaSize:PizzaSize = .small
    @State var selectedPizza: MenuItem! = nil
    var body: some View {
        VStack {
            Text(title)
                .font(isSmall ? .title2 : .largeTitle).bold()
            pizzaOrderText(size: pizzaSize).font(isSmall ? .headline: .title3)
            
            if !isSmall {
                if let pizza = selectedPizza {
                    Image("\(pizza.id)_lg")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(10)
                } else {
                    Image(bannerImage)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(10)
                }
                
            }
            
            Button {
                isSmall.toggle()
            } label: {
                Text(isSmall ? "isSmall" : "isBig")
            }
            .padding(5)
            .background(.red, in: RoundedRectangle(cornerRadius: 5))
            SizeView(pizzaSize: $pizzaSize)
            Divider()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(menu) { item in
                        Image(item.thumbnailName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 40)
                            .padding(3)
                            .onTapGesture {
                                selectedPizza = item
                            }
                    }
                }
            }
            
            List {
                Text("Menu")
                    .font(.title)
                    .bold()
                ForEach(menu) { item in
                    MenuItemView(item: item, isTitle: false, isVertical: false)
                        .onTapGesture {
                            selectedPizza = item
                        }
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
