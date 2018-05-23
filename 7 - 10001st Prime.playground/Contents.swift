/*
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
 What is the 10 001st prime number?
*/

import UIKit
import Darwin

let limit : Double = 1000000
var count = 0

for number in 2...Int(limit) where number % 2 != 0{
    var prime = true
    
    for i in 2...(Int(sqrt(limit))){
        if(number % i) == 0 && number != i{
            prime = false
            break
        }
    }
    
    if(prime && count < 10002){
        count += 1
        print("index \(count): \(number)")
    }
}
