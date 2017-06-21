//
//  falock06-shuffle.swift
//  falock's03
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func shuffle(){
    // 洗牌
    var poker:[Int] = Array()
    var rand, temp : Int
    
    for i in 0..<52 {
        poker += [i]
    }
    
    //print(poker.description)
    
    
    for j in 0..<52 {
        rand = Int(arc4random_uniform(UInt32(52-j))) // 0~51亂數 => 亂數範圍逐漸遞減
        falockswap(&poker[51-j], &poker[rand])
//        temp = poker[51-j]
//        poker[51-j] = poker[rand]
//        poker[rand] = temp
    }
    
//    print("--------------------")
    
    //發給四個玩家
//    print(poker.description)
    
    var players:[[Int]] = [[],[],[],[]]
    
    for i in 0..<52 {
        if i % 4 == 0 {
            players[0] += [poker[i]]
        }else if i % 4 == 1 {
            players[1] += [poker[i]]
        }else if i % 4 == 2 {
            players[2] += [poker[i]]
        }else{
            players[3] += [poker[i]]
        }
    }
    
    for i in 0..<4 {
        players[i] = players[i].sorted()
    }
    
    var suit:[String] = ["黑桃","紅心","方塊","梅花"]
    var value:[String] = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    
    for j in 0..<4{
    print("玩家\(j+1):", terminator:"\t")
    var player = players[j]
        for i in 0..<13 {
        var card = player[i]
        print("\(suit[card/13])\(value[card%13])", terminator:"\t")
            // %4、/4可以從小到大排列
    }
       print()
    }
}

func falockswap( _ x:inout Int, _ y:inout Int) {
    let temp = x
    x = y
    y = temp
}

func arrayswap( _ x:inout Array<Int>, _ y:inout Array<Int>){
    let temp = x
    x = y
    y = temp
}

