//
//  GradientRectangle.swift
//  AnimationAppSwiftUI
//
//  Created by Константин Прокофьев on 25.09.2021.
//

import SwiftUI

struct GradientRectangle: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            ForEach(0..<3) { iteration in
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(colors: [.red, .cyan],
                                       startPoint: UnitPoint(x: 0, y: 1),
                                       endPoint: UnitPoint(x: 1, y: 0))
                    )
                    .shadow(color: .red, radius: 1, x: -3, y: 3)
                    .shadow(color: .blue, radius: 1, x: 3, y: -3)
                    .rotationEffect(.degrees(Double(iteration) * 67))
                    .frame(width: width * 0.7, height: height * 0.7)
            }
            Image(systemName: "flame")
                .resizable()
                .frame(width: width * 0.4, height: height * 0.4)
                .opacity(0.6)
        }
        .frame(width: width, height: height)
    }
}

struct GradientRectangle_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangle(width: 200, height: 200)
    }
}
