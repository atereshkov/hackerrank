import Foundation

/*
 https://www.hackerrank.com/challenges/time-conversion/problem
 
 Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.

 Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.
 
 Input Format
 A single string s containing a time in 12-hour clock format (i.e.: hh:mm:ss:AM or hh:mm:ss:PM), where 01 <= hh <= 12 and 00 <= mm, ss <= 59.
 
 Constraints
 All input times are valid
 
 Output Format
 Convert and print the given time in -hour format, where .

 Sample Input
 07:05:45PM
 
 Sample Output
 19:05:45
 */

func timeConversion(s: String) -> String {
    let df = DateFormatter()
    df.dateFormat = "h:mm:ssa"
    let date = df.date(from: s)
    
    let df2 = DateFormatter()
    df2.dateFormat = "HH:mm:ss"
    
    return df2.string(from: date!)
}

let t = timeConversion(s: "07:05:45PM")

print(t)
