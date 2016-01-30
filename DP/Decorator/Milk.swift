//
//  Milk.swift
//  DP
//
//  Created by silan on 16/1/30.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

// 牛奶
class Milk: Decorator {
    
    override func getDescription() -> String {
        return self.obj.getDescription() + " Milk"
    }
    
    override func cost() -> Double {
        return 2.0 + self.obj.cost()
    }
}