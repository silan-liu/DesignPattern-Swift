//
//  Whip.swift
//  DP
//
//  Created by silan on 16/1/30.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

// 奶泡
class Whip: Decorator {
    override func getDescription() -> String {
        return self.obj.getDescription() + " Whip"
    }
    
    override func cost() -> Double {
        return 4.0 + self.obj.cost()
    }
}