import Foundation

/*
 https://www.hackerrank.com/challenges/birthday-cake-candles/problem
 
 You are in charge of the cake for your niece's birthday and have decided the cake will have one candle for each year of her total age. When she blows out the candles, she’ll only be able to blow out the tallest ones. Your task is to find out how many candles she can successfully blow out.

 For example, if your niece is turning 4 years old, and the cake will have 4 candles of height 4, 4, 1, 3, she will be able to blow out 2 candles successfully, since the tallest candles are of height 4 and there are 2 such candles.
 
 Output Format

 Return the number of candles that can be blown out on a new line.

 Sample Input
 3 2 1 3
 
 Sample Output
 2
 
 Explanation
 We have one candle of height 1, one candle of height 2, and two candles of height 3. Your niece only blows out the tallest candles, meaning the candles where height = 3. Because there are 2 such candles, we print 2 on a new line.
 */

func birthdayCakeCandles(arr: [Int]) -> Int {
    let sortedArray = arr
        .sorted()
        .reversed()
    
    let first = sortedArray.first ?? 0
    var tallestCount = 0
    
    for i in sortedArray {
        if (first != i) {
            break
        } else {
            tallestCount += 1
        }
    }
    
    return tallestCount
}

let candles = birthdayCakeCandles(arr: [1, 3, 2, 3])

print(candles)
