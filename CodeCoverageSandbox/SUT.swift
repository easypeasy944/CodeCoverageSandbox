//
//  SUT.swift
//  CodeCoverageSandbox
//
//  Created by Aynur Galiev on 01.05.2024.
//

import InstrProfiling
import Foundation

func format(name: String) {
    if name == "1" {
        fuckingFormat1()
    } else if name == "2" {
        fuckingFormat2()
    } else {
        fatalError()
    }
}

func fuckingFormat1() {
    print("1")
}

func fuckingFormat2() {
    print("2")
}
