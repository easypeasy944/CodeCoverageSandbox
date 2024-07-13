//
//  SUT.swift
//  CodeCoverageSandbox
//
//  Created by Aynur Galiev on 01.05.2024.
//

import InstrProfiling
import Foundation

func format(name: String) {
    switch name {
    case "1":
        format1()
    case "2":
        format2()
    default:
        fatalError()
    }
}

func format1() {
    print("1")
}

func format2() {
    print("2")
}
