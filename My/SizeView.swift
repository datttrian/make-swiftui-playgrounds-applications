//
//  SizeView.swift
//  My
//
//  Created by datttrian on 2024-01-08.
//

import SwiftUI

struct SizeView: View {
    @Binding var pizzaSize:PizzaSize
    
    var body: some View {
        HStack {
            ForEach(PizzaSize.allCases, id:\.self) { size in
                Button(size.rawValue) {
                    pizzaSize = size
                }
                .font(.headline)
                .padding(3)
                .background(
                    .white, in: RoundedRectangle(cornerRadius: 3)
                )
            }
        }
    }
}

#Preview {
    SizeView(pizzaSize: .constant(.small))
}
