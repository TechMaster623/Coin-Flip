//
//  SwiftUIView.swift
//  Coin Flip
//
//  Created by Faiz Ali on 12/16/22.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var imageHolder = ""// this variable stores the heads and tails images
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)// this here makes my full screen green
            VStack {
                Text("Coin Flip")// This here is the title for my project
                    .fontWeight(.bold)
                    .font(.title)
                    .font(.system(size: 36))
                Spacer()
                Image(imageHolder)// this is when the button pressed with the two lines below helping it fit properly on the screen
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Button(action: flipCoin) {// this is my main button and it performs the function flip coin while the text below is the title of the button
                    Text("Flip Coin")
                }
                .padding()
                .border(.black, width: 5)//helps give a border around the button
                .font(.system(size: 30))
            }
         }
    }
    func flipCoin() {
        let randomNumber =
        Int.random(in: 0...1)// it randomizes between 0 and 1
        if randomNumber == 0 {// if the number is 0 it will display a heads
            imageHolder  = "Heads"
        }
        else {
            imageHolder = "Tails"// if not or in other words lands on 1 it displays tails
        }
    }
    
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView()
        }
    }
}
