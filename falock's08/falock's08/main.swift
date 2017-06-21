//
//  main.swift
//  falock's08
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation
var obj1 = myclass01(x:2)
var z = 9

obj1.x = z

print("我想要\(z)的九九乘法表")
for i in 1...9{
    print(obj1[i])
}

print(obj1[3,4])
print(obj1[3.14])
obj1[3.14] = 7.456
print(obj1.x)


var obj2 = sub11()
print(obj2.x)
obj2.f1()
obj2.f2(x:1)
obj2.f2(y:1)

print("------")
var obj3 = super3()
var obj31 = sub31()
var obj32 = sub32()
print(obj3 is super3)
print(obj31 is super3)
print(obj31 is String)

var obj33:super3 = sub31()
print(obj33 is super3)
print(obj33 is sub31)
print(obj33 is sub32)

//obj33.f1() //由於是super3，只有f1()
var obj34 = obj33 as! sub31
print(type(of:obj34))
obj34.f2()
//var obj35 = obj33 as! sub32

if obj33 === obj34{
    print("ok")
}else{
    print("xx")
}
obj33.f1()
print("===")
func needSuper3(obj:super3){
    obj.f1()
    if obj is sub31{
        (obj as! sub31).f3()
    }
    if obj is sub32{
        (obj as! sub32).f4()
        
    }
    
}

needSuper3(obj: obj31)
needSuper3(obj: obj32)
var obj35:super3 = obj31 as super3

func needobj(obj:AnyObject){
    print(type(of:obj))
}

needobj(obj:obj1)
// Any => class object, struct value, enum. no func

func needanything(something:Any)
{
    print(type(of:something))
}
needanything(something: "Hello")
needanything(something: obj32)

obj32.f1()
extension sub32{
    func sayya(){print("Ya")}
}

obj32.sayya()

extension Int{
    func whoru(){print("I am \(self.hashValue)")}
}
