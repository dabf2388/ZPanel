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
            
            ZStack {
                VStack {
                    vpsList()
                    Spacer()
                }
                .padding(.top, 20)
                .navigationBarTitleDisplayMode(.inline)
                    
                
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
        }
    }
    
    @ViewBuilder
    func vpsList() -> some View {
        VStack(spacing: 16) {
            HStack(spacing: 0) {
                Text("监控")
                    .font(.caption)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.body)
            }
            .padding(.horizontal, 20)
            Divider()
        }
//        .background(Color.red)
        .border(Color.black)
    }
}

#Preview {
    MainView()
}
