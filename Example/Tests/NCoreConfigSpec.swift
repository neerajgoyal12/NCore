//
//  NCoreConfigSpec.swift
//  NCore_Tests
//
//  Created by Neeraj Goyal on 13/10/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Quick
import Nimble
//import NCore
@testable import NCore

class NCoreConfigSpec: QuickSpec {
    override func spec() {
        describe("NCoreConfig Initialization") {
            let ncore = NCoreConfig()
            it("should get initialized and not be nil") {
                expect(ncore).toNot(beNil())
                
            }
        }
    }
}

