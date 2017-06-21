//
//  falock01.swift
//  falock
//
//  Created by user on 2017/6/6.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func falock00() {
    let name = "falock" // name => String
    let age = 50 // age => Int
    print("Hello, \(name)")
    print(age)
    //強型別特性
}

func falock01() -> Int{
    print("I am falock")
    return 1
}

func falock02() {
    var a : Int
    a = 10
    print(a)
    //先指定型別，需要先初始化
    
//    let b, c, d: Int
    let b, c, d: Double
    print(type(of: b))
    b = 1
    c = 2
    d = 3
    print("b + c + d = \(b+c+d)")
    //設定複數型別
}

func falock03() {
    print(Int.min)
    print(Int.max)
    print(UInt.min)
    print(UInt.max)
    print(Int8.min)
    print(Int8.max)
    print(UInt8.min)
    print(UInt8.max)
    //Int UInt特性
}

func falock04() {
    let pi = 3.1416  // type => Double
    print(type(of: pi))
    let ff : Float = 123
    print("ff = \(ff)")
    
    let var1:UInt = 10, var2:UInt = 3
    let var3 = var1 % var2
    print(var3)
}

func myline() {
    print("--------------------------------------")
}

func falock05() {
    //let a1 = 3
    //let a2 = 1.2
    //let a3 = a1 + a2 //型別不同無法辨識
    let a = 3 + 1.2
    print(a)
    let b = 0xC.3p0 // (12 + 3/16小數點後也要16進位)*1(p0二的零次方)
    print(b)

//    let c = UInt.max
//    print(c)
    
    let d : UInt8 = 10  //UInt8 0-255
    let e : UInt16 = 245
    let f = (d)+UInt8(e) //f為UInt8
    print (f)
}

func falock06(){
    let a = 3.14
    let b = Int(a)
    print(b)
    let c = Double(b)
    print(c)
}

func falock07(){
    //typealias type name = type expression (type別名)
    typealias 小正數 = UInt8
    let a: 小正數 = 12
    print(type(of:a))
}

func falock08(){
    let a/*:Bool*/ = true //swift的bool只有true和false，無法用js php的0與1
    if a {
        print("ok")
    }else{
        print("xx")
    }
}

func falock09(){
    let(x,y,z) = (1,2,3)
    print(x)
    print(y)
    print(z)
    let a = (x,y,z)
    print (type(of:a))
    print(a)
    let(_,_,e) = a
    print(e)
}

