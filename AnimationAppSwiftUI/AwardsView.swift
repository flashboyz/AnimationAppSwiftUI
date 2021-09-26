//
//  AwardsView.swift
//  AnimationAppSwiftUI
//
//  Created by Константин Прокофьев on 25.09.2021.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GradientRectangle(width: 250, height: 250)
                    PathView(width: 250, height: 250)
                    CurvesView(width: 250, height: 250)
                    FotoIcon(width: 250, height: 250)
                }
            }
            .navigationTitle("Awards")
            .font(.largeTitle)
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
