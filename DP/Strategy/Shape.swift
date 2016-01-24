//
//  Shape.swift
//  DP
//
//  Created by silan on 16/1/16.
//  Copyright © 2016年 XY. All rights reserved.
//

import Cocoa

class Shape: DrawProtocol {
    var colorProtocol: ColorProtocol?
    let defaultColor = "Black"
    func draw() {
        print("none");
    }
}

// need green color
class Rect: Shape {
    override func draw() {
        if let colorProtocol = colorProtocol {
            print("draw Rect with color: ", colorProtocol.whichColor());
        } else {
            print("draw Rect with color: ", defaultColor);
        }
    }
}

// need red color
class Tranigle: Shape {
    override func draw() {
        if let colorProtocol = colorProtocol {
            print("draw Tranigle with color: %@", colorProtocol.whichColor());
        } else {
            print("draw Tranigle with color: %@", defaultColor);
        }
    }
}
