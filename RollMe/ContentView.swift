//
//  ContentView.swift
//  RollMe
//
//  Created by gulam ali on 20/07/20.
//  Copyright © 2020 gulam ali. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @State var RandomNumber = 1
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("RollLogo")
                .background(
                    Color.clear
                    .blur(radius: 4.0)
                    .offset(x: -2, y: -2)
                )
                .shadow(color: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), radius: 20.0, x: 10.0, y: 10.0)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20.0, x: -10.0, y: -10.0)
                
                Spacer()
                HStack {
                    DiceImage(n: $RandomNumber)
                    //DiceImage(n: 1)
                }.padding(.horizontal)
                Spacer()
                
                Buttons(CustomColor: Color("Accent"), ButtonTapped: $RandomNumber)
                .padding(.top)
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceImage: View {
    
    @Binding var n : Int
    
   // let n : Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200.0, height: 200.0, alignment: .center)
        
        .background(
            Color.red
            .blur(radius: 4.0)
            .offset(x: -2, y: -2)
        )
        .shadow(color: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), radius: 20.0, x: 5.0, y: 5.0)
        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20.0, x: -15.0, y: -15.0)
            
    }
}


