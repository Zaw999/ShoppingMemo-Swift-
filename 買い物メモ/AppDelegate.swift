//
//  AppDelegate.swift
//  買い物メモ
//
//  Created by zawyenaing on 2018/08/23.
//  Copyright © 2018 swift.test. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let tabItemDic1:[String: Any] = ["status":true, "title":"Memo 1", "path":"Memo1", "key":"Memo1", "tab":"0"]
        let tabItemDic2:[String: Any] = ["status":true, "title":"Memo 2", "path":"Memo2", "key":"Memo2", "tab":"1"]
        let tabItemDic3:[String: Any] = ["status":true, "title":"Memo 3", "path":"Memo3", "key":"Memo3", "tab":"2"]
        let tabItemDic4:[String: Any] = ["status":true, "title":"Memo 4", "path":"Memo4", "key":"Memo4", "tab":"3"]
        let tabItemDic5:[String: Any] = ["status":true, "title":"Setting"]
        
        let tabBarItemSettingArray:[Any] = [tabItemDic1, tabItemDic2, tabItemDic3, tabItemDic4, tabItemDic5];
        UserDefaults.standard.registerDefaultData(key: "SavedTab", data: tabBarItemSettingArray)
        
        let initMemoDic1:[String: Any] = ["status":false, "data":"Apple"]
        let initMemoDic2:[String: Any] = ["status":false, "data":"Apple"]
        let initMemoDic3:[String: Any] = ["status":false, "data":"Apple"]
        let initMemoDic4:[String: Any] = ["status":false, "data":"Apple"]
        let initMemoDic5:[String: Any] = ["status":false, "data":"Apple"]
        let initMemoDic6:[String: Any] = ["status":false, "data":"Apple"]
        
        let initMemoArray:[Any] = [initMemoDic1, initMemoDic2, initMemoDic3, initMemoDic4, initMemoDic5, initMemoDic6];
        UserDefaults.standard.registerDefaultData(key: "DefaultMemo", data: initMemoArray)
        
        let globalColor:UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let colorData:Data? = UserDefaults.standard.UIColorToData(globalColor)
        UserDefaults.standard.registerDefaultData(key: "GlobalColor", data: colorData as Any)
        
        UserDefaults.standard.registerDefaultData(key: "InitFontIndex", data: 46)
        UserDefaults.standard.registerDefaultData(key: "GlobalFont", data: "Helvetica")
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

