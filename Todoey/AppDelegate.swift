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
        // Override point for customization after application launch.
        
        //MARK: - Initializing Realm and creating test data
        //printing the Realm DB file
        print("Realm Path:",Realm.Configuration.defaultConfiguration.fileURL!)
        
        //Initializing Data object and creating sample
        let data = Data()
        data.name = "Praveen"
        data.age = 38
        
        do {
            let realm = try Realm()
            
            try realm.write {
                realm.add(data)
            }
            
        } catch {
            print("Error initializing new Realm,\(error)")
        }
        
        
        
        //MARK - Printing Path for checking the userDefaults
        //print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        self.saveContext()
    }
    
    // MARK: - Core Data stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "DataModel")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }


}

