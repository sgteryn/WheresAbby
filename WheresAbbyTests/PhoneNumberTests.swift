//
//  PhoneNumberTests.swift
//  WheresAbby
//
//  Created by Alonso del Arte on 11/1/23.
//

import XCTest

final class PhoneNumberTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDescription() throws {
        let area = Int.random(in: 200...999)
        let exchange = Int.random(in: 200...998)
        let num = Int.random(in: 1...9989)
        let phoneNumber = PhoneNumber(areaCode: area, prefix: exchange, line: num)
        let expected = "1 (\(area)) \(exchange)-\(String(format: "%04d", num))"
        let actual = phoneNumber.description
        XCTAssertEqual(expected, actual)
    }
    
    func testRandom() {
        let expected = Int.random(in: 200...650)
        let phoneNumber = PhoneNumber.random(area: expected)
        let actual = phoneNumber.areaCode
        XCTAssertEqual(expected, actual)
    }
    
    func testRandomIsRandomEnough() {
        let numberOfCalls = 100 + Int.random(in: 0...99)
        let expected = 65 * numberOfCalls / 100
        var givenNumbers: Set<PhoneNumber> = []
        for _ in 1...numberOfCalls {
            givenNumbers.insert(PhoneNumber.random(area: 313))
        }
        let actual = givenNumbers.count
        XCTAssertGreaterThan(actual, expected)
    }
    
    func testRandomPhoneNumberExclusions() {
        let exclusions: [String] = ["000", "110", "616", "666", "911", "999"]
        let numberOfCalls = 1000
        let expected: Set<PhoneNumber> = []
        var actual: Set<PhoneNumber> = []
        for _ in 1...numberOfCalls {
            let number = PhoneNumber.random(area: 313)
            for excluded in exclusions {
                if number.description.contains(excluded) {
                    actual.insert(number)
                }
            }
        }
        XCTAssertEqual(expected, actual)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
