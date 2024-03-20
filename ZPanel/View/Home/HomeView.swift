//
//  HomeView.swift
//  ZPanel
//
//  Created by 彭向前 on 18/3/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            NavigationView {
                
                ZStack {
                    VStack {
                        vpsList()
                        sshJK()
                        statJK()
                        netJK()
                        Spacer()
                    }
                    .padding(.top, 12)
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
                                .navigationBarHidden(true)
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
        }
    }
    
    @ViewBuilder
    func vpsList() -> some View {
        HStack(spacing: 16) {
            HStack(spacing: 4) {
                Text("阿里云-北京")
                    .font(.caption2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding(.leading, 4)
                Image(systemName: "checkmark")
                    .font(.caption2)
                    .foregroundStyle(Color.white)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(Color(red: 0.36, green: 0.79, blue: 0.96, opacity: 1.00))
            .cornerRadius(4)
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
            
            HStack {
                Text("腾讯云-上海")
                    .font(.caption2)
                    .fontWeight(.medium)
                    .foregroundStyle(Color(red: 0.19, green: 0.20, blue: 0.20, opacity: 1.00))
                    .padding(.leading, 4)
                Circle()
                    .frame(width: 6, height: 6)
                    .cornerRadius(6)
                    .foregroundStyle(Color.green)
                    .padding(.trailing, 2)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
            .cornerRadius(4)
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
            Spacer()
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 12)
    }
    
    @ViewBuilder
    func sshJK() -> some View {
        VStack {
            VStack(spacing: 16) {
                HStack(spacing: 0) {
                    HStack(alignment: .bottom, spacing: 12) {
                        Text("登录监控")
                            .font(.subheadline)
                            .fontWeight(.medium)
                        Text("15:26:37")
                            .font(.system(size: 11))
                            .foregroundStyle(Color(red: 0.71, green: 0.71, blue: 0.71, opacity: 1.00))
                    }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.body)
                        .foregroundStyle(Color(red: 0.68, green: 0.68, blue: 0.70, opacity: 1.00))
                        
                }
                .padding(.horizontal, 16)
                .padding(.top, 16)
                Divider()
                HStack(spacing: 0) {
                    VStack(spacing: 8) {
                        Text("0")
                            .font(.title)
                        Text("登录连接数")
                            .font(.footnote)
                    }
                    Spacer()
                    VStack(spacing: 8) {
                        Text("0")
                            .font(.title)
                        Text("今日登录数")
                            .font(.footnote)
                    }
                    Spacer()
                    VStack(spacing: 8) {
                        Text("0")
                            .font(.title)
                        Text("登录告警数")
                            .font(.footnote)
                    }
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 8)
                .padding(.bottom, 16)
                
            }
            .foregroundStyle(Color.black)
            .background(Color(hue: 0.67, saturation: 0.00, brightness: 1.00, opacity: 1.00))
            .cornerRadius(8)
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
            .padding(.horizontal, 16)
        }
    }
    
    
    @ViewBuilder
    func statJK() -> some View {
        VStack {
            VStack(spacing: 16) {
                HStack(spacing: 0) {
                    HStack(alignment: .bottom, spacing: 12) {
                        Text("系统监控")
                            .font(.subheadline)
                            .fontWeight(.medium)
                        Text("15:26:37")
                            .font(.system(size: 11))
                            .foregroundStyle(Color(red: 0.71, green: 0.71, blue: 0.71, opacity: 1.00))
                    }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.body)
                        .foregroundStyle(Color(red: 0.68, green: 0.68, blue: 0.70, opacity: 1.00))
                        
                }
                .padding(.horizontal, 16)
                .padding(.top, 16)
                Divider()
                HStack(spacing: 0) {
                    VStack(spacing: 8) {
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("67")
                                .font(.title)
                            Text("%")
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .offset(y: -4)
                        }
                        Text("CPU负载")
                            .font(.footnote)
                    }
                    Spacer()
                    VStack(spacing: 8) {
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("86")
                                .font(.title)
                                .foregroundStyle(Color.orange)
                            Text("%")
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .offset(y: -4)
                        }
                        Text("内存占用")
                            .font(.footnote)
                    }
                    Spacer()
                    VStack(spacing: 8) {
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("14")
                                .font(.title)
                                .foregroundStyle(Color.green)
                            Text("%")
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .offset(y: -4)
                        }
                        Text("磁盘空间")
                            .font(.footnote)
                    }
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 8)
                .padding(.bottom, 16)
            }
            .foregroundStyle(Color.black)
            .background(Color(hue: 0.67, saturation: 0.00, brightness: 1.00, opacity: 1.00))
            .cornerRadius(8)
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
            .padding(.horizontal, 16)
        }
        .padding(.top, 8)
    }
    
    
    @ViewBuilder
    func netJK() -> some View {
        VStack {
            VStack(spacing: 16) {
                HStack(spacing: 0) {
                    HStack(alignment: .bottom, spacing: 12) {
                        Text("网络监控")
                            .font(.subheadline)
                            .fontWeight(.medium)
                        Text("15:26:37")
                            .font(.system(size: 11))
                            .foregroundStyle(Color(red: 0.71, green: 0.71, blue: 0.71, opacity: 1.00))
                    }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.body)
                        .foregroundStyle(Color(red: 0.68, green: 0.68, blue: 0.70, opacity: 1.00))
                        
                }
                .padding(.horizontal, 16)
                .padding(.top, 16)
                Divider()
                HStack(spacing: 0) {
                    VStack(spacing: 8) {
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("723")
                                .font(.title)
                            Text("KB/s")
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .offset(y: -4)
                        }
                        HStack(spacing: 4) {
                            Image(systemName: "arrow.up")
                            Text("上行速度")
                        }
                        .font(.footnote)
                    }
                    Spacer()
                    VStack(spacing: 8) {
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("986")
                                .font(.title)
                            Text("MB")
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .offset(y: -4)
                        }
                        Text("今日上行")
                            .font(.footnote)
                    }
                    Spacer()
                    VStack(spacing: 8) {
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("165")
                                .font(.title)
                            Text("GB")
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .offset(y: -4)
                        }
                        Text("本月上行")
                            .font(.footnote)
                    }
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 8)
                
                HStack(spacing: 0) {
                    VStack(spacing: 8) {
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("1.84")
                                .font(.title)
                            Text("MB/s")
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .offset(y: -4)
                        }
                        HStack(spacing: 4) {
                            Image(systemName: "arrow.down")
                            Text("下行速度")
                        }
                        .font(.footnote)
                    }
                    Spacer()
                    VStack(spacing: 8) {
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("31")
                                .font(.title)
                            Text("GB")
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .offset(y: -4)
                        }
                        Text("今日下行")
                            .font(.footnote)
                    }
                    Spacer()
                    VStack(spacing: 8) {
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("671")
                                .font(.title)
                            Text("GB")
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .offset(y: -4)
                        }
                        Text("本月下行")
                            .font(.footnote)
                    }
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 8)
                .padding(.bottom, 16)
            }
            .foregroundStyle(Color.black)
            .background(Color(hue: 0.67, saturation: 0.00, brightness: 1.00, opacity: 1.00))
            .cornerRadius(8)
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
            .padding(.horizontal, 16)
        }
        .padding(.top, 8)
    }
}

#Preview {
    MainView()
}
