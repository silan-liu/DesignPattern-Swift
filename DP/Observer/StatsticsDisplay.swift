//
//  StatsticsDisplay.swift
//  DP
//
//  Created by silan on 16/1/24.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

// 气象统计
class StatsticsDisplay: BaseObserver {
    
    init(subject: ISubject) {
        super.init()
        subject.addObserver(self)
    }
    
    override func update(subject: ISubject) {
        // ..
        if let data = subject as? WeatherData {

            let pressure = data.getPressure()
            
            print("最大气压为:\(pressure)")
        }
    }
}