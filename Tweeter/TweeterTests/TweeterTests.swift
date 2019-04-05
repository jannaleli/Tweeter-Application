//
//  TweeterTests.swift
//  TweeterTests
//
//  Created by Jann Aleli Zaplan on 1/4/19.
//  Copyright © 2019 Jann Aleli Zaplan. All rights reserved.
//

import XCTest
@testable import Tweeter

class TweeterTests: XCTestCase {
    var sampleText: String = ""
    
    override func setUp() {
         sampleText = "Put setup code here. This method is called before the invocation of each test method in the class. Put setup code here. This method is called before the invocation of each test method in the class."
        // Put setup code here. This method is called before the invocation of each test method in the class.

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
  
    }

    func testExample() {
        let numChar = TweeterLogic().getMessageCount(stringLen: sampleText.count)
       XCTAssertTrue(numChar == 4)
        let numB = TweeterLogic().getSubstring(stringMessage: sampleText)
        print(numB.0.count)
        let trueString = numB.0.components(separatedBy: " ").joined().count
       XCTAssertTrue(trueString < 50)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


