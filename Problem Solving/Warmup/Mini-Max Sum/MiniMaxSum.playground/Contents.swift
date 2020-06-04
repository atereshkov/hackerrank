import Foundation

/*
 https://www.hackerrank.com/challenges/mini-max-sum/problem
 
 Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

 For example, arr = [1, 3, 5, 7, 9]. Our minimum sum is 1 + 3 + 5 + 7 = 16 and our maximum sum is 3 + 5 + 7 + 9 = 24.
 We would print
 16 24
 
 Output Format

 Print two space-separated long integers denoting the respective minimum and maximum values that can be calculated by summing exactly four of the five integers. (The output can be greater than a 32 bit integer.)

 Sample Input
 1 2 3 4 5
 
 Sample Output
 10 14
 
 Explanation
 Our initial numbers are 1, 2, 3, 4, and 5. We can calculate the following sums using four of the five integers:

 If we sum everything except 1, our sum is 2 + 3 + 4 + 5 = 14.
 If we sum everything except 2, our sum is 1 + 3 + 4 + 5 = 13.
 If we sum everything except 3, our sum is 1 + 2 + 4 + 5 = 12.
 If we sum everything except 4, our sum is 1 + 2 + 3 + 5 = 11.
 If we sum everything except 5, our sum is 1 + 2 + 3 + 4 = 10.
 
 Hints: Beware of integer overflow! Use 64-bit Integer.
 */

func miniMaxSum(arr: [UInt64]) {
    var minSum: UInt64 = 0
    var maxSum: UInt64 = 0
    
    var sortedArrayFirst = arr.sorted()
    var sortedArrayLast = arr.sorted()
    
    sortedArrayFirst.removeFirst()
    sortedArrayLast.removeLast()
    
    sortedArrayFirst.forEach({ i in
        maxSum += i
    })
    
    sortedArrayLast.forEach({ i in
        minSum += i
    })
    
    print("\(minSum) \(maxSum)")
}

miniMaxSum(arr: [1, 2, 3, 4, 5])
