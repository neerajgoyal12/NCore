//
//  ViewController.swift
//  NCore
//
//  Created by neerajgoyal12 on 10/12/2017.
//  Copyright (c) 2017 neerajgoyal12. All rights reserved.
//

import UIKit
import NCore
import FirebaseRemoteConfig

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let _ = NCoreConfig()
        
        let sharedConfig = Config.sharedConfig
        let remoteConfig = RemoteConfig.remoteConfig()
        let remoteConfigSettings = RemoteConfigSettings(developerModeEnabled: true)
        remoteConfig.configSettings = remoteConfigSettings!
        debugPrint(sharedConfig.configuration)
        remoteConfig.setDefaults(sharedConfig.configuration)
        
        debugPrint("""
            Defaults : \(remoteConfig.configValue(forKey: "staging_abcUrl").stringValue!) \
                        \(remoteConfig.configValue(forKey: "staging_xyzUrl").stringValue!)
            """)
        remoteConfig.fetch(withExpirationDuration: 0) { (status, error) -> Void in
            if(status == .success && remoteConfig.activateFetched()) {
                debugPrint("""
                    \(remoteConfig.configValue(forKey: "staging_abcUrl").stringValue!) \
                    \(remoteConfig.configValue(forKey: "staging_xyzUrl").stringValue!)
                    """)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

