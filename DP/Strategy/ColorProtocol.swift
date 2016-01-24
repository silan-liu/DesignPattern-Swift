//
//  ColorProtocol.swift
//  DP
//
//  Created by silan on 16/1/16.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

protocol ColorProtocol {
    func whichColor() -> String
}

struct RedColor: ColorProtocol {
    func whichColor() -> String {
        return "Red"
    }
}

struct GreenColor: ColorProtocol {
    func whichColor() -> String {
        return "Green"
    }
}