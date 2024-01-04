//
//  ContentView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct ContentView: View {
    let thing = 5 + 3 * 2
    var body: some View {
        let thing2 = thing + 5
        VStack {
            Text("Hello, Pizza!")
            Image(systemName: "\(thing - 1).square")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, \(thing2)!")
        }
    }
}

#Preview {
    ContentView()
}
