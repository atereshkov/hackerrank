import Foundation

/*
 https://www.hackerrank.com/challenges/diagonal-difference/problem
 
 Given a square matrix, calculate the absolute difference between the sums of its diagonals.

 For example, the square matrix arr is shown below:

 1 2 3
 4 5 6
 9 8 9
 
 The left-to-right diagonal = 1 + 5 + 9 = 15. The right to left diagonal = 3 + 5 + 9. Their absolute difference is |15 - 17| = 2.
 */

func diagonalSum(_ arr: [[Int]], rev: Bool) -> Int {
    let size = arr.count
    var sum = 0
    
    for row in 0..<size {
        let itemIndex = rev ? size-row-1 : row
        sum += arr[row][itemIndex]
    }
    
    return sum
}

func diagonalDifference(arr: [[Int]]) -> Int {
    let primaryDiaSum = diagonalSum(arr, rev: false)
    let secondaryDiaSum = diagonalSum(arr, rev: true)
    let diff = abs(primaryDiaSum - secondaryDiaSum)
    return diff
}

let array = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

let diff = diagonalDifference(arr: array)
// diff should be equal to 15
