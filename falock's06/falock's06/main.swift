//
//  main.swift
//  falock's06
//
//  Created by user on 2017/6/15.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation


//var obj1 = c1()
//print(type(of:obj1))


//var obj2 = c2()


//var obj3 = c3()
//print(obj3.x)


//var obj4 = c4(x:3, y:4)
//print(obj4.x)
//print(obj4.m1())

//var s1 = student("s01",90,45,32)
//var s2 = student("s02",50,75,82)
//print(s1.sum())

//var s3 = s1

//print(s1 === s2)
//print(s1 === s3)

//var b1 = bike(0)
//print(b1.getspeed())

//b1.upspeed();b1.upspeed();b1.upspeed();b1.upspeed();
//b1.downspeed();b1.downspeed();
//
//print(b1.getspeed())
//
//var b2 = b1.clone()
//print(b2.getspeed())
//print(b1 === b2)

//var b3 = b1
//print(b1 === b3)

//var b4 = c5()
//b4.dosomething()
//b4.dosomething()

var bb3 = myclass3()
bb3.x = 33; bb3.y = 44;

var bb4 = myclass4()
print("bb4.v1.x = \(bb4.v1.x)")
print("bb4.v1.y = \(bb4.v1.y)")
bb4.v2 = bb3
print("bb4.v2.x = \(bb4.v2.x)")
print("bb4.v2.y = \(bb4.v2.y)")
//print("bb4.v2.x = \(bb4.v1.x)")
//print("bb4.v2.y = \(bb4.v1.y)")

var bb5 = bb4.v2 //bb5 is a struct(myclass3)
print("bb4.v2.x = \(bb4.v2.x)")
print("bb4.v2.y = \(bb4.v2.y)")
print("bb4.x = \(bb5.x)")
print("bb4.y = \(bb5.y)")

var ss1 = myscore()
ss1.x = 100; ss1.y = 90; ss1.z = 70;
//print(ss1.sum)
print(ss1.avg)

print("---")
var ss5 = myclass5()
print(ss5.x)
ss5.x = 123
print(ss5.x)







