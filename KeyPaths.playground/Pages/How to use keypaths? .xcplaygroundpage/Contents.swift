//: [Previous](@previous)

import Foundation

//https://www.hackingwithswift.com/articles/57/how-swift-keypaths-let-us-write-more-natural-code

//store keypaths for later

//the keypath must refer to whichever type conforms to the protocol (Self)
//and it will have the same value as whatever is used to fill the ID hole in our protocol.
//it is a generic property
protocol Identifiable {
    //this allow us to ignore the type of the ID
    associatedtype ID
    //this allow us to ignore the name of the property that represents the identity
    static var idKey: WritableKeyPath<Self, ID> { get }
}

struct Person: Identifiable {
    static let idKey = \Person.socialSecurityNumber
    var socialSecurityNumber: String
    var name: String
}

struct Book: Identifiable {
    static let idKey = \Book.isbn
    var isbn: String
    var title: String
}

//: [Next](@next)
