//
//  Person.swift
//  UnitTestingApp
//
//  Created by Евгений Березенцев on 17.10.2021.
//

import Foundation

class Person {
    let name: String
    let phone: String
    var surname: String?
    private(set)  var date: Date
    
    init(name: String, phone: String) {
        self.name = name
        self.phone = phone
        date = Date()
    }
    
    init(name: String, surname: String, phone: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
        date = Date()
    }
}
