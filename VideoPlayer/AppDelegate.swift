//
//  AppDelegate.swift
//  VideoPlayer
//
//  Created by Leoan Ranjit on 6/21/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let nav1 = UINavigationController()
        let mainView = ViewController()
        nav1.viewControllers = [mainView]
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        window?.rootViewController = mainView
        return true
    }
}
