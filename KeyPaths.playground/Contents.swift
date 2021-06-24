import UIKit
//https://www.hackingwithswift.com/articles/57/how-swift-keypaths-let-us-write-more-natural-code

protocol Identifiable {
    var id: String { get set }
}

struct Person {
    var socialSecurityNumber: String
    var name: String
}

struct Book {
    var isbn: String
    var title: String
}


