//
//  CodeCoverageSandboxUITests.swift
//  CodeCoverageSandboxUITests
//
//  Created by Aynur Galiev on 01.05.2024.
//

import InstrProfiling
import XCTest

final class CodeCoverageSandboxUITests: XCTestCase {
    
    func testExample1() throws {
        let app = XCUIApplication()
        app.launchEnvironment = ["value": "1", "name": name]
        app.launch()
    }
    
    func testExample2() throws {
        let app = XCUIApplication()
        app.launchEnvironment = ["value": "2", "name": name]
        app.launch()
    }
}
