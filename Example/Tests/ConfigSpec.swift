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
                expect(config1).to(beIdenticalTo(config2))
            }
        }
        describe("Config class and its subclass") {
            let config1 = Config.sharedConfig;
            class Config2 : Config {
                static let sharedConfig2 = Config2()
                required fileprivate init() {
                    super.init()
                    someString = "Config2"
                }
            }
            let config2 = Config2.sharedConfig2;
            it("both the instance to should have same address") {
                expect(config1).to(beIdenticalTo(config2))
            }
            it("instance of sub class should not be kind of super class") {
                expect(config2).toNot(beAnInstanceOf(Config.self))
            }
            it("super class instance should not set someString, sub class instance should set someString") {
                expect(config1.someString).to(equal("Config1"))
                expect(config2.someString).to(equal("Config2"))
            }
        }
//        describe("Config class if subclassed should have different instance types") {
//            let _ = Config.sharedConfig;
//            class Config2 : Config {
//                required fileprivate init() {
//
//                }
//            }
//            let config2 = Config2.sharedConfig
//            it("instance of sub class should not be kind of super class") {
//                expect(config2).toNot(beAnInstanceOf(Config.self))
//            }
//        }
    }
}
