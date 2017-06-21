//
//  myarray.swift
//  falock's03
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func myarray(){
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
