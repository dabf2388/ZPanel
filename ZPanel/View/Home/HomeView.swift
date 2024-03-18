//
//  HomeView.swift
//  ZPanel
//
//  Created by 彭向前 on 18/3/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                vpsList()
                    .padding(.top, 20)
                Spacer()
                
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("仪表盘")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    NavigationLink {
                        SettingView()
                    } label: {
                        Image("logo")
                            .resizable()
                            .frame(width: 40, height: 32)
                            .scaledToFit()
                            .padding(.leading, 8)
                    }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button{
                        
                    }label: {
                        Label("History", systemImage: "gear")
                    }
                }
            }
            .navigationBarColor(Color("navigationBarBG"))
        }
    }
    
    @ViewBuilder
    func vpsList() -> some View {
        
    }
}

#Preview {
    HomeView()
}
