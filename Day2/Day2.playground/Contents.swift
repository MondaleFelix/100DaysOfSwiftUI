import UIKit


let fileName = "paris.jpg"
print(fileName.hasSuffix(".jpg"))

//let number = 120
//print(number.isMultiple(of: 3))

let goodDogs = true
var gameOver = false

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

gameOver.toggle()
print(gameOver)

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old"
let number = 11
let missionMessage = "Apollo \(number) landed on the moon"

print("5 * 5 = \(5*5)")
