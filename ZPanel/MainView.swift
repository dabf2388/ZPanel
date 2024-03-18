//
//  MainView.swift
//  ZPanel
//
//  Created by codeun.com on 18/3/24.
//

import SwiftUI

struct MainView: View {
    
    @State var currentTab = 0
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $currentTab) {
                HomeView().tag(1)
                DetailView().tag(2)
                SettingView().tag(3)
            }
            TabBarView(currentTab: $currentTab)
        }
    }
}

#Preview {
    MainView()
}