//
//  MenuItemView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct MenuItemView: View {
    var imageName:String = pizzaImg
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(maxWidth: 150, maxHeight: 150)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment:.leading) {
                Text("Menu Item")
                Text("Menu Description")
            }
            Spacer()
        }
    }
}

#Preview {
    MenuItemView()
}
