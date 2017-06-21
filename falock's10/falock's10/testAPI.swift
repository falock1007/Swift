//
//  testAPI.swift
//  falock's10
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

protocol p1 {
    func m1()
}
protocol p2 {
    func m1()->Int
}

class test01 : p1, p2 {
    func m1(){print("p1:m1()")}
        func m1()->Int {
            print("p2:m1()")
            return 1
        }
}
class test02: test01{
    
}


protocol shape {
    func callen()-> Double
    func calarea()-> Double
}

class rect : shape{
    var w = 0.0
    var h = 0.0
    func callen()-> Double {
        return (w + h)*2.0
    }
    func calarea()-> Double {
        return w * h
    }
    
}

class circle : shape{
    var r = 0.0
    func callen()-> Double {
        return 2.0 * r * 3.14}
    func calarea()-> Double {
        return r * r * 3.14}
    
}

