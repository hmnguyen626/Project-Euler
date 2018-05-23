/*
The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
*/

import UIKit
import Darwin

// Traditional func method
func sumSquares() -> Int {
    var sum : Int = 0
    
    for i in 1...100{
        sum += Int(pow(Double(i), 2.0))
    }
    
    return sum
}

// Closure method
var squareSums: () -> Int = {
    var sum : Int = 0
    
    for i in 1...100{
        sum += i
    }
    
    return Int(pow(Double(sum), 2.0))
}

print(squareSums() - sumSquares())
