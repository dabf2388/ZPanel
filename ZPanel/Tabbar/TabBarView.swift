//
//  TabBarView.swift
//  Polaris
//
//  Created by codeun.com on 18/3/24.
//

import SwiftUI

struct TabBarView: View {
    @Binding var currentTab: Int
    @State private var scaleValue = 1.0
    @State private var rotationDegrees = 0.0
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                ForEach(tabBarList, id: \.id) { item in
                    Button {
                        withAnimation {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                currentTab = item.id
                            }
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                scaleValue = 0.75
                            }
                            withAnimation(.linear(duration: 0.2)) {
                                rotationDegrees += 10
                            }
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                scaleValue = 1.25
                            }
                            withAnimation(.linear(duration: 0.2)) {
                                rotationDegrees -= 10
                            }
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                scaleValue = 1.0
                            }
                        }
                    } label: {
                        VStack(spacing: 6) {
                            Image(systemName: item.icon)
                                .font(.title2)
                                .scaleEffect(item.id == currentTab ? scaleValue : 1)
                                .rotationEffect(Angle(degrees: item.id == currentTab ? rotationDegrees : 0))
                            Text(item.title)
                                .font(.caption)
                        }
                        .foregroundColor(currentTab == item.id ? .orange : .gray)
                        .frame(maxWidth: .infinity)
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal)
        .padding(.top, 8)
        .overlay(
            Rectangle()
                .fill(Color.gray.opacity(0.1))
                .frame(height: 1),
            alignment: .top
        )
        .background(.white)
    }
}

#Preview {
    MainView()
}
