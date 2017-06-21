//
//  falock03.swift
//  falock's03
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func myset(){
    var set1 = Set<Int>()
    print(type(of:set1))
    
    set1.insert(123)
    print(set1.description)
    set1.insert(321)
    print(set1.description)
    // set1.insert(123) Error，重複了
    //print(set1.description)
    print(set1.count)
    set1.insert(1)
    set1.insert(12)
    set1.insert(13)
    set1.insert(11)
    
    for num in set1 {
        print(num)
    }
    print("---")
    for num in set1.sorted(){
        //因為set1 = Set<Int>()為Int，故可以排序，若為Any，就不知道怎麼排序
        print(num)
    }
    print("---")
    var lottery = Set<Int>()
    while lottery.count < 6 {
        var rand = Int(arc4random_uniform(49))+1
        lottery.insert(rand)
    }
    print(lottery.description)
}

func fx(x:Int) -> Int {
    let result = 2 * x + 3
    return result
}

func sayYa(name:String, times:Int){
    for _ in 0..<times {
        print("Ya! \(name)")
    }
}


func theDistance(x0:Int, y0:Int, x1:Int, y1:Int) -> (dx:Int, dy:Int){
    return(abs(x1-x0), abs(y1-y0))
}

func falockAbs(num:Int) -> Int {
    return num < 0 ? -num : num
}

func theDistanceV2(p0:(x:Int, y:Int), p1:(x:Int, y:Int)) -> (dx:Int, dy:Int){
    return(abs(p0.x - p1.x), abs(p0.y - p1.y))
}

func findMinMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {return nil}
    else{
    var minV = array[0]
    var maxV = array[0]
    for i in 1..<array.count {
        if array[i] < minV {
            minV = array[i]
        }
        if array[i] > maxV {
            maxV = array[i]
        }
        }
        return(minV,maxV)
    }
}

func test1(_ x : Int){ //「_ 」（有空格）使得「x:」得以省略
    print(x)
}

func sayHello(_ name:String = "World", _ times:Int = 1){ // 可以設預設值
    for _ in 0..<times {
        print("Hello, \(name)")
    }
}

func calSum(_ num:Int...) -> Int { // 不定個數
    var sum = 0
    //if num.isEmpty {return sum}
        
    for v in num {
        sum += v
    }
    return sum
}

func cp(target:String, _ filename: String...){
    for fname in filename {
        print("coying \(fname) to \(target)")
    }
}

func cp2( _ filename: String...,target:String){
    for fname in filename {
        print("coying \(fname) to \(target)")
    }
}

func cp3(_ target:String, _ filename: String...){
    for fname in filename {
        print("coying \(fname) to \(target)")
    }
}

func cp4( _ filename: String...,_ target:String){ //不能這樣寫，會連target都被算進filename
    //因此此處的target是無法省略的
    for fname in filename {
        print("coying \(fname) to \(target)")
    }
}

