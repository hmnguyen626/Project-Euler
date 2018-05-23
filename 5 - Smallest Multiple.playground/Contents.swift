/*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/

import UIKit

var condition: Bool = false
var num: Int = 2520

/*
 Any number divisible by 20 can be divisible by 2, 4 ,5 (prime factorization).
 Any number divisible by 18 can be divisible by the remainding 3, 6, and 9
 etc ..
*/
func checkDivision(number: Int) -> Bool {
    if(number % 11 == 0 && number % 13 == 0 && number % 14 == 0 && number % 16 == 0 && number % 17 == 0 && number % 18 == 0
        && number % 19 == 0 && number % 20 == 0 ){
        return true
    } else {
        return false
    }
}

while(condition == false){
    if checkDivision(number: num){
        condition = true
        print("\(num)")
    } else {
        // We increment by 2520 because it is the least common multiple from range 1...10
        num += 2520
    }
    
}
