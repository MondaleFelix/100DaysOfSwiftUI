import UIKit

protocol Building {
    var rooms: Int { get }
    var price: Int { get set }
    var agent: String { get }
    
    func printSummary()
}

extension Building {
    func printSummary() {
        print("This house has \(rooms) rooms and costs \(price)$. Please contact \(agent) for further details")
    }
    
}

struct House: Building {
    var rooms: Int
    var price: Int
    var agent: String

}

struct Office: Building {
    var rooms: Int
    var price: Int
    var agent: String
}
