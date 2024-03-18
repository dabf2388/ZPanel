//
//  DashboardModel.swift
//  ZPanel
//
//  Created by codeun.com on 18/3/24.
//

import SwiftUI

class HomeModel {
    var id: Int = 0
    var title: String = ""
    var icon: String = ""
    var expand: Bool = false
    var size: Int = 0
    
    init(id: Int, title: String, icon: String, expand: Bool, size: Int) {
        self.id = id
        self.title = title
        self.icon = icon
        self.expand = expand
        self.size = size
    }
}

