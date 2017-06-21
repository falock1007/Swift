//
//  main.swift
//  falock's09
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

//屬性擴張
extension falock01{
    var y:Int { return x * 2 }
}

var obj1 = falock01()
print(obj1.y)

extension Double {
    var m: Double {return self}
    var km: Double {return self / 1000.0}
    var cm: Double {return self * 100.0}
}
var len = 123.0
print(len.m)
print(len.km)
print(len.cm)

var len2 = 100.0
var len3 = len.km + len2.cm
print(len3.m)

extension Rect{
    var cx:Int{ return x+w/2}
    var cy:Int{ return y+h/2}
}

extension falock01{
    convenience init(x:Int){
        self.init()
        self.x = x
        
    }
}

var obj2 = falock01(x:4)
print(obj2.x)
var obj3 = falock01()
print(obj3.x)

extension falock01{
    func m2(){
        x += 4
        print("falock01:m2()x = \(x)")
    }
}

var obj4 = falock01()
obj4.m2()

//extension falock02{
//    mutating func m2(){
//        x += 4
//        print("falock02:m2(): x = \(x)")
//    }
//}
//var obj5 = falock02()
//obj5.m2()

extension Int{
    subscript(d:Int)->Int{
        
        return -1
    }
}






extension Int{
    subscript(d:Int)->Int{
        var x1 = 1
        for _ in 0...d {
            x1 *= 10
        }
        var x2 = 1
        for _ in 0..<d {
            x2 *= 10
        }
        let x3 = self % x1
        print("\(x1),\(x2),1 ==> \(x3)")
        let ret = x3 / x2
        print(("\(x1),\(x2),2 ==> \(x3)")
        
        return ret
    }
}
print(123456789[5])
