//
//  falockAPI.swift
//  falock's06
//
//  Created by user on 2017/6/15.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

class c1 {
    
}

class c2 {
    init(){
        // 建構式 => 1. func(x) 2. -> X 3.物件初始化 =>屬性
        print("init")
    }
}

class c3 {
    var x = 1
    var y = 1
}


class c4 {
    var x: Int
    var y: Int
    init( x:Int, y:Int){
        //        x = newx; y = newy
        self.x = x; self.y = y
    }
    func m1()->Int {
        return 123
    }
}

class student {
    var name: String
    var math: Int
    var ch: Int
    var en: Int
    init( _ name:String,_ math:Int,
          _ ch:Int, _ en:Int)
    {
        self.name = name; self.math = math;
        self.ch = ch;self.en = en;
    }
    func sum() -> Int {
        return ch + en + math
    }
    func avg() -> Double {
        return Double(sum()) / 3.0
    }
}

class bike {
    private var speed: Double
    init(_ speed:Double){
        self.speed = speed
    }
    func upspeed(){
        speed = speed < 1 ? 1: speed * 1.2
    }
    func downspeed(){
        speed = speed < 1 ? 0 : speed * 0.7
    }
    func getspeed()->Double {
        return speed
    }
    func clone() -> bike {
        return bike(speed)
    }
    
    
    
}

class c6{
    init(){
        print("c6:init()")
    }
    func m1(){
        print("c6:m1()")
    }
}

class c5 {
    var p1 = c6()
    lazy var p2:c6 = c6()
    func dosomething(){
        print("ok")
        p2.m1()
    }
}

struct myclass3 {
    var x = 1
    var y = 2
}

struct myclass4 {
    var v1 = myclass3()
    var v2:myclass3{
        get{
            let newx = v1.x + 10
            let newy = v1.y + 20
            return myclass3(x:newx ,y:newy)
        }
//        set(aclass30bj){
//            v1.x = aclass30bj.x - 10
//            v1.y = aclass30bj.y - 30
//        }
        set{
            v1.x = newValue.x - 10
            v1.y = newValue.y - 30
        }
    }
    var v3:myclass3 {
        // { ... }中可以使用原先定義的屬性
        // 定義 getter & setter
        // 透過 v3 的 getter ==> xxx = v3
        // setter ==> v3 = xxx
        get{
            return myclass3(x:1, y:2)
        }
        set(aVar){
            // aVar 一定是 myclass3
        }
    }
}

class myscore {
    var x = 0, y = 0, z = 0;
    var sum:Int { // 因 x,y,z 而不同
        return x + y + z
    }
    var avg:Double {
        return Double(sum) / 3.0
    }
}

class myclass5 {
    var x :Int = 0 {
        willSet(newx){
            print("before : \(x) --> \(newx)")
        }
        didSet {
//            x = 0
            print("after : \(x)")
        }
    }
}

struct mystruct123 {
    var a = 1
    mutating func f1(){
        a = 2
        print(a)
        self = mystruct123(a:100)
    }
}
class myclass123 {
    var a = 1
    func f1(){
        a = 2
        print(a)
    }
}










