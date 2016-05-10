//
//  main.swift
//  SwiftFunction
//
//  Created by admin on 5/9/2559 BE.
//  Copyright © 2559 admin. All rights reserved.
//

import Foundation

// 1. No parameter
// Create function
func hello(){

    print("Hello Swift")
}

// Call function
hello();

// 2. Function with parameter
func circleArea(radius:Float)->Float{
    
    var Area:Float
    Area = 3.14*radius*radius;
    return Area

}

func circleRound(radius:Float){
    
    var Round:Float
    Round = 2*3.14*radius;
    print(Round)
    
}

// Call
print(circleArea(12.9))

// Default Value of parameter function
func theStarName (name:String,last:String="The Star")->String{

    let result = name+" "+last
    return result

}

let star = theStarName("Boy")
print(star)

// Nest function
func newPosition(moveRight test:Bool, xPosition:Int)->Int{
    
    func goRight(xPosition:Int)->Int{
        return xPosition+1
    }
    
    func goLeft(xPosition:Int)->Int{
        return xPosition-1
    }

    // เรียกใช้งาน Nest Function
    let dicision:(Int)->Int = test ? goRight:goLeft
    return dicision(xPosition)
}

var position = newPosition(moveRight: true, xPosition: 15)
print("present position \(position)")






