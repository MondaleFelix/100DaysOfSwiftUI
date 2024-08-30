import UIKit

var greeting = "Hello, playground"

enum InputError : Error {
    case outOfBounds, noRoot
}

func squareRoot(_ number: Int)throws -> Int {
    
    if number < 1 || number > 10_000 {
        throw InputError.outOfBounds
    }
    
    for i in 1 ... number {
        if i * i == number {
            return i
        }
    }
    
    throw InputError.noRoot

}

do {
    let root = try squareRoot(49)
    print(root)
} catch {
    print("There is no whole integer sqaure root")
}

do {
    let root = try squareRoot(50)
    print(root)
} catch {
    print("There is no whole integer sqaure root")
}
