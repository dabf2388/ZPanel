//
//  ServerDetailView.swift
//  ZPanel
//
//  Created by Peng on 2024/3/21.
//

import SwiftUI

struct ServerDetailView: View {
    
    @State var currentItem: TopTab = .zjpz
    @Namespace var animationSpace
    
    enum TopTab: String, CaseIterable {
        case zjpz = "主机配置"
        case xtxx = "系统信息"
        case wljk = "网络监控"
//        case jcjk = "进程监控"
        case cpjk = "磁盘监控"
//        case dlrz = "登录日志"
        
    }
    
    var body: some View {
        NavigationStack {
            bodyView()
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("*** 主机详情")
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
        .background(Color(hue: 0.58, saturation: 0.02, brightness: 0.99, opacity: 1.00))
    }
    
    @ViewBuilder
    func bodyView()-> some View {
        VStack(spacing: 0) {
            head()
            TabView(selection: $currentItem) {
                ForEach(TopTab.allCases, id: \.rawValue) { item in
                    switch item {
                        case .zjpz: zhujipeizhi().tag(item)
                        case .xtxx: xitongxinxi().tag(item)
                        case .wljk: wangluojiankong().tag(item)
//                        case .jcjk: jinchengjiankong().tag(item)
                        case .cpjk: cipanjiankong().tag(item)
//                        case .dlrz: denglurizhi().tag(item)
                    }
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .edgesIgnoringSafeArea(.bottom)
    }
    
    @ViewBuilder
    func head()-> some View{
        HStack {
            Image("sign")
                .resizable()
                .frame(width: 48, height: 42)
                .offset(y: -2)
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title2)
                    .foregroundColor(Color("title-0"))
            }
        }
        .overlay(content: {
            HStack(spacing: 24) {
                ForEach(TopTab.allCases, id: \.rawValue) { item in
                    Button {
                        withAnimation {
                            currentItem = item
                        }
                    } label: {
                        Text(item.rawValue)
                            .fontWeight(currentItem == item ? .medium : .regular)
                            .frame(width: 84)
                            .foregroundColor(currentItem == item ? Color.blue: Color.red)
                            .background {
                                VStack{
                                    if(currentItem == item){
                                        Spacer()
                                        Rectangle()
                                            .fill(Color.pink)
                                            .frame(height: 2)
                                            .cornerRadius(2)
                                            .offset(y: 6)
                                            .matchedGeometryEffect(id: "PAGE_ITEM", in: animationSpace)
                                    }
                                }
                            }
                            .animation(.spring(), value: currentItem)
                    }
                }
            }
        })
        .overlay(
            Rectangle()
                .fill(Color.gray.opacity(0.1))
                .frame(height: 1),
            alignment: .bottom
        )
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 12)
        .background(Color("tabbarBG"))
    }
    
    @ViewBuilder
    func zhujipeizhi()-> some View {
        Text("主机配置")
    }
    
    @ViewBuilder
    func xitongxinxi()-> some View {
        Text("系统信息")
    }
    
    @ViewBuilder
    func wangluojiankong()-> some View {
        Text("网络监控")
    }
    
    @ViewBuilder
    func jinchengjiankong()-> some View {
        Text("进程监控")
    }
    
    
    @ViewBuilder
    func cipanjiankong()-> some View {
        Text("磁盘监控")
    }
    
    @ViewBuilder
    func denglurizhi()-> some View {
        Text("登录日志")
    }
    
}

#Preview {
    ServerDetailView()
}
