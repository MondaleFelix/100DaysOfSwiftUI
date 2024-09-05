import UIKit

var greeting = "Hello, playground"

func randomElement(arr: [Int]?) -> Int {
    return arr?.randomElement() ?? Int.random(in: 1...100)
}
