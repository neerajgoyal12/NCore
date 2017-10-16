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
        describe("Config should be singleton and should not be allowed to be subclassed") {
            let config1 = Config.sharedConfig
            let config2 = Config.sharedConfig
            it("both config1 and config2 should be same instance") {
                expect(config1).to(beIdenticalTo(config2))
            }
        }
//        describe("Config class and its subclass") {
//            let config1 = Config.sharedConfig;
//            class Config2 : Config {
////                static let sharedConfig = Config2()
//                required fileprivate init() {
//                    super.init()
//                    someString = "Config2"
//                }
//            }
//            let config2 = Config2.sharedConfig;
//            it("both the instance should have same address") {
//                expect(config1).to(beIdenticalTo(config2), description: "Super Class instance and Base class instance are same")
//            }
//            it("instance of sub class should be kind of super class") {
//                expect(config2).to(beAnInstanceOf(Config.self), description: "Super Class instance and Base class instance are same")
//            }
//            it("super class instance should set someString as Config1, sub class instance should set someString as Config1") {
//                expect(config1.someString).to(equal("Config1"))
//                expect(config2.someString).to(equal("Config1"), description: "Super Class instance and Base class instance are same. Singleton can not be overridden without overriding static let shared.. ")
//            }
//        }
//        describe("Config class can not be subclassed") {
//            let _ = Config.sharedConfig;
//            class Config2 : Config {
//                required fileprivate init() {
//
//                }
//            }
//            let config2 = Config2.sharedConfig
//            it("This should throw an complier error") {
//                expect(config2).to(beNil())
//            }
//        }
    }
}
