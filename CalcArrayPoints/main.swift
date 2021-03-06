//
//  main.swift
//  CalcArrayPoints
//
//  Created by Muhaamed Drammeh on 4/6/17.
//  Copyright © 2017 Muhaamed Drammeh. All rights reserved.
//

import Foundation

//////////////  Build a calculator  //////////////////

// ADD
func add(num1:Int, num2:Int) ->Int{
    return num1+num2
}

// SUBTRACT
func subtract(num1:Int, num2:Int) ->Int{
    return num1-num2
}

// MULTIPLY
func multiply(num1:Int, num2:Int) ->Int{
    return num1*num2
}

// DIVIDE
func divide(num1:Int, num2:Int) ->Int{
    return num1/num2
}

//Generic function
func genericFunction(value1:Int, value2:Int,operatorFunc: (Int,Int) -> Int) ->Int{
    return (operatorFunc(value1,value2))
}

print (genericFunction(value1: 3, value2: 7, operatorFunc: add))



////////////////// Array fun /////////////////

// newAdd
func newAdd (numbers:[Int]) -> Int{
    var total = 0
    for i in numbers {
        total += i
    }
    return total
}

// newMultiply
func newMuliply (numbers:[Int]) -> Int{
    var total = 0
    for i in numbers {
        total *= i
    }
    return total
}

// Count
func count (numbers:[Int]) -> Int{
    let total = numbers.count
    return total
}

// average
func avg (numbers:[Int]) -> Int{
    let lenght = numbers.count
    var avg = 0
    
    var sum = 0
    for i in numbers {
        sum += i
    }
    avg = sum/lenght
    
    return avg
}

// Array Generic function
func arrayGenericFunction(ArrayOfInts:[Int],ArrayOperatorFunc: ([Int]) -> Int){
    print(ArrayOperatorFunc(ArrayOfInts))
}

arrayGenericFunction(ArrayOfInts: [2,2,1,3,2,2], ArrayOperatorFunc: count(numbers:))





///////////////// Points ////////////////

// addingTuples
func addTuples (firstPoint:(Int,Int),secondPoint:(Int,Int)) ->(Int, Int){
    //print(y)
    let tupleX = firstPoint.0 + secondPoint.0
    let tupleY = firstPoint.1 + secondPoint.1
    return (tupleX,tupleY)
}

// subtractingTuples
func subtractTuples (firstPoint:(Int,Int),secondPoint:(Int,Int)) ->(Int, Int){
    //print(y)
    let tupleX = firstPoint.0 - secondPoint.0
    let tupleY = firstPoint.1 - secondPoint.1
    return (tupleX,tupleY)
}

let tuple1 = (1,2)

let tuple2 = (3,4)
print(addTuples(firstPoint: tuple1, secondPoint: tuple2))

// Dictionary


func blah (dict1:Dictionary<String,Int>, dict2:Dictionary<String,Int>) -> Any{
    
    let firstX:Int? = dict1["x"]
    let firstY:Int? = dict1["y"]!
    let secondX:Int? = dict2["x"]!
    let secondY:Int? = dict2["y"]!
    

    var finalX:Int?
    var finalY:Int?
    
    
    
    if let firstX = dict1["x"] {
         finalX = firstX+secondX!
    }
    if let firstY = dict1["y"] {
         finalY = firstY+secondY!
    }
    
    var x:String? = "x"
    var y:String? = "y"
    
    let outputDictionary:[String:Int] = [x!:finalX!, y!:finalY!]
    return outputDictionary
    
}

print(blah(dict1: ["x":1,"y":1], dict2: ["x":1,"y":3]))







