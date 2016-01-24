//
//  ForecastDisplay.swift
//  DP
//
//  Created by silan on 16/1/24.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

// 天气预报
class ForecastDisplay: BaseObserver {
    
    init(subject: ISubject) {
        super.init()
        subject.addObserver(self)
    }
    
    override func update(subject: ISubject) {
        // ...
        print("明天的天气为晴，5~10°，无风")
    }
}