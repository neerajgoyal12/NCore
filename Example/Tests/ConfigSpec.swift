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
        describe("Config class subclass") {
            let config1 = Config.sharedConfig;
            class Config2 : Config {
                required fileprivate init() {
                    
                }
            }
            let config2 = Config2.sharedConfig;
            it("instance of super class should be same as instance of subclass") {
                expect(config1).to(beIdenticalTo(config2))
            }
        }
        describe("Config class if subclassed should have different instance types") {
            let _ = Config.sharedConfig;
            class Config2 : Config {
                required fileprivate init() {
                    
                }
            }
            let config2 = Config2.sharedConfig
            it("instance of sub class should not be kind of super class") {
                expect(config2).toNot(beAnInstanceOf(Config.self))
            }
        }
    }
}
