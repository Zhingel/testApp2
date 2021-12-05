//
//  ServiceLocator.swift
//  testApp2
//
//  Created by Стас Жингель on 05.12.2021.
//

import Foundation

class ServiceLocator {
    
    lazy var authService1: AuthService1 = .init()
    
    func getAuthService() -> GeneralAuthService {
        authService1
    }
    func dataBaseService() -> DataBaseService {
        DataBaseService(authService: getAuthService())
    }
}
