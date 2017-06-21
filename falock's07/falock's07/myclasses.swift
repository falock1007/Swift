//
//  myclasses.swift
//  falock's07
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

class myclass01{}
class myclass02{
    var x:Int
    init(x:Int){self.x = x}
}
class myclass03{
    var x = 123
    init(){}
}

class myclass04{
    var x:Int?
}


class myclass05{
    var x:Int{
        get{ //一定要有getter
            return 1
        }
        set{ //可以沒有setter
            //newValue
        }
    }
}
class myclass06{
    var y = 123
    var x:Int{
        return y * y
    }
}

class myclass07{
    var x = 0{
        willSet{
            //newValue
        }
        didSet{
            //
        }
    }
}
