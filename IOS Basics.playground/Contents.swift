//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// closures

func doubler(input:Int)-> Int{
    return  input * 2
}


func makeMultiplier(multiplier:Int) ->((Int) -> Int) {
    let closure = { (input:Int) -> Int in
        return input * multiplier
        
    }
    return closure
}

//var multiplyClosure = {(a:Int, b:Int) -> Int in
//    return a * b
//}

//var multiplyClosure = {(a, b) -> Int in
//    a * b // single return
//}

var multiplyClosure: (Int, Int) -> Int

//var multiplyClosure = {
//  $0 * $1 // single return
//}


//let result = multiplyClosure(2,3)


let addClosure = {(a:Int,b:Int)->Int in
    return a + b
}

func operateOnNumbers(a:Int,b:Int,operation:(Int,Int)->Int) -> Int {
    let result = operation(a,b)

    return result
}

let c = operateOnNumbers(a: 2, b: 3, operation: {$0 + $1})
print(c)


func countingClosure () -> (() -> Int){
    var counter = 0
    
    let incrementCounter = { () -> Int in 
        counter += 1
        return counter
    }
    
    return incrementCounter
}

let c1 = countingClosure()
let c2 = countingClosure()

c1
c2
c1
c2
c1
c2