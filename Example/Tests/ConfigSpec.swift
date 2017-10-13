//
//  ConfigSpec.swift
//  NCore_Tests
//
//  Created by Neeraj Goyal on 13/10/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import NCore

class ConfigSpec: QuickSpec {
    override func spec() {
        describe("Config Initialization") {
            let config = Config.sharedConfig
            it("should get initialized and not be nil") {
                expect(config).toNot(beNil())
                
            }
        }
        describe("Config should be singleton") {
            let config1 = Config.sharedConfig
            let config2 = Config.sharedConfig
            it("both config1 and config2 should be same instance") {
                expect(config1).to(be(config2))
            }
        }
    }
}
