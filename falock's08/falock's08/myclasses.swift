//
//  myclasses.swift
//  falock's08
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

class myclass01 {
    var x: Int
    init(x:Int){
        self.x = x
    }
    subscript(y:Int) -> String {
        return "\(x) x \(y) = \(x * y)"
    }
    subscript(y:Int,z:Int) -> Int{
        return 123
    }
    subscript(y:Double) -> Double {
        get{
            print("get")
            return floor(y)
        }
        set{
            print("set")
            self.x = Int(ceil(newValue))
        }
    }
}

//----------
class super1{
    private var x = 10
    var y = 2
    var z = 3
//    var a:Int
    func f1(){
        print("Super1:f1()")
    }
    func f2(x:Int) -> Double {
        print("f2(x:Int)")
        return 1.0
    }
}
class sub11: super1{
    var x = 3
//    var y = 3
    override var y:Int{
        get{
            return 3
        }
        set{
            
        }
    }
    override  var z:Int{
        willSet{
            
        }
        didSet{
            
        }
    }
    
//    override var a:Int{
//        get{
//            return 3
//        }
//        set{
//            
//        }
//    }
    
    override func f1(){
        super.f1()
        print("Sub11:f1()")
    }
    func f2(y:Int){
        print("f2(y:Int)")
    }
    override func f2(x:Int) -> Double{
        return 1.0
    }
        
}

//----------
final class super2{
    
}
//class sub21 : super2{
//    
//} //由於final，這句是錯誤的

class super3{
    func  f1() {
        print("Super3:f1()")
    }
}
class sub31: super3 {
    override func f1(){
    print("Sub31:f1()")
    }
    func f2() {
        print("Sub31:f2()")
    }
    func f3(){
        print("Sub31:f3()")
    }
}
class sub32: super3 {
    override func f1(){
        print("Sub32:f1()")
    }
    func f2() {
        print("Sub32:f2()")
    }
    func f4(){
        print("Sub32:f4()")
    }
}
