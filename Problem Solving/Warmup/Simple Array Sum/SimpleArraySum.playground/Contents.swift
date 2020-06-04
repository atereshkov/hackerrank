import Foundation

/*
 https://www.hackerrank.com/challenges/simple-array-sum/problem
 
 Given an array of integers, find the sum of its elements.
 */

func simpleArraySum(ar: [Int]) -> Int {
    var sum = 0
    
    ar.forEach({ i in
        sum += i
    })

    return sum
}
