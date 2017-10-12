//
//  main.swift
//  Calc Array Points
//
//  Created by Ryan Liang on 10/11/17.
//  Copyright © 2017 Ryan Liang. All rights reserved.
//

import Foundation

func add(_ x: Int?,_ y:Int?) -> Int? {
    if let x2 = x, let y2 = y{
        return (x2+y2)
    }else{
        return nil
    }
}

func subtract(_ x: Int?,_ y:Int?) -> Int? {
    if let x2 = x, let y2 = y{
        return (x2-y2)
    }else{
        return nil
    }
}

func multiply(_ x: Int?,_ y:Int?) -> Int? {
    if let x2 = x, let y2 = y{
        return (x2*y2)
    }else{
        return nil
    }
}

func divide(_ x: Int?,_ y:Int?) -> Int? {
    if let x2 = x, let y2 = y{
        return (x2/y2)
    }else{
        return nil
    }
}

func doTheMath(_ f: ((Int?, Int?) -> Int?)?,_ x: Int?, _ y: Int?) -> Int? {
    if let x2 = x, let y2 = y, let f2 = f{
        return f2(x2,y2)
    }else{
        return nil
    }
}

func add(_ x: [Int]?) -> Int? {
    if let x2 = x{
        var result = 0
        for n in x2 {
            result += n
        }
        return result
    }else{
        return nil
    }
    
}

func mul(_ x: [Int]?) -> Int? {
    if let x2 = x{
        var result = 1
        for n in x2 {
            result *= n
        }
        return result
    }else{
        return nil
    }
    
}

func count(_ x: [Int]?) -> Int? {
    if let x2 = x{
        return x2.count
    }else{
        return nil
    }
    
}

func avg(_ x: [Int]?) -> Int? {
    if let x2 = x {
        return add(x2)!/count(x2)!
    }else{
        return nil
    }
    
}

func doTheMath(_ f: (([Int]?) -> Int?)?,_ x:[Int]?) -> Int? {
    if let f2 = f, let x2 = x{
        return f2(x2)
    }else{
        return nil
    }
    
}

/* not sure how to handle non-two-arity case*/

func add(_ x:(Int,Int),_ y:(Int, Int)) -> (Int, Int) {
    return (x.0 + y.0, x.1 + y.1)
}

func subtract(_ x:(Int,Int),_ y:(Int, Int)) -> (Int, Int) {
    return (x.0 - y.0, x.1 - y.1)
}

func add(x:[String:Int]?,y:[String:Int]?) -> [String:Int]?{
    if let p1x = x?["x"], let p1y = x?["y"], let p2x = y?["x"],let p2y = y?["y"]{
        return ["x":p1x + p2x,"y":p1y + p2y]
    }else{
        return nil
    }
}

func subtract(x:[String:Int]?,y:[String:Int]?) -> [String:Int]?{
    if let p1x = x?["x"], let p1y = x?["y"], let p2x = y?["x"],let p2y = y?["y"]{
        return ["x":p1x - p2x,"y":p1y - p2y]
    }else{
        return nil
    }
}

func add(x:[String:Double]?,y:[String:Double]?) -> [String:Double]?{
    if let p1x = x?["x"], let p1y = x?["y"], let p2x = y?["x"],let p2y = y?["y"]{
        return ["x":p1x + p2x,"y":p1y + p2y]
    }else{
        return nil
    }
}

func subtract(x:[String:Double]?,y:[String:Double]?) -> [String:Double]?{
    if let p1x = x?["x"], let p1y = x?["y"], let p2x = y?["x"],let p2y = y?["y"]{
        return ["x":p1x - p2x,"y":p1y - p2y]
    }else{
        return nil
    }
}
