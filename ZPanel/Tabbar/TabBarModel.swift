//
//  TabBarModel.swift
//  Polaris
//
//  Created by codeun.com on 18/3/24.
//

import SwiftUI

let tabBarList: [TabBarModel] = [
    TabBarModel(id: 1, title: "仪表盘", icon: "light.panel.fill"),
    TabBarModel(id: 2, title: "主机", icon: "externaldrive.connected.to.line.below.fill"),
    TabBarModel(id: 3, title: "功能", icon: "lightbulb.2.fill")
]

struct TabBarModel {
    let id: Int
    let title: String
    let icon: String
}
