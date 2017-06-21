//
//  falockAPI.swift
//  falock's10
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

protocol falock01{ //只有定義，不能有任何實作
    func m1()
    func m2() -> Int
    func m3(x:Int) -> Double
}

protocol falock02 {
    func m4()
    func m5() -> Int
    func m6(x:Int) -> Double
}

class super1{
    
}

class falock03 : super1,falock01,falock02{
    func m1(){}
    func m2() -> Int {return 1}
    func m3(x:Int) -> Double {return 1.0}
    func m4(){}
    func m5() -> Int {return 1}
    func m6(x:Int) -> Double {return 1.0}
}

protocol falock04: falock01, falock02 {
    func m7()
}

class falock05 : falock04{
    func m1(){}
    func m2() -> Int {return 1}
    func m3(x:Int) -> Double {return 1.0}
    func m4(){}
    func m5() -> Int {return 1}
    func m6(x:Int) -> Double {return 1.0}
    func m7(){}
}

protocol falock06 {
    var x : Int {get set}
}

class falock07 : falock06 {
    var x: Int
    var y: Int = 4
    init(x : Int){
        self.x = x
    }
}








