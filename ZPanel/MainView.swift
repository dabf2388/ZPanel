//
//  MainView.swift
//  ZPanel
//
//  Created by codeun.com on 18/3/24.
//

import SwiftUI

struct MainView: View {
    
    @State var currentTab = 1
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationStack {
            
            VStack(spacing: 0) {
                TabView(selection: $currentTab) {
                    HomeView().tag(1)
                    ServerView().tag(2)
                    SettingView().tag(3)
                }
                TabBarView(currentTab: $currentTab)
            }
        }
    }
}

#Preview {
    MainView()
}
