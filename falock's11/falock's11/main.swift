//
//  main.swift
//  falock's11
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

var obj1:falock01? = falock01()
var obj2:falock01? = falock01()
var obj3:falock01? = falock01()
print(falock01.counter)
var obj4 = obj1 //關鍵
print(falock01.counter)

obj2 = nil
print(falock01.counter)

obj1 = nil
//obj4 = nil
//print(obj2 == nil)
print(obj4 === obj1)

var falock01s = [obj1, obj2, obj3]
// [falock01]

func m1(){
    let obj5: falock01? = falock01()
    falock01s += [obj5]
    print("m1:\(falock01.counter)")
}

print("before:\(falock01.counter)")
m1()
print("after:\(falock01.counter)")

print("-----")

var fa2:falock02? = falock02()
var fa3:falock03? = falock03()
fa2!.obj3 = fa3
fa3!.obj2 = fa2

fa2 = nil
print(fa2 == nil)
print(fa3!.obj2 == nil)
