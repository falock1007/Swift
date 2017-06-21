//
//  falockAPI.swift
//  falock's11
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

class falock01{
    static var counter = 0;
    init(){
        print("falock01:init()")
        falock01.counter += 1
    }
    deinit {
        print("falock01:deinit()")
        falock01.counter -= 1
    }
}

class falock02 {
    var obj3:falock03?
    func m1(){print("falock02:m1()")}
    deinit {
        print("falock02:die")
    }
}
class falock03 {
    weak var obj2:falock02?
    func m1(){print("falock03:m1()")}
    deinit {
        print("falock03:die")
    }
}
