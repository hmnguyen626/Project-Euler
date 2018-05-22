/*
 Problem
 --------------------------------------------------------------------------------------------------------------------------------------------
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143?
 --------------------------------------------------------------------------------------------------------------------------------------------
 */

import UIKit

func findLargestPrime(number: Int){
    var largestPrime : Int = 0
    var step : Int = 2
    var num = number
    
    while(num > largestPrime){
        // If our number is divisible by our current step, then divide our number by step and also
        // if step > largePrime, then assign as our current max.
        if(num%step == 0){
            num = num / step
            
            if(step > largestPrime){
                largestPrime = step
            }
            
            step = 2
        } else {
            step += 1
        }
    }
    
    print("\(largestPrime)")
}

findLargestPrime(number: 600851475143)


