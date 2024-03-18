//
//  TabBarModel.swift
//  Polaris
//
//  Created by codeun.com on 18/3/24.
//

import SwiftUI

let tabBarList: [TabBarModel] = [
    TabBarModel(id: 1, title: "仪表盘", icon: "house.fill"),
    TabBarModel(id: 2, title: "数据", icon: "hand.raised.fill"),
    TabBarModel(id: 3, title: "设置", icon: "person.fill")
]

struct TabBarModel {
    let id: Int
    let title: String
    let icon: String
}
