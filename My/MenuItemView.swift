//
//  MenuItemView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        HStack {
            Image(systemName: "circle.fill")
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
