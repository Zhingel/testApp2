//
//  AuthService.swift
//  testApp2
//
//  Created by Стас Жингель on 05.12.2021.
//

import Foundation


class AuthService1: GeneralAuthService {
    var printedText: String?
    
    func setupStringValue() {
        printedText = "456"
    }
}

class AuthService2: GeneralAuthService {
    var printedText: String?
    
    func setupStringValue() {
        printedText = "789"
    }
}
