//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by vince zipparro on 10/24/17.
//  Copyright © 2017 vince zipparro. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {

    }
    
    func testGetHours()
    {
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.33) == 17)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
