//
//  myif2.swift
//  falock's03
//
//  Created by user on 2017/6/8.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func myif2(){
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
