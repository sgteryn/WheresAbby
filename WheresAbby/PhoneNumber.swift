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
    
    let prefix: Int = 555
    
    let line: Int
    
    let description: String = "SORRY, NOT IMPLEMENTED YET"
    
//    static func random(country: Int = 1, area: Int) -> PhoneNumber {
//        PhoneNumber(areaCode: <#T##Int#>, line: <#T##Int#>)
//    }
    
}
