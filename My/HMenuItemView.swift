//
//  HMenuItemView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct HMenuItemView: View {
    //    var imageName:String = pizzaImg
    var item:MenuItem
    var isTitle = false
    var body: some View {
        HStack {
            Image(systemName: item.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 150, maxHeight: 150)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment:.leading) {
                Text(item.name)
                    .font(isTitle ? .title2 : .headline)
                if !isTitle {
                    Text("Menu Description")
                        .font(.caption)
                }
                Text(item.formattedPrice)
            }
            Spacer()
        }
    }
}

#Preview {
    HMenuItemView(item: testMenuItem1)
}
