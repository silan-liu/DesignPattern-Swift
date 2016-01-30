//
//  Mocha.swift
//  DP
//
//  Created by silan on 16/1/30.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

// 摩卡
class Mocha: Decorator {
    override func getDescription() -> String {
        return self.obj.getDescription() + " Mocha"
    }
    
    override func cost() -> Double {
        return 3.0 + self.obj.cost()
    }
}