//
//  Myfalock.swift
//  falock's07
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

class falock01{
    var x = 10 //物件的屬性
}

class falock02{
    static var x1 = 12 //類別的屬性
    static var x2:Int?
    static var x3:Int{
        return x1*100
    }
    var x4 = 123
    var x1 = 321
    init(){
        print(x4)
        print(falock02.x1)
        print(x1)
    }
}

class falock03{
    var x = 100
    static var y = 200
    func f1(){
        x += 1
        falock03.f2()
        print("falock03: f1()")
    }
    static func f1(){
     print("falock03:static f1()")
    }
    static func f2(){
        //x += 1
        y += 1
        f1()
    }
}

class mybike{
    //x += 1
    static var counter = 0
    var counter = 0
    init(){
        mybike.counter += 1
        print("Creat a new bike")
    }
}

class super1{
    init(){print("super:init()")
    }
}

class sub11 : super1{
    //沒有定義任何init,呼叫super1.init
    //print("sub12
}

class sub12 : super1{
    override init(){
    //沒有定義任何init,呼叫super1.init
    print("sub12:init()")
}
}

class sub13:super1{
    init(_ : Int){
        
    }
}

class super2{
    init(){print("Super2:init()")}
    init(_ :Int){print("Super2:init(Int)")}
    init(_ :Double){
        print("Super2:init(Double)")
    }
}

class sub21 : super2{
    
}
class sub22 : super2 {
    override init(){
        super.init()
        print("Sub22:init()")
        
    }
    override init(_ : Int){
        super.init()
    }
    init(_ : String){
        super.init()
    }
}

class super3{
    init(){print("Super3:init()")}
}

class sub31 : super3 {
    override init(){
        print("dosomething")
    }
    convenience init(_ : Int){
        print("Sub31:init(Int)")
        self.init("falock")
    }
    init( _ : String){
    }
}

class twid{
    var id:String
    convenience init(){
        self.init(false)
    }
    convenience init(_ gender:Bool){
        self.init(gender,1)
    }
    convenience init(_ area:Int){
        self.init(true, area)
    }
    init(_ geder:Bool, _ area:Int){
        print("main logic")
    }
    init(_ id:String){
        self.id = "A123456789"
    }
    init?(_ id:String){
        let a = Int(arc4random_uniform(2))
        if a == 0 {
            return nil
        }else{
            self.id = id
        }
    }
}

//------------
class super4 {
    init(){
        print("Super4:init()")}
    required init(x:Int){
        print("Super4:init(Int)")
    }
    
}
class sub41 : super4{
    init(x :Double){
        super.init()
    }
    required init(x:Int){
        super.init()
    }
}
//class sub42 : super4{
//    override init(){
//        super.init()
//    }
//    required init(){
//        super.init()
//    }
//}
class sub42 : sub41{
    init(){
        super.init(x:1.0)
    }
    init(){
        super.init()
    }
}









