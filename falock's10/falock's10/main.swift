//
//  main.swift
//  falock's10
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

var obj1 = test01()
//obj1.m1()

func needshape(s : shape){
    print(s.callen())
    print(s.calarea())
}

var s1:circle = circle()
var s2:rect = rect()
s1.r = 4
s2.w = 2
s2.h = 3

needshape(s: s1)
needshape(s: s2)

var obj2 = falock07(x:4)
print(obj2.x)
print(obj2.y)
obj2.y = 100

var obj3 = test02()
if obj3 is test01 {
    print("ok")
}else{
    print("xx")
}
