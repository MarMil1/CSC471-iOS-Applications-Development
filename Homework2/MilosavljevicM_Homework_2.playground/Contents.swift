//Marko Milosavljevic

/*
********** Problem 2 **********
Binary Search
 */
import UIKit
import Foundation

func rankFunction(in searchNumbers: [Int], for value: Int) -> Int? {
    var leftHalf = 0
    var rightHalf = searchNumbers.count - 1
    
    while leftHalf <= rightHalf {
        
        let middleValue = Int(floor(Double(leftHalf + rightHalf) / 2.0))
        
        if searchNumbers[middleValue] < value {
            leftHalf = middleValue + 1
        } else if searchNumbers[middleValue] > value {
            rightHalf = middleValue - 1
        } else {
            return middleValue
        }
    }
    return -1
    
}

var searchNumbers = [5, 4, 6, 7, 9, 2, 8, 1, 3]
searchNumbers.sort()

//Searching for number 5------------------------------------
let value1 = 5
let index1 = rankFunction(in: searchNumbers, for: value1)

if index1 != -1 {
    print("Number \(value1) is at index \(index1 ?? value1)")
} else {
    print ("Number \(value1) is not found \(index1 ?? value1)")
}

//Searching for number 7-------------------------------------
let value2 = 7
let index2 = rankFunction(in: searchNumbers, for: value2)

if index2 != -1 {
    print("Number \(value2) is at index \(index2 ?? value2)")
} else {
    print ("Number \(value2) is not found \(index2 ?? value2)")
}
//Searching for number 15-------------------------------------
let value3 = 15
let index3 = rankFunction(in: searchNumbers, for: value3)

if index3 != -1 {
    print("Number \(value3) is at index \(index3 ?? value3)")
} else {
    print ("Number \(value3) is not found \(index3 ?? value3)")
}
//Searching for number 21-------------------------------------
let value4 = 21
let index4 = rankFunction(in: searchNumbers, for: value4)

if index4 != -1 {
    print("Number \(value4) is at index \(index4 ?? value4)")
} else {
    print ("Number \(value4) is not found \(index4 ?? value4)")
}



/*
********** Problem 3 **********
Fraction class
*/

class Fraction {
    var numerator: Int = 0
    var denominator: Int = 1
    
    init(_ numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    init() {}
    
    func setTo(numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func print() {
        Swift.print("\(numerator)/\(denominator)")
    }
    
    func toDouble() -> Double {
        return Double(numerator) / Double(denominator);
    }
    
    func add(_ f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator + denominator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    
    func subtract(_ f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator - denominator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    
    func multiply(_ f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    
    func divide(_ f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator
        result.denominator = denominator * f.numerator
        result.reduce()
        return result
    }
    
    func reduce() {
        var u = abs(numerator)
        var v = denominator
        var r: Int
        while (v != 0) {
            r = u % v; u = v; v = r
        }
        numerator /= u
        denominator /= u
    }
    
}

var f1 = Fraction(1, over: 2)
var f2 = Fraction(1, over: 4)

//Addition----------------------------------------------
let resultAdd1 = f1.add(f2)
resultAdd1.print()

//Subtraction-------------------------------------------
let resultSubtract1 = f1.subtract(f2)
resultSubtract1.print()

//Multiplication----------------------------------------
let resultMultiply1 = f1.multiply(f2)
resultMultiply1.print()

//Division----------------------------------------------
let resultDivide1 = f1.divide(f2)
resultDivide1.print()

//********** Tests with different values **********

//Addition----------------------------------------------
var f3 = Fraction(3, over: 7)
var f4 = Fraction(2, over: 4)

let resultAdd2 = f3.add(f4)
resultAdd2.print()

//Subtraction-------------------------------------------
var f5 = Fraction(1, over: 5)
var f6 = Fraction(2, over: 3)

let resultSubtract2 = f5.subtract(f6)
resultSubtract2.print()

//Multiplication-------------------------------------------
var f7 = Fraction(2, over: 5)
var f8 = Fraction(3, over: 7)

let resultMultiply2 = f7.multiply(f8)
resultMultiply2.print()

//Division-------------------------------------------
var f9 = Fraction(4, over: 8)
var f10 = Fraction(5, over: 9)

let resultDivide2 = f9.divide(f10)
resultDivide2.print()






