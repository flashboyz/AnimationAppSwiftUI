//
//  TabViews.swift
//  AnimationAppSwiftUI
//
//  Created by Константин Прокофьев on 25.09.2021.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Content View")
                }
            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Shapes View")
                }
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
