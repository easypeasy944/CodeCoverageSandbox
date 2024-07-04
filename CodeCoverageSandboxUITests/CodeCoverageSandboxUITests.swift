//
//  CodeCoverageSandboxUITests.swift
//  CodeCoverageSandboxUITests
//
//  Created by Aynur Galiev on 01.05.2024.
//

import InstrProfiling
import XCTest

final class CodeCoverageSandboxUITests: XCTestCase {
//
    override func setUp() {
//        __llvm_profile_initialize_file()
//        __llvm_profile_set_filename("test")
        super.setUp()
        print(name)
        
//        print(String(cString: __llvm_profile_get_filename()))
    }
//    
    override func tearDown() {
//        let filename = __llvm_profile_get_filename()
//        print(String(cString: filename!))
//        __llvm_profile_write_file()
        super.tearDown()
    }
    
    func testExample1() throws {
        print(String(cString: __llvm_profile_get_filename()))
//        let filename = __llvm_profile_get_filename()
//        print(String(cString: filename!))
        
//        __llvm_profile_set_fil/*ename("/Users/aynurgaliev/Desktop/CodeCoverageSandbox/DerivedData/CodeCoverageSandbox/Build/ProfileData/ED847150-A54A-4392-9B9A-9C99F42AFF56/testExample1")*/
        
        let app = XCUIApplication()
        app.launchEnvironment = ["value": "1", "name": name]
        app.launch()
//        __llvm_profile_write_file()
    }
    
    func testExample2() throws {
        print(String(cString: __llvm_profile_get_filename()))
//        let filename = __llvm_profile_get_filename()
//        print(String(cString: filename!))
        
        let app = XCUIApplication()
        app.launchEnvironment = ["value": "2", "name": name]
        app.launch()
    }
}
