//
//  TestSemaphoreAppTests.swift
//  TestSemaphoreAppTests
//
//  Created by Pero Sechkov on 17.12.20.
//

import XCTest
@testable import TestSemaphoreApp

class TestSemaphoreAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAddingSemaphore() {
     
        let semaphoreDataModel = SemaphoreDataModel()
        let count = semaphoreDataModel.count
        semaphoreDataModel.addSemaphore(semaphore: Semaphore(color: .black, name: "Black"))
        XCTAssertTrue(count + 1 == semaphoreDataModel.count, "The test is not okay")

    }
    
    func testDeletingSemaphore() {
     
        let semaphoreDataModel = SemaphoreDataModel()
        let count = semaphoreDataModel.count
        semaphoreDataModel.deleteSemaphore(at: 0)
        XCTAssertTrue(count - 1 == semaphoreDataModel.count, "The test is not okay")

    }

}
