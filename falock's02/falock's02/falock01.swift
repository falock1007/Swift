//
//  falock01.swift
//  falock's02
//
//  Created by user on 2017/6/7.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func falock01(){
    var (x,y,z) = (1,2,3) //數組，非陣列
    var a = (x,y,z)
    print(type(of:a))
    print(x)
    print(a.0)
    print(a.1)
    print(a.2)
}

func falock02(){
    var a: Int? = 4
    a = 5
    a = nil
    print(type(of:a))
    print(a as Any)
}

func falock03(){
    var a = 3
    //a++ swift3已無這種寫法
    a += 1
    print(a)
}

func falock04(){
    let score : UInt = 55
    if (score >= 60) {
        print("Pass")
    }else{
        print("GG")
    }
}

func falock05(){
    let rand = arc4random() //0 - (2^32-1)
    let score = (rand % 100) + 1 // 0 - 100
    print(score)
    
    
    let rand2 = arc4random_uniform(100) //0,1...<Int
    let score2 = rand2 + 1
    print(score2)
    
    if score2 >= 60{
        print("Pass")
    }else{
        print("GG")
    }
}

func falock06(){
    let a = "falock"
    //let b : String = "1007"
    //let c = a + b
    var b : String? = "X"
    print(b ?? 0)
    //print(c)
    let d = 123
    let e = d + 45
    print(e)
    let f = "123z"
    let g : Int? = Int(f) //f的字串可能轉不成數字，所以需要一個？號
    print(g ?? "xx") //不能轉Int就會print出xx
}

func falock07(){
    print("Input a Score = ",terminator: "")
    let input: String? = readLine() //String?
    //print(type(of: input))
    let score: UInt8 = UInt8(input ?? "0") ?? 0
    
    if score > 100 {
        print("xx")
    }else if score >= 95 {
        print("fumble")
    }else if score > 70 {
        print("fail")
    }else if score > 5 {
        print("sucess")
    }else if score > 0 {
        print("critical")
    }else{
        print("xx")
    }
    
//    if input == "123" {
//        print("ok")
//    }else{
//        print("xx")
//    }
}

func falock08(){
    print("Input a year = ",terminator: "")
    let input: String? = readLine() //String?
    //print(type(of: input))
    let year: UInt16 = UInt16(input ?? "0") ?? 0
    
    let isLeap: Bool
    
    
//    if year <= 0{
//        print("xx")
//    }else if year % 400 == 0 {
//        print("Yes")
//    }else if year % 100 == 0 {
//        print("No")
//    }else if year % 4 == 0 {
//        print("Yes")
//    }else{
//        print("No")
//    }

    if year % 4 == 0 {
        if year % 100 == 0 {
            if year % 400 == 0 {
                isLeap = true
            }else{
                isLeap = false
            }
        }else{
            isLeap = true
        }
    }else{
        isLeap = false
    }
    
    if year < 1 {
        print("亂填")
    }else{
        print("\(year)年是" + (isLeap ? "閏年" : "平年"))
    }
}

func falock09(){
    var a = "我是誰"
    let b = String()
    
    if b.isEmpty {
        print("b is empty")
    }
    
    for c in a.characters {
        print(c)
    }
    
    let c = a
    a = "Hello, falock"
    print(a)
    print(c)
    print(a.characters.count)
    print(c.characters.count)
    
    print("------------------------------------")
    
    for i in 2...Int(a.characters.count-1){
        let start = a.index(a.startIndex,offsetBy: i-2) // 算出起始位置
        let end = a.index(a.startIndex, offsetBy: i) // 結尾
        let range = start...end // range 變數
        print(a[range])
    }
    
    print("------------------------------------")
    
    let star = a.index(a.startIndex, offsetBy: 2)
    let end = a.index(a.startIndex, offsetBy: 5)
    let range = star..<end
    print(type(of:a))
    print(a[range])
    
    print("------------------------------------")
 
    var e = "asdf1234"
    print(e[range])
    print(falockSubString(str: e, start: 2, stop: 6))
    e.insert("s", at: e.endIndex)
    e.insert("d", at: e.endIndex) //(字元“x”，String.Index)
    e.insert("f", at: e.index(e.startIndex, offsetBy:4)) // String.Index
    
    // 字串.index() => String.Index
}

func falockSubString(str:String, start:Int, stop: Int) ->String {
    let start = str.index(str.startIndex, offsetBy: stop+1) // 算出起始位置
    let end = str.index(str.startIndex, offsetBy: stop+1) //結尾
    let range = start..<end // range 變數
    return str[range]
}

func falock10(){
    var i:Int = 100
    for _ in 1...10 {
        i += 1
        print(i)
    }
    print(i)
}

func falock99(){
    //var i:Int = 0
    //var j:Int = 1
    
    //for _ in 1...8{
    //j+=1
    //for _ in 1...9 {
    //        i += 1
    //        print("2X\(i)=\(2*i)")
    //}
    
    for k in 0..<2 {
        for b in 1...9 {
            for  a in 2...5 {
                let newa = a + k * 4
                print("\(newa) x \(b) = \(newa * b)", terminator: "\t")
            }
            print()
        }
        print("-----")
    }
}

//func falock11
func snakegame(){
    let finalSquare = 25
    var board = [Int](repeating: 0, count: finalSquare + 1)
    
    board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
    board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
    
    
    var square = 0
    var diceRoll = 0
    while square < finalSquare {
        // roll the dice
        diceRoll += 1
        if diceRoll == 7 { diceRoll = 1 }
        // move by the rolled amount
        square += diceRoll
        if square < board.count {
            // if we're still on the board, move up or down for a snake or a ladder
            square += board[square]
        }
    }
    print("Game over!")
        
    }

func falock12(){
    // 1 + 2 + ....... + 100 = 5050
    //var x = 100
    //print("1 + 2 + ....... + \(x) = \((1+x)*x/2)")
    var sum = 0 //Int
    var i = 0
    while i <
        100{
        i += 1
        sum += i
    }
    print("1 + 2 + ....... + \(i) = \(sum)")
    
}

func falock13(){
    var sum = 0 //Int
    var i = 0
    
    repeat{
        i += 1
        sum += i
    } while i < 100
    
    
    print("1 + 2 + ....... + \(i) = \(sum)")
    
}

func falockprime(max:Int,col:Int){
    let row = max/col
    var row2 = 0
    if max%col == 0 {
        row2 += 0
    }else{
        row2 += 1
    }
    for j in 0..<Int(row)+Int(row2) {
        var i = 0
        while i < Int(col) {
            i += 1
            var newi = i + j * col
            if newi > max {
                break
            }else{
            var k = 0
            var l = 0
            while k <= Int(sqrt(Double(newi))) {
                k += 1
                if newi % k == 0{
                    l += 1
                }
            }
            if newi == 1{
                print(newi,"  ", terminator: "\t"+"\t")
            }else if newi == 2 {
                print(newi,"Ｏ", terminator: "\t"+"\t")
            }else if l > 1 {
                print(newi,"  ", terminator: "\t"+"\t")
            }else{
                print(newi,"Ｏ", terminator: "\t"+"\t")
                }
            }
            }
            print()
        }
    }


