//: [Previous](@previous)

import Foundation

//https://www.hackingwithswift.com/example-code/language/what-are-keypaths
//keypaths are a way of storing (uninvoked) references to properties
//they refer to a property itself rather than to that property’s value.

struct Starship {
    var name: String
    var maxWarp: Double
}

let voyager = Starship(name: "Voyager", maxWarp: 9.975)


let nameKeyPath = \Starship.name
let warpKeyPath = \Starship.maxWarp

print(nameKeyPath)

print(voyager[keyPath: nameKeyPath])
print(voyager[keyPath: warpKeyPath])

print(voyager[keyPath: \.name])
print(voyager[keyPath: \.maxWarp])

//: [Next](@next)
