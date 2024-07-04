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
        format1()
    } else if name == "2" {
        format2()
    } else {
        fatalError()
    }
}

func format1() {
    print("1")
}

func format2() {
    print("2")
}
