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
    
    var size: CGFloat {
        min(width, height)
    }
    
    var body: some View {
        VStack() {
            Spacer()
            GeometryReader { geometry in
                Capsule()
                    .fill(Color.pink.opacity(0.5))
                Capsule()
                    .fill(Color.orange.opacity(0.52))
                    .rotationEffect(.degrees(45), anchor: .zero)
                Capsule()
                    .fill(Color.yellow.opacity(0.53))
                    .rotationEffect(.degrees(90), anchor: .zero)
                Capsule()
                    .fill(Color.green.opacity(0.54))
                    .rotationEffect(.degrees(135), anchor: .zero)
                Capsule()
                    .fill(Color.cyan.opacity(0.55))
                    .rotationEffect(.degrees(180), anchor: .zero)
                Capsule()
                    .fill(Color.blue.opacity(0.56))
                    .rotationEffect(.degrees(225), anchor: .zero)
                Capsule()
                    .fill(Color.indigo.opacity(0.57))
                    .rotationEffect(.degrees(270), anchor: .zero)
                Capsule()
                    .fill(Color.red.opacity(0.58))
                    .rotationEffect(.degrees(315), anchor: .zero)
            }
            .frame(width: width / 5, height: height / 2.5)
            .shadow(color: .black, radius: 3, x: 0, y: 0)
            .blur(radius: 0.1)
            .shadow(color: .gray, radius: 4, x: 0, y: 0)
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
