import UIKit

var greeting = "Hello, playground"

class Animal {
    let legs: Int = 4
}

class Dog: Animal {
    func speak() {
        print("Bark Bark bro")
    }
}

class Cat: Animal{
    var isTame: Bool
    
    func speak() {
        print("Meow meow bro")
    }
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init()
    }
}

class Poodle: Dog {
    override func speak() {
        print("I'm a poodle bro, bark")
    }
}

class Corgi: Dog {
    override func speak() {
        print("I'm a Corgi bro, bark")
    }
}

class Persian: Cat {
    override func speak(){
        print("I'm a persian bro, meow")
    }
}

class Lion: Cat {
    override func speak(){
        print("I'm a Lion bro, meow")
    }
}



