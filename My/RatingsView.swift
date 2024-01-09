//
//  RatingsView.swift
//  My
//
//  Created by datttrian on 2024-01-08.
//

import SwiftUI

struct RatingsView: View {
    var rating:Int = 5
    var body: some View {
        HStack {
            ForEach(0..<rating, id:\.self) { star in
                Image(systemName: "star")
                    .font(.caption2)
            }
        }
    }
}

#Preview {
    RatingsView()
}
