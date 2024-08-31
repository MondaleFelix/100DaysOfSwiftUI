import UIKit

var greeting = "Hello, playground"

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

var oddNumbers = luckyNumbers.filter({!$0.isMultiple(of: 2)})

let sortedNumbers = oddNumbers.sorted(by: {$0 < $1})

let luckNumbers = sortedNumbers.map({"\($0) is a lucky number"})

for number in luckNumbers {
    print(number)
}
