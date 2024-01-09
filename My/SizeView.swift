//
//  SizeView.swift
//  My
//
//  Created by datttrian on 2024-01-08.
//

import SwiftUI

struct SizeView: View {
    @Binding var pizzaSize:Double
    var body: some View {
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
    }
}

#Preview {
    SizeView(pizzaSize: .constant(10))
}
