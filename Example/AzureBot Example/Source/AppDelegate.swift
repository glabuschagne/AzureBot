//
//  AppDelegate.swift
//  AzureBot Example
//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//

import UIKit
import AzureBot

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        // uncomment to send location with messages
        // BotClient.shared.configure(context:[.location])
        
        // alternative to adding via storyboard
        // addBotViewController()
        
        return true
    }

    func addBotViewController() {

        window = window ?? UIWindow(frame: UIScreen.main.bounds)

        let botController = BotViewController.create()

        if let window = window {
            window.rootViewController = botController
            window.makeKeyAndVisible()
        }
    }
}
