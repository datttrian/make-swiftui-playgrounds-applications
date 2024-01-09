//
//  MenuItemView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct MenuItemView: View {
    //    var imageName:String = pizzaImg
    var item:MenuItem
    var isTitle = false
    var isVertical = false
    var body: some View {
        if isVertical {
            VMenuItemView(item: item, isTitle: isTitle)
        } else {
            HMenuItemView(item: item, isTitle: isTitle)
        }
    }
}

#Preview {
    MenuItemView(item: testMenuItem1)
}
