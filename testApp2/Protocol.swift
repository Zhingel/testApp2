//
//  Protocol.swift
//  testApp2
//
//  Created by Стас Жингель on 05.12.2021.
//

import Foundation

protocol GeneralAuthService {
    var printedText: String? {get}
    func setupStringValue()
}


class DataBaseService {

    let authService: GeneralAuthService

    init(authService: GeneralAuthService) {
        self.authService = authService
    }

    func load() {
        print(self.authService.printedText)
    }
}
