//
//  AppDelegate.swift
//  Todoey
//
//  Created by Praveen Ojha on 9/7/18.
//  Copyright © 2018 Praveen Ojha. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //MARK: - Initializing Realm and creating test data
        //printing the Realm DB file
        print("Realm Path:",Realm.Configuration.defaultConfiguration.fileURL!)
        
        do {
            _ = try Realm()
        } catch {
            print("Error initializing new Realm,\(error)")
        }
        
        return true
    }
}

