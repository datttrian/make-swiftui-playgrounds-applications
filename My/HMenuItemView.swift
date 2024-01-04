//
//  HMenuItemView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct HMenuItemView: View {
    var imageName:String = pizzaImg
    var isTitle = false
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(maxWidth: 150, maxHeight: 150)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment:.leading) {
                Text("Menu Item")
                    .font(isTitle ? .title2 : .headline)
                if !isTitle {
                    Text("Menu Description")
                        .font(.caption)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    HMenuItemView()
}
