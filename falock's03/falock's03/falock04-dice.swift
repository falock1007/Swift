//
//  mydice04.swift
//  falock's03
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation
func dice(){
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
