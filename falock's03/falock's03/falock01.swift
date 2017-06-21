//
//  falock01.swift
//  falock's03
//
//  Created by user on 2017/6/8.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation




func falockSwitch(){
    
    var a1 = 10
    var a2 = 7
    
    
    switch a1{
    case 1:
        print("A")
//    case "1":        必須是Int
//        print("A1")
//    case UInt(10):   UInt與Int仍舊不同
//        print("A2")
    case a2+2:
        print("B")
        if a2 == 7 {
            break
        }else{
            print("B2")
        }
    case 10:
        print("B1")
        fallthrough
    case 100:
        print("C")
    default:
        print("D")
    }
    
    print("------")
    
    
    let month = arc4random_uniform(12) + 1 // UInt 32
    print("\(month)月有", terminator:"")
    switch month{
    case 1, 3, 5, 7, 8, 10, 12:
        print("31", terminator:"")
    case 4, 6, 9, 11:
        print("30", terminator:"")
    case 2:
        print("28",terminator:"")
    default:
        print("???", terminator:"")
    }
 print("天")
    
    print("-----")
    
    var score = arc4random_uniform(100) + 1
    print(score)
    switch score {
    case 90...100:
        print("A")
    case 80..<90:
        print("B")
    case 70..<80:
        print("C")
    case 60..<70:
        print("D")
    default:
        print("E")
    }
    
    print("-----")
    
    var point = (1,4,23)
    switch point {
    case (2,_,_): //可以用部分吻合 (1,_,_)
        print("A")
        fallthrough
    case (1,4,24): //可以用完全吻合 (1,4,23)
        print("B")
        fallthrough
    case (_,_,20...30): // 可以用範圍吻合 (_,_,20...30)
        print("C")
    default:
        print("D")
    }
    
    print("-----")
    
    switch point {
    case ( let x, 4, 21): // case (_, 4, 23) and _ => x=> play
        print("the point x-axis is \(x)")
    case let (x,y,z): //default
        print("\(x) : \(y) : \(z)")
    }
    
    print("-----")
    
    switch point {
    case (1, let y, let z) where y == z:
        print("A")
    case (1, let y, let z) where y < z:
        print("B")
    default:
        print("C")
    }
}

func falockIf(){
    var a1 = Int.init(2.1)
    var a2 = Int.init("falock")
    var a3 = Int(1.23) // 型別轉換
    print(a2 ?? 0)
    
    //if
    var a4:Int? = 12
    if var b1 = a4 {
        print(b1)
    }else{
        print("無值")
    }
    var a5:[Int] = [1,2,3,4,5]
    if let a6 = a5.last { //first會顯示第一個
        print(a6)
    }else{
        print("X")
    }
    
    var a6:Bool? = false
    if let b2 = a6 {
        print(b2)
    }else{
        print("X2")
    }
}

func falockArray(){
    var a1 = [1,2,3,4] // Array<Int> ==> 泛型
    print(type(of:a1))
    print(a1[2])
    
    var a2:[Any] = [1,"as",true] //分辨不出型別
    print(type(of:a2))
    print(a2[2])
    
    var a3:[Int] = []
    var a4:Array<Int> = Array()
    var a5:[Int] = Array()
    var a6:Array<Int> = []
    var a7:[Int]?
    
    if a3.isEmpty {
        print("empty")
    }else{
        print("contents")
    }
    
    print(a1.count)
    print(a1.capacity)
    
    var a8 = Array(repeating:0, count:6)
    print(a8.description) // a8.toString()
    
    a3.append(123)
    print(a3.description)
    a3 += [321,1,2,3]
    print(a3.description)
    a3.append(contentsOf: [11,12,13])
    print(a3.description)
    
    a3[1] = 77
    print(a3.description)
    a3[2...5] = [101,102,103,104,105]
    print(a3.description)
    a3.insert(99, at: 2)
    print(a3.description)
    for value in a3 {
        print(value)
    }
    
    print("-----")
    for i in 0..<a3.count {
        print("\(i) => \(a3[i])")
    }
    print("-----")
    for (i, value) in a3.enumerated(){
        print("\(i) => \(value)")
    }
}

func falockDice(){
    let dice1 = arc4random_uniform(6) + 1
    let dice2 = arc4random_uniform(6) + 1
    let dice3 = arc4random_uniform(6) + 1
    
    print("\(dice1)+\(dice2)+\(dice3)=\(dice1 + dice2 + dice3)")
    
    
    var dicerand = Array.init(repeating: 0, count: 6) //[0,0,0,0,0,0] => Array<Int>
    var rand:Int
    for _ in 1...10000 {
        rand = Int(arc4random_uniform(9)) // 0...8
        rand = rand == 6 ? rand-6 : rand
        rand = rand == 7 ? rand-4 : rand
        rand = rand == 8 ? rand-3 : rand
        dicerand[rand] += 1
    }
    for (i, value) in dicerand.enumerated(){
        print("\(i+1)點出現\(value)次")
    }
}

func falockDoubleArray(){
    var a1 = [[1,2,3],[3,4],[],[6,7,8,9]] //二維陣列
    //print(a1.count)
    //print(a1[1].count)
    
    a1 += [[11,12]]
    //print(a1.description)
    //二維＋二維，若一維＋二維則Error
    a1.append(contentsOf: [[33,44],[555,666,777]])
    print(a1.description)
    
    a1.replaceSubrange(1...2, with: [[100,200,300,400]])
    print(a1.description)
    
    for (i2, value2) in a1.enumerated(){
        for (i, value) in value2.enumerated(){
            print("\(i2) : \(i) => \(value)")
        }
    }
    
    var a5 = [12,3,4,45]
    print(a5.description)
    a5 = [] //清除(重新new一個a1)
    print(a5.description)
}

func falockDic(){
    //字典
    var dic1 = ["name":"falock", "gender":"male", "age": "26"]
    // Dictionary<String?, String?>
    print(type(of:dic1))
    print(dic1["name"])
    
    dic1["weight"] = "80" // 沒有此key，因此新增
    print(dic1.description)
    dic1["weight"] = "68" // 已有此key，因此新值蓋舊值
    print(dic1.description)
    
    var dic2 = [1:"OK", 3: "III", 4:"Brad"]
    print(type(of:dic2))
    for (key, value) in dic2 {
        print("\(key) => \(value)")
    }
    
    dic2.updateValue("falock1007", forKey: 4)
    print(dic2.description)
}
