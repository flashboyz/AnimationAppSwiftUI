//
//  MainView.swift
//  AnimationAppSwiftUI
//
//  Created by Константин Прокофьев on 25.09.2021.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    let animationsDurations = 0.6
    
    var body: some View {
        VStack {
            Button(action: {showAward.toggle()}) {
                HStack{
                    Text(showAward ? "Hide Awards" : "Show Awards")
                    Spacer()
                    ZStack {
                        if !showAward {
                            Image(systemName: "eye")
                        } else {
                            Image(systemName: "eye.slash")
                        }
                    }
                    .scaleEffect(showAward ? 1.3 : 1)
                }
            }
            Spacer()
            GradientRectangle(width: 250, height: 250)
                .padding(.top, 50)
                .opacity(showAward ? 1 : 0)
                .animation(.easeInOut(duration: animationsDurations), value: showAward)
            FotoIcon(width: 250, height: 250)
                .opacity(showAward ? 1 : 0)
                .scaleEffect(showAward ? 1 : 0)
                .rotationEffect(Angle.degrees(showAward ? 270 : 980))
                .rotation3DEffect( showAward ? .degrees(25) : .degrees(90), axis: (x: 1, y: 0, z: 0))
                .animation(.interpolatingSpring(mass: 1.7, stiffness: 10, damping: 20, initialVelocity: 0), value: showAward)
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
