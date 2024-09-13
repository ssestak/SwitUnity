//
//  AppDelegate.swift
//  SwiftUnity
//
//  Created by Simon Sestak on 23/08/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        Unity.shared.setHostMainWindow(window)

        return true
    }
}
