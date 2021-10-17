//
//  DataModel.swift
//  UnitTestingApp
//
//  Created by Евгений Березенцев on 12.10.2021.
//

import Foundation

class DataModel {
    
    private(set) var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
    
    func greaterThanValue(x: Int, y: Int) -> Bool {
        x > y
    }
}
