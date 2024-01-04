//
//  ContentView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, Pizza!")
            Image(systemName: "guitars")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, guitars!")
        }
    }
}

#Preview {
    ContentView()
}
