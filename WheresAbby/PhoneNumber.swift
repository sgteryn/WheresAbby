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
    
    var description: String {
        "1 (\(areaCode)) \(prefix)-\(String(format: "%04d", line))"
    }
    
//    static func random(country: Int = 1, area: Int) -> PhoneNumber {
//        PhoneNumber(areaCode: <#T##Int#>, line: <#T##Int#>)
//    }
    
}
