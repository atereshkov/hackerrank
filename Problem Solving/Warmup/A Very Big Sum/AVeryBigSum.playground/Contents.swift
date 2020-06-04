import Foundation

/*
 https://www.hackerrank.com/challenges/a-very-big-sum/problem
 
 Calculate and print the sum of the elements in an array, keeping in mind that some of those integers may be quite large.
 
 Note:
 The range of the 32-bit integer is [-2147483648, 2147483648].
 When we add several integer values, the resulting sum might exceed the above range. You might need to use long data type in to store such sums.
 */

func aVeryBigSum(ar: [UInt64]) -> UInt64 {
    var sum: UInt64 = 0

    ar.forEach({ i in
        sum += i
    })

    return sum
}
