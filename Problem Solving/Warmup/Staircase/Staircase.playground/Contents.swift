import Foundation

/*
 https://www.hackerrank.com/challenges/staircase/problem
 
 Consider a staircase of size n = 4:

    #
   ##
  ###
 ####
 
 Observe that its base and height are both equal to n, and the image is drawn using # symbols and spaces. The last line is not preceded by any spaces.

 Write a program that prints a staircase of size n.
 
 Sample Input
 6
 
 Sample Output
      #
     ##
    ###
   ####
  #####
 ######
 */

func staircase(n: Int) {
    for index in stride(from: n - 1, to: -1, by: -1) {
        let spaces = String(repeating: " ", count: index)
        let symbols = String(repeating: "#", count: n - index)
        print("\(spaces)\(symbols)")
    }
}

staircase(n: 6)
