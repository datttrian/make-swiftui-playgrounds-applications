//
//  VMenuItemView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct VMenuItemView: View {
    //    var imageName:String = pizzaImg
    var item:MenuItem
    var isTitle = false
    var body: some View {
        VStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
            //                .frame(maxWidth: 150, maxHeight: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
            RatingsView(rating: item.rating)
            HStack {
                Text(item.name)
                    .font(isTitle ? .title2 : .headline)
                Text(item.formattedPrice)
            }
            .padding()
            if !isTitle {
                Text(item.description)
                    .font(.body)
            }
            Spacer()
        }
    }
}

#Preview {
    HMenuItemView(item: testMenuItem1)
}
