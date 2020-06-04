import Foundation

/*
 https://www.hackerrank.com/challenges/plus-minus/problem
 
 Given an array of integers, calculate the fractions of its elements that are positive, negative, and are zeros. Print the decimal value of each fraction on a new line.
 
 Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to 10(-4) are acceptable.
 
 For example, given the array arr = [1, 1, 0, -1, -1] there are  elements, two positive, two negative and one zero. Their ratios would be 2/5 = 0.4, 2/5 = 0.4 and 1/5 = 0.2. It should be printed as
 0.400000
 0.400000
 0.200000
 
 Output Format

 You must print the following  lines:

 A decimal representing of the fraction of positive numbers in the array compared to its size.
 A decimal representing of the fraction of negative numbers in the array compared to its size.
 A decimal representing of the fraction of zeros in the array compared to its size.
 Sample Input
 6
 -4 3 -9 0 4 1
 
 Sample Output
 0.500000
 0.333333
 0.166667
 
 Explanation

 There are 3 positive numbers, 2 negative numbers, and 1 zero in the array.
 The proportions of occurrence are positive: 3/6 = 0.5, negative: 2/6 = 0.33 and zeros: 1/6 = 0.16.
 */

func plusMinus(arr: [Int]) {
    var positiveCount = 0
    var negativeCount = 0
    var zeroCount = 0
    
    for i in arr {
        if (i == 0) {
            zeroCount += 1
        } else if (i < 0) {
            negativeCount += 1
        } else if (i > 0) {
            positiveCount += 1
        }
    }
    
    let positiveRatio = Double(positiveCount) / Double(arr.count)
    let negativeRatio = Double(negativeCount) / Double(arr.count)
    let zeroRatio = Double(zeroCount) / Double(arr.count)
    
    print(positiveRatio)
    print(negativeRatio)
    print(zeroRatio)
}

//plusMinus(arr: [-4, 3, -9, 0, 4, 1]) // Test Case 1
//plusMinus(arr: [1, -2, -7, 9, 1, -8, -5]) // Test Case 2
//plusMinus(arr: [1, 2, 3, -1, -2, -3, 0, 0]) // Test Case 11
//plusMinus(arr: [-4, -2, -9, -3, -6])
//plusMinus(arr: [4, 2, 9, 3, 6])
//plusMinus(arr: [1, 2, 3, 0, -1, -2, -3, 0, 0])
