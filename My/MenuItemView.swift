//
//  MenuItemView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct MenuItemView: View {
    var imageName:String = pizzaImg
    var isTitle = false
    var isVertical = false
    var body: some View {
        if isVertical {
            VMenuItemView(imageName: imageName, isTitle: isTitle)
        } else {
            HMenuItemView(imageName: imageName, isTitle: isTitle)
        }
    }
}

#Preview {
    MenuItemView()
}
