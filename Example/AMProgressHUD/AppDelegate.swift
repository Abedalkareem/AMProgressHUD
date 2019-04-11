//
//  AppDelegate.swift
//  AMProgressHUD
//
//  Created by Abedalkareem on 05/04/2018.
//  Copyright (c) 2018 Abedalkareem. All rights reserved.
//

import UIKit
import AMProgressHUD

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    AMProgressHUD.options.imageName = "giphy"
    AMProgressHUD.options.backgroundColor = #colorLiteral(red: 0.2745098039, green: 0.2588235294, blue: 0.431372549, alpha: 1)
    AMProgressHUD.options.cancable = true

    return true
  }

  func applicationWillResignActive(_ application: UIApplication) { }

  func applicationDidEnterBackground(_ application: UIApplication) { }

  func applicationWillEnterForeground(_ application: UIApplication) { }

  func applicationDidBecomeActive(_ application: UIApplication) { }

  func applicationWillTerminate(_ application: UIApplication) { }

}

