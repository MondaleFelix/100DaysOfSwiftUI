import UIKit

enum Gears {
    case park
    case drive
    case reverse
    case nuetral
}

struct Car {
    let model: String
    private let numOfSeats: Int
    var currentGear: Gears
    
    init(model: String, numOfSeats: Int) {
        self.model = model
        self.numOfSeats = numOfSeats
        currentGear = Gears.park
    }
    
    mutating func changeGears(gear: Gears) -> Bool{
        if gear == currentGear {
            print("The gear is already in \(gear)")
            return false
        } else {
            print("Gear is in \(gear)")
            return true
        }
    }
}
