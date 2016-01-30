//
//  DarkRoast.swift
//  DP
//
//  Created by silan on 16/1/30.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

// 具体被装饰者，深焙咖啡
class DarkRoast: Component {
    
    func getDescription() -> String {
        return "DarkRoast"
    }
    
    func cost() -> Double {
        return 10.0
    }
}