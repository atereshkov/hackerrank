import Foundation

/*
 https://www.hackerrank.com/challenges/compare-the-triplets/problem
 
 Alice and Bob each created one problem for HackerRank. A reviewer rates the two challenges, awarding points on a scale from 1 to 100 for three categories: problem clarity, originality, and difficulty.
 
 We define the rating for Alice's challenge to be the triplet a (a[0], a[1], a[2]), and the rating for Bob's challenge to be the triplet b (b[0], b[1], b[2]).

 Your task is to find their comparison points by comparing a[0] with b[0], a[1] with b[1], and a[2] with b[2].

 If a[i] > b[i], then Alice is awarded 1 point.
 If a[i] < b[i], then Bob is awarded 1 point.
 If a[i] == b[i], then neither person receives a point.
 
 Given a and b, determine their respective comparison points.
 */

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var alicePoints = 0
    var bobPoints = 0
    
    // Assuming that a and b are sized equally
    for i in 0..<a.count {
        if (a[i] > b[i]) {
            alicePoints += 1
        } else if (a[i] < b[i]) {
            bobPoints += 1
        }
    }
    
    return [alicePoints, bobPoints]
}
