//
//  PathView.swift
//  AnimationAppSwiftUI
//
//  Created by Константин Прокофьев on 25.09.2021.
//

import SwiftUI

struct PathView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let nearLine = size * 0.1
            let farline = size * 0.9
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farline, y: farline))
                path.addLine(to: CGPoint(x: nearLine, y: farline))
                path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
            }
            .fill(Color( #colorLiteral(red: 0.29404749423, green: 0.5918032527, blue: 0.577714777, alpha: 0.8)))
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle, y: farline))
            }
            .stroke(
                Color.white, style: StrokeStyle(
                    lineWidth: 3,
                    dash: [geometry.size.height / nearLine]
                )
            )
            Image(systemName: "bus.fill")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(nearLine / 110)
                .offset(x: -geometry.size.width / 8)
        }
        .frame(width: width, height: height)
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView(width: 200, height: 200)
    }
}
