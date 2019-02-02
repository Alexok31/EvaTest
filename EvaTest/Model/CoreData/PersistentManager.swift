//
//  CoreData.swift
//  EvaTest
//
//  Created by Александр Харченко on 2/1/19.
//  Copyright © 2019 Александр Харченко. All rights reserved.
//

import Foundation
import CoreData

// MARK: - Core Data stack

class PersistentManager {
    
    private init () {}
    static let shared = PersistentManager()
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "EvaTest")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    lazy var context = persistentContainer.viewContext
    func saveContext () {
        if context.hasChanges {
            do {
                try context.save()
                print("save")
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func remove() {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ProductInfo")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        
        do {
            try context.execute(deleteRequest)
        } catch _ as NSError {
            // TODO: handle the error
        }
    }
    
    
}
