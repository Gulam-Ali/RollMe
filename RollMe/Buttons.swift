//
//  Buttons.swift
//  NeumorhicBtn
//
//  Created by gulam ali on 19/07/20.
//  Copyright © 2020 gulam ali. All rights reserved.
//

import SwiftUI

struct Buttons: View {
    
    var CustomColor : Color
   
    @Binding var ButtonTapped : Int
    
    var body: some View {
        
        ZStack{
            
            Text("Roll Dice")
                .foregroundColor(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
                .font(.system(size: 20.0, weight: .semibold, design: .rounded))
                .frame(width: 300.0, height: 70.0, alignment: .center)
                .background(
                    ZStack {
                        CustomColor
                        RoundedRectangle(cornerRadius: 40.0, style: .circular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .blur(radius: 4.0)
                            .offset(x: -8, y: -8)
                        
                        RoundedRectangle(cornerRadius: 40.0, style: .circular)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [CustomColor, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                            .padding(2.0)
                            .blur(radius: 2.0)
                    }
            )
                .clipShape(RoundedRectangle(cornerRadius: 40.0, style: .circular))
                .shadow(color: CustomColor, radius: 20.0, x: 10.0, y: 10.0)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20.0, x: -10.0, y: -10.0)
                .onTapGesture {
                    
                    let numberr = Int.random(in: 1...6)
                    print("Am tapped",numberr)
                    self.ButtonTapped = numberr
                }
        }
        
        
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons(CustomColor: Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)), ButtonTapped: .constant(1))
            .previewLayout(.sizeThatFits)
        //.environment(\.colorScheme, .dark)
    }
}



