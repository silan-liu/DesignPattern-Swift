//
//  CurrentConditionDisplay.swift
//  DP
//
//  Created by silan on 16/1/24.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

// 目前状况
class CurrentConditionDisplay: BaseObserver {
    
    init(subject: ISubject) {
        super.init()
        subject.addObserver(self)
    }
    
    override func update(subject: ISubject) {
        if let data = subject as? WeatherData {
            let temperature = data.getTemperature()
            let humidity = data.getHumidity()
            let pressure = data.getPressure()
            
            print("temperature:\(temperature), humidity:\(humidity), pressure:\(pressure)")
        }
    }
}