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

    func testPerformanceExample() {
        
        self.measure {
            
        }
    }

}
