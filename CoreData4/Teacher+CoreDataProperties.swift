//
//  Teacher+CoreDataProperties.swift
//  CoreData4
//
//  Created by user@59 on 16/12/2024.
//
//

import Foundation
import CoreData


extension Teacher {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Teacher> {
        return NSFetchRequest<Teacher>(entityName: "Teacher")
    }

    @NSManaged public var name: String?
    @NSManaged public var address: String?
    @NSManaged public var city: String?
    @NSManaged public var mobile: String?

}

extension Teacher : Identifiable {

}
