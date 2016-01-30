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

// 装饰者
// 现在我需要一杯深焙咖啡+摩卡
var darkRoast: Component = DarkRoast()
darkRoast = Mocha(obj: darkRoast)
print("深焙咖啡+摩卡，\(darkRoast.getDescription())，cost：\(darkRoast.cost())")

// 脱因咖啡+奶泡+牛奶，可被多个装饰者装饰。
var decaf: Component = Decaf()
decaf = Whip(obj: decaf)
decaf = Milk(obj: decaf)

print("脱因咖啡+奶泡+牛奶，\(decaf.getDescription())，cost：\(decaf.cost())")

// 深焙咖啡+双倍摩卡+牛奶
var darkRoast1: Component = DarkRoast()

darkRoast1 = Mocha(obj: darkRoast1)
darkRoast1 = Mocha(obj: darkRoast1)
darkRoast1 = Milk(obj: darkRoast1)
print("深焙咖啡+双倍摩卡+牛奶，\(darkRoast1.getDescription())，cost：\(darkRoast1.cost())")


