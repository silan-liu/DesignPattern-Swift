//
//  IObserver.swift
//  DP
//
//  Created by silan on 16/1/24.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

protocol IObserver {
    func update(subject: ISubject)
}

class BaseObserver: IObserver {
    
    var value: Int = {
        let now = NSDate()
        let timeInterval = now.timeIntervalSince1970 * 100000
        let interval: Int = Int(timeInterval)
        
        print(interval)
        return interval
    }()
    
    func update(subject: ISubject) {
        fatalError("subclass should implement this method")
    }
}

extension BaseObserver: Equatable {
}

func ==(lhs: BaseObserver, rhs: BaseObserver) -> Bool {
    return lhs.value == rhs.value
}