//
//  main.swift
//  falock's03
//
//  Created by user on 2017/6/8.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

shuffle()


//
//var ret = fx(x: 123)
//print(ret)
//
//sayYa(name:"falock", times: 4)
//
//
//var d = theDistance(x0: 1, y0: 2, x1: 3, y1: 4) // (Int, Int)
//print(d.dx)
//print(d.dy)
//
//
//
//var f = falockAbs(num:-123)
//print(f)
//
//var g = theDistanceV2(p0:(12,32), p1:(16,24))
//print(g.dx)
//print(g.dy)
//
//
//var a1 = [34,67,111,32,12]
//var a2 = [1,1,1,1,1]
//var a3:[Int] = []
//if let minmax = findMinMax(array: a1){
//    print("min : \(minmax.min)")
//    print("max : \(minmax.max)")
//}
//
//test1(2)
//sayHello("falock",2)
//sayHello("Amy") // 以此例子來說，無法前項預設且後項非預設
//
//var sum = calSum(1,2,3,4,5)
//print(sum)
//
//cp(target: "dir1", "file1","file2","file3")
//cp2("file1","file2","file3",target: "dir1")
//cp3("dir1", "file1","file2","file3")
//cp4("file1","file2","file3","dir1")

//var myx = 123
//var myy = 456
//falockswap(&myx, &myy)
//print(myx)
//print(myy)


func swapArray( _ array:inout Array<Int>, _ x:Int, _ y:Int) {
    if array.isEmpty {
        print("Wrong01 : 陣列請勿為空")
    }else if x == y { print("Wrong02 : x和y請勿一樣")
    }else if array.count-1 < x || array.count-1 < y {
        array.count-1 < x && array.count-1 < y ? print("Wrong03: x與y都超過範圍") :
        (x > y ? print("Wrong03 : x超出範圍"):print("Wrong03 : y超出範圍"))
    }else if x < 0 || y < 0{
        x < 0 && y < 0 ? print("Wrong04 : x值與y值請勿為負值") : (x < 0 ? print("Wrong04 : x值請勿為負值") : print("Wrong04 : y值請勿為負值"))
    }else{
        swap(&array[x], &array[y])
//        let temp = array[x]
//        array[x] = array[y]
//        array[y] = temp
        print(array.description)
    }
}

var a6:[Int] = [1,2,3,4,5]
var a7:[Int] = [1]
swapArray(&a7,1,0)

