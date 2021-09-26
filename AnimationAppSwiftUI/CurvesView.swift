//
//  CurvesView.swift
//  AnimationAppSwiftUI
//
//  Created by Константин Прокофьев on 25.09.2021.
//

import SwiftUI

struct CurvesView: View {
    let width : CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: size, y: 0))
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: size, y: size))
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: 0, y: size))
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine),
                    control: CGPoint(x: 0, y: 0))
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [ .red, .yellow ]),
                    center: .center,
                    startRadius: geometry.size.width * 0.03,
                    endRadius: geometry.size.width * 0.37
                )
            )
            Path { path in
                path.addArc(
                    center: CGPoint(x: nearLine, y: nearLine),
                    radius: middle,
                    startAngle: .degrees(90),
                    endAngle: .degrees(0),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: farLine, y: nearLine),
                    radius: middle,
                    startAngle: .degrees(180),
                    endAngle: .degrees(90),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: farLine, y: farLine),
                    radius: middle,
                    startAngle: .degrees(270),
                    endAngle: .degrees(180),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: nearLine, y: farLine),
                    radius: middle,
                    startAngle: .degrees(0),
                    endAngle: .degrees(270),
                    clockwise: true
                )
            }
            .stroke(Color.yellow, lineWidth: 2)
        }
        .frame(width: width, height: height)
        .shadow(color: Color( #colorLiteral(red: 0.9754658341, green: 0.2032977045, blue: 0.2997252345, alpha: 0.7)) , radius: 12 )
    }
}

struct CurvesView_Previews: PreviewProvider {
    static var previews: some View {
        CurvesView(width: 200, height: 200)
    }
}
