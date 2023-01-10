//
//  ContentView.swift
//  Coin Flip
//
//  Created by Faiz Ali on 11/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         NavigationView {
                 ZStack {
                Color.green.edgesIgnoringSafeArea(.all)// makes background green
                VStack {
                    Text("Welcome to Coin Flip")// is the title of the welcome screen
                        .fontWeight(.bold)
                        .font(.title)
                        .font(.system(size: 36))
                    Spacer()
                    Image("Coin Background")// this is a welcome image
                    Spacer()
                    NavigationLink("Next Screen", destination:  SwiftUIView())// the link taht takes you to the next screen.%
                        .padding()
                        .border(.black, width: 5)
                        .font(.system(size: 30))
                }
            }
        }
    }
}
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

