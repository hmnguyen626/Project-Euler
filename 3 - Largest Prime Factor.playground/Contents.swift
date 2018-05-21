/*
 Problem
 --------------------------------------------------------------------------------------------------------------------------------------------
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143?
 --------------------------------------------------------------------------------------------------------------------------------------------
 */

import UIKit

// Returns a dictionary
func findPrimes(limit: Int) {
    
    // Dictionary that holds a number index that has a value boolean value.
    // True will be a prime, false will not.
    var numbers: [Int:Bool] = [:]
    var a = 0
    var b = 0
    
    // Fill our dictionary with data
    for i in 0..<limit {
        numbers.updateValue(true, forKey: i+1)
    }
    
    for i in 1..<2 {
        numbers[i] = false
    }
    
    for i in 2..<numbers.count {
        if numbers[i] == true {
            for j in stride(from: 2 , to: numbers.count, by: 1){
                numbers.updateValue(false, forKey: a*b)
            }
            b += 1
        }
        b = 0
        a += 1
    }
//    for i in 0..<numbers.count {
//        if numbers[i] == true {
//            print(numbers[i])
//        }
//    }
    print(numbers)
}

findPrimes(limit: 10)

