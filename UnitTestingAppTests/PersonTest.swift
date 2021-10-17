//
//  PersonTest.swift
//  UnitTestingAppTests
//
//  Created by Евгений Березенцев on 17.10.2021.
//

import XCTest
@testable import UnitTestingApp

class PersonTest: XCTestCase {
    var person: Person?
    var personWithFullName: Person?

    override func setUp() {
        super.setUp()
        person = Person(name: "Foo", phone: "Baz")
        personWithFullName = Person(name: "Foo", surname: "Bar",  phone: "Baz")
    }

    override func tearDown() {
        person = nil
        personWithFullName = nil
        super.tearDown()
    }
    
    func testInitPersonWithNameAndPhone() {
        XCTAssertNotNil(person)
    }

    func testInitPersonWithFullNameAndPhone() {
        
        XCTAssertNotNil(personWithFullName)
    }
    
    func testWhenGivenNameAndPhoneSetsNameAndPhone() {
        
        XCTAssertEqual(person?.name, "Foo")
        XCTAssertEqual(person?.phone, "Baz")
    }
    
    func testWhenGivenFullNameAndPhoneSetsFullNameAndPhone() {
        
        XCTAssertTrue(personWithFullName?.surname == "Bar")
    }
    
    func testInitPersonWithDate() {
        XCTAssertNotNil(person?.date)
    }

    func testPerformanceExample() {
        self.measure {
  
        }
    }

}
