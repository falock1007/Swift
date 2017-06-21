//
//  main.swift
//  falock's05
//
//  Created by user on 2017/6/12.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

//var str = "Hello, World"
//
//if let range = str.range(of: "REGEX", options: .regularExpression){
//    let result = str.substring(with: range)
//    print("OK: \(result)")
//}else{
//    print("XX")
//}


////1
//func mysort(a:Int, b:Int) -> Bool {
////    print("\(a) : \(b)")
//    return a<b
//}
//print(type(of:mysort))
//
//let a1 = [4,2,7,1]
//let a2 = a1.sorted(by: mysort)
////print(a2.description)
//
////2
//let a3 = a1.sorted(by: {(a,b) -> Bool in
//    return a < b })
////print(a3.description)
//
//let a4 = a1.sorted(by: {(a,b) -> Bool in a < b })
////print(a4.description)
//
//let a5 = a1.sorted(by: {$0 < $1})
////print(a5.description)
//
//let a6 = a1.sorted(by: < )
//print(a6.description)
//
//let a7 = a1.sorted(){(a:Int, b:Int) -> Bool in
//    return a > b
//}
////print(a7.description)
//
//let a8 = a1.sorted() {$0>$1}
//print(a8.description)
//
//let s1 = ["10", "11", "1", "2", "20"]
//
//let s2 = s1.sorted()
//print(s2.description)
//
//func strsort(a:String, b:String) -> Bool {
//    return Int(a)! < Int(b)!
//}
//let s3 =  s1.sorted(by:strsort)
//print(s3.description)
//
//func f1(myfunc:(Int, Int)->Int, a:Int, b:Int) ->Int{
//    return myfunc(a,b)
//}
//
//func f2(a:Int, b:Int){
//    return a >=b ? a : b
//}
//func f3(a:Int, b:Int){
//    return a <= b ? a : b
//}
//print(type(of:f2))
//
//let v1 = f1(myfunc: f2, a:3, b:4)
//let v2 = f1(myfunc: f3, a:5, b:8)
//
//print(v1)
//print(v2)
//
//func f4(myfunc:() -> (), myfunc2:()->()) {
//    myfunc()
//    myfunc2()
//}
//
//func f5(){
//    print("f5")
//}
//
//func f6(){
//    print("f6")
//}
//
//f4(myfunc:f5){
//    print("OK")
//}
//
//func f7(myfunc())

// 結構 struct
struct Point {
    var x:Int
    var y:Int
}

var p0 = Point( x : 1 , y : 2 )
print(p0.x)
print(p0.y)
p0.x = 123
print(p0.x)

print("-----")
struct Point2 {
    var x = 0
    var y = 0
}

var p1 = Point2()
print(p1.x)
print(p1.y)

print("-----")
struct Line {
    var point1: Point2
    var point2: Point2
}

var line1 = Line(point1:Point2(), point2:Point2(x:11, y:12))
print(line1.point1.x)


func creeatetwid()->String {
    return createtwid(gender: false)
}
func createtwid(gender:Bool)->String{
    return createtwid(gender: gender, area: 4)
}
func createtwid(area:Int)->String{
    return createtwid(gender: true, area: area)
}
func createtwid(gender:Bool, area:Int)->String {
    return createtwid(gender: false)
}
