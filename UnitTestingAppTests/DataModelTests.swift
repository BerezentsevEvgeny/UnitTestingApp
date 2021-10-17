//
//  UnitTestingAppTests.swift
//  UnitTestingAppTests
//
//  Created by Евгений Березенцев on 12.10.2021.
//

import XCTest
@testable import UnitTestingApp

class DataModelTests: XCTestCase {

    var sut: DataModel!
    
    override func setUp() {
        super.setUp()
        sut = DataModel()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testLowestVolumeShouldBeZero() {
        // given
        sut.setVolume(to: -1)
        // when
        let volume = sut.volume
        // than
        XCTAssert(volume == 0, "Lovest should be equal to 0")
    }
    
    func testHighestVolumeShouldBeHundred() {
        // given
        sut.setVolume(to: 105)
        // when
        let volume = sut.volume
        // than
        XCTAssert(volume == 100, "Highest should be equal to 100")
    }

    func testPerformanceExample() {
        measure {
            //Method to test
        }
    }
    
    func testNumberOneMustBeGreaterThanNumberTwo() {
        let numberOne = 2
        let numberTwo = 1
        
        let isGreater = sut.greaterThanValue(x: numberOne, y: numberTwo)
        
        XCTAssert(isGreater, "The numerOne should be greater than numberTwo")
    }
    
    func testNumberOneNotBeGreaterThanNumberTwo() {
        let numberOne = 1
        let numberTwo = 3
        
        let isGreater = sut.greaterThanValue(x: numberOne, y: numberTwo)
        
        XCTAssert(!isGreater, "The numerOne should be greater than numberTwo")
    }

}
