//
//  main.swift
//  DP
//
//  Created by silan on 16/1/16.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

print("Hello, World!")

// stratety
var r = Rect()
r.colorProtocol = GreenColor()
r.draw()

var t = Tranigle()
t.colorProtocol = RedColor()
t.draw()

// observer
let weatherData = WeatherData()
let currentDisplay = CurrentConditionDisplay(subject: weatherData)
let statsticsDisplay = StatsticsDisplay(subject: weatherData)
let forcastDisplay = ForecastDisplay(subject: weatherData)

weatherData.removeObserver(currentDisplay)
//weatherData.removeObserver(statsticsDisplay)

weatherData.updateMeasurements(10, 1, 200)


