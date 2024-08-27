import UIKit

var greeting = "Hello, playground"

var someCondition: Bool = true

if someCondition {
    print("Do something")
    print("Do something else")
    print("Do a third thing")
}

let score = 85

if score > 80 {
    print("Great Job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

