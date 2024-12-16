//
//  DatabaseHelper.swift
//  CoreData4
//
//  Created by user@59 on 16/12/2024.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper {

    static let sharedInstance = DatabaseHelper()

    // Safely get the Core Data context
    var context: NSManagedObjectContext {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError("Unable to get AppDelegate")
        }
        return appDelegate.persistentContainer.viewContext
    }

    func save(object: [String: String]) {
        // Safely unwrap the entity
        guard let entity = NSEntityDescription.entity(forEntityName: "Teacher", in: context) else {
            print("Failed to find entity ")
            return
        }

        let teacher = NSManagedObject(entity: entity, insertInto: context) as! Teacher

        teacher.name = object["name"]
        teacher.address = object["address"]
        teacher.city = object["city"]
        teacher.mobile = object["mobile"]

        do {
            try context.save()
            print("Data saved successfully")
        } catch {
            print("Failed to save data: \(error.localizedDescription)")
        }
    }
}
