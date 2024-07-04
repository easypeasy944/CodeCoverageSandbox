//
//  ViewController.swift
//  CodeCoverageSandbox
//
//  Created by Aynur Galiev on 01.05.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let value = ProcessInfo.processInfo.environment["value"]!
        format(name: value)
    }
}

