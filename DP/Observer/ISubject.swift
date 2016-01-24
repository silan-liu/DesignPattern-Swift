//
//  ISubject.swift
//  DP
//
//  Created by silan on 16/1/24.
//  Copyright © 2016年 XY. All rights reserved.
//

import Foundation

protocol ISubject {
    func addObserver(observer: BaseObserver)
    func removeObserver(observer: BaseObserver)
    func notifyObservers()
}