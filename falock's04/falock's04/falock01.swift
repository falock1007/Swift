//
//  facevl.swift
//  falock's04
//
//  Created by user on 2017/6/12.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func falock(){
var a = 10
func f1(){
    //    print(a)
    let a = 3
    print("f1() => \(a)")
    print("outter = \(a)")
}


func f2() -> Int {
    return 123
}

func f2f5(){
print(f2())
print(f2)
print(type(of:f2))
//var f2:Int = 321
var f3 = f2()
print(f3)
var f4 = f2
print(type(of:f4))
var f5 = f4()
print(f5)

print("-----")
}

func f6(){
    print("f6()")
    func f7(){
        print("f7()")
        print("f7() => \(a)")
    }
    f7()
}


func f8(a:Int){
        print(a)}
}
