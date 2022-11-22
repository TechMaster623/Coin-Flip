//
//  ContentView.swift
//  Coin Flip
//
//  Created by Faiz Ali on 11/18/22.
//

import SwiftUI
struct ContentView: View {
    @State private var heads = Int()
    @State private var tails = Int()
    var body: some View {
        VStack {
            Text("Coin Flip")
                .fontWeight(.bold)
                .font(.title)
                Image("Heads")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
