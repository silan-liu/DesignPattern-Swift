//
//  WeatherData.swift
//  DP
//
//  Created by silan on 16/1/24.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

class WeatherData: ISubject {
    
    private var observers: [BaseObserver] = []
    private var observer1s: [IObserver] = []

    private var temperature: Float = 0
    private var humidity: Float = 0
    private var pressure: Float = 0
    
    func addObserver(observer: BaseObserver) {
        observers.append(observer)
    }
    
    func removeObserver(observer: BaseObserver) {
        observers = observers.filter({
            $0 != observer
        })
    }
    
    func notifyObservers() {
        for observer in observers {
            observer.update(self)
        }
    }
    
    func updateMeasurements(temperature: Float, _ humidity: Float, _ pressure: Float) {
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        
        self.notifyObservers()
    }
    
    // 温度
    func getTemperature() -> Float {
        return self.temperature
    }
    
    // 湿度
    func getHumidity() -> Float {
        return self.humidity
    }
    
    // 气压
    func getPressure() -> Float {
        return self.pressure
    }
}