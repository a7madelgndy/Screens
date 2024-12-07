//
//  AppDelegate.swift
//  Screens
//
//  Created by Ahmed El Gndy on 05/12/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configureController(with: CardViewController())
        return true
    }
}

extension AppDelegate{
    func configureController(with Controller:UIViewController){
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = Controller
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
}



