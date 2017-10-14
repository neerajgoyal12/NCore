//
//  Config.swift
//  NCore_Example
//
//  Created by Neeraj Goyal on 13/10/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
class Config {
    static let sharedConfig = Config()
    var someString: String?
    required internal init() {
        someString = "Config1"
    }
}
