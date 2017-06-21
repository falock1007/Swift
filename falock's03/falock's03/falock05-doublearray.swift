//
//  falock05-doublearray.swift
//  falock's03
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func doubleArray(){
    var a1 = [[1,2,3],[3,4],[],[6,7,8,9]]
    //print(a1.count)
    //print(a1[1].count)
    
    a1 += [[11,12]]
    //print(a1.description)
    a1.append(contentsOf: [[33,44],[555,666,777]])
    print(a1.description)
    
    a1.replaceSubrange(1...2, with: [[100,200,300,400]])
    print(a1.description)
    
    for (i2, value2) in a1.enumerated(){
        for (i, value) in value2.enumerated(){
            print("\(i2) : \(i) => \(value)")
        }
    }
}
