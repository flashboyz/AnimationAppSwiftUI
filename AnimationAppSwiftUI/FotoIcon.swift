//
//  FotoIcon.swift
//  AnimationAppSwiftUI
//
//  Created by Константин Прокофьев on 26.09.2021.
//

import SwiftUI

struct FotoIcon: View {
    let width : CGFloat
    let height : CGFloat
    let color: [Color] = [.orange, .yellow, .blue, .cyan, .green, .red, .pink, .indigo ]
    
    var size: CGFloat {
        min(width, height)
    }
    
    var body: some View {
        VStack() {
            Spacer()
            GeometryReader { geometry in
                ForEach(0..<8) { iteration in
                    Capsule()
                        .fill(color[iteration].opacity(0.5 + Double(iteration) / 100))
                        .rotationEffect(.degrees(Double(iteration) * 45), anchor: .zero)
                }
            }
            .frame(width: width / 5, height: height / 2.5)
            .shadow(color: .black, radius: 3, x: 0, y: 0)
            .blur(radius: 0.1)
            .shadow(color: Color("Color1"), radius: 4, x: 0, y: 0)
            Spacer()
        }
        .padding(.top, height / 2.5)
        .padding(.leading, width / 5)
    }
}

struct FotoIcon_Previews: PreviewProvider {
    static var previews: some View {
        FotoIcon(width: 250, height: 250)
    }
}
