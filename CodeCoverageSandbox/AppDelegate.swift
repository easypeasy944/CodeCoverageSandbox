//
//  AppDelegate.swift
//  CodeCoverageSandbox
//
//  Created by Aynur Galiev on 01.05.2024.
//

import InstrProfiling
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        print(ProcessInfo.processInfo.globallyUniqueString)
//        print(ProcessInfo.processInfo.processIdentifier)
        
//        let filename = __llvm_profile_get_filename()
//        print(String(cString: filename!))
        
//        __llvm_profile_runtime = 0
//        __llvm_profile_initialize_file()
//        __llvm_profile_set_filename("%p.profraw")
//        __llvm_profile_set_filename("/default-%m.profraw")
//        let buffer = __llvm_profile_get_size_for_buffer()
//        let result = __llvm_profile_write_file()
//        print(result)
//        print(String(cString: __llvm_profile_get_filename()))
//        print(String(cString: __llvm_profile_get_path_prefix()))
//        
        
        let filename = String(cString: __llvm_profile_get_filename())
        let rootDirectory = "/Users/aynurgaliev/Desktop/CodeCoverageSandbox" //  String(cString: __llvm_profile_get_path_prefix())
        if !FileManager.default.fileExists(atPath: rootDirectory + "/map.txt") {
            try! Data().write(to: URL(fileURLWithPath: rootDirectory + "/map.txt"))
        }
        
        let str = "\(filename.components(separatedBy: "/").last!) - \(ProcessInfo.processInfo.environment["name"]!)"
        let fileHandle = try! FileHandle(forWritingTo: URL(fileURLWithPath: rootDirectory + "/map.txt"))
        fileHandle.seekToEndOfFile()
        fileHandle.write(Data(str.utf8))
        fileHandle.closeFile()
        
//        __llvm_profile_initialize_file()
//        __llvm_profile_set_filename("/Users/aynurgaliev/Desktop/CodeCoverageSandbox/DerivedData/CodeCoverageSandbox/Build/ProfileData/ED847150-A54A-4392-9B9A-9C99F42AFF56/test.profraw")
//        __llvm_profile_write_file()

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


    func applicationWillTerminate(_ application: UIApplication) {
        
    }
}

