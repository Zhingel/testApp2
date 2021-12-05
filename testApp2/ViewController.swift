//
//  ViewController.swift
//  testApp2
//
//  Created by Стас Жингель on 05.12.2021.
//

import UIKit

class ViewController: UIViewController {
    let printedText: UILabel = {
        let label = UILabel()
        label.text = "1234"
        return label
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locator = ServiceLocator()
        let authService = locator.getAuthService()
        authService.setupStringValue()
        printedText.text = authService.printedText
   //     let dataBaseService = locator.dataBaseService()
//        dataBaseService.load()
        
        view.backgroundColor = .white
        view.addSubview(printedText)
        printedText.translatesAutoresizingMaskIntoConstraints = false
        printedText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        printedText.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}

