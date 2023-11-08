//
//  PhoneNumber.swift
//  AboutAbby
//
//  Created by Alonso del Arte on 11/1/23.
//

import Foundation

struct PhoneNumber: CustomStringConvertible, Equatable, Hashable {
    
    let countryCode: Int = 1
    
    let areaCode: Int
    
    let prefix: Int
    
    let line: Int
    
    static let exclusionsForRandom: [String] = ["000", "110", "616", "666", "911", "999"]
    
    var description: String {
        "1 (\(areaCode)) \(prefix)-\(String(format: "%04d", line))"
    }
    
    private static func includesExclusion(_ number: PhoneNumber) -> Bool {
        let desc = number.description
        var flag = false
        for exclude in exclusionsForRandom {
            if desc.contains(exclude) {
                flag = true
            }
        }
        return flag
    }
    
    static func random(country: Int = 1, area: Int) -> PhoneNumber {
        var number = PhoneNumber(areaCode: area, prefix: 100, line: 0)
        var exclusionFlag = true
        while exclusionFlag {
            number = PhoneNumber(areaCode: area, prefix: Int.random(in: 101...998), line: Int.random(in: 10...9989))
            exclusionFlag = includesExclusion(number)
        }
        return number
    }
    
}
