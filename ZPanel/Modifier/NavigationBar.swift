//
//  NavigationBar.swift
//  ZPanel
//
//  Created by 彭向前 on 18/3/24.
//

import SwiftUI

extension View {
    func navigationBarColor(_ backgroundColor: Color) -> some View {
        return self.modifier(NavigationBarColor(backgroundColor: backgroundColor))
    }
}

struct NavigationBarColor: ViewModifier {
    var backgroundColor: Color

    init(backgroundColor: Color) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = UIColor(backgroundColor)
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }

    func body(content: Content) -> some View {
        content
            .background(backgroundColor)
            .edgesIgnoringSafeArea(.top)
    }
}
