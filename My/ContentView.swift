//
//  ContentView.swift
//  My
//
//  Created by datttrian on 2024-01-03.
//

import SwiftUI

struct ContentView: View {
    //    let thing = 5 + 3 * 2
    //    var body: some View {
    //        let thing2 = thing + 5
    //        let myMax = "\(max(thing, thing2))"
    //        VStack {
    //            Text("Hello, Pizza!").font(.largeTitle).bold()
    //            Image(systemName: "\(thing).square")
    //                .imageScale(.large)
    //                .foregroundColor(.red).font(.title)
    //            Text("Hello, \(thing2)!")
    //            Text(myMax.appending(" is bigger")).bold()
    //            Spacer()
    //        }
    //    }
    var body: some View {
        VStack {
            Text("Huli Pizza Company")
                .font(.largeTitle).bold()
            Image(systemName: "rectangle.fill")
                .imageScale(.large)
                .font(.largeTitle)
                .foregroundColor(Color.black)
            Divider()
            MenuItemView()
            MenuItemView()
            Spacer()
        }
        .background(Color.green)
    }
}

#Preview {
    ContentView()
}
