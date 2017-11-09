//
//  Config.swift
//  NCore_Example
//
//  Created by Neeraj Goyal on 13/10/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
final class Config {
    static let sharedConfig = Config()
    var configuration: Dictionary<String, NSObject>!
    var currentConfiguration: String!
    private init() {
        currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Config") as! String
        let path: String? = Bundle.main.path(forResource: "Config", ofType: ".plist")
        configuration = NSDictionary(contentsOfFile: path!)?.object(forKey: currentConfiguration) as! Dictionary<String, NSObject>
        debugPrint("""
            configuration : \(configuration)
            """)
    }
}
