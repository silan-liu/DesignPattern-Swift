//
//  Decorator.swift
//  DP
//
//  Created by silan on 16/1/30.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

class Decorator: Component {
    
    var obj: Component
    
    init(obj: Component) {
        self.obj = obj
    }
    
    func getDescription() -> String {
        return obj.getDescription()
    }
    
    func cost() -> Double {
        return obj.cost()
    }
}