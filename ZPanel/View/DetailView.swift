//
//  DetailView.swift
//  ZPanel
//
//  Created by codeun.com on 18/3/24.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            NavigationView {
                
                ZStack {
                    VStack {
                        vpsCellList()
                        Spacer()
                    }
                    .padding(.top, 12)
                    .navigationBarTitleDisplayMode(.inline)
                    
                    
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("主机")
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button{
                            
                        }label: {
                            Label("History", systemImage: "gear")
                        }
                    }
                }
                .background(Color(hue: 0.58, saturation: 0.02, brightness: 0.99, opacity: 1.00))
            }
        }
    }
    
    @ViewBuilder
    func vpsCellList() -> some View {
        VStack {
            VStack(spacing: 6) {
                Group {
                    HStack {
                        Text("美国·圣何塞")
                            .font(.caption)
                            .fontWeight(.medium)
                        Spacer()
                        
                    }
                    .padding(.top, 12)
                    HStack {
                        Text("CPU: 1核 - 内存: 2GB - 系统盘: 50GB")
                            .font(.caption2)
                        Spacer()
                    }
                    HStack {
                        Text("公网IPv4: 1.14.121.45")
                            .font(.caption2)
                        Spacer()
                    }
                    HStack {
                        Text("到期时间: 2028-05-20")
                            .font(.caption2)
                        Spacer()
                    }
                }
                .padding(.horizontal, 16)
            }
            .background(Color(hue: 0.67, saturation: 0.00, brightness: 1.00, opacity: 1.00))
            .cornerRadius(8)
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    DetailView()
}
