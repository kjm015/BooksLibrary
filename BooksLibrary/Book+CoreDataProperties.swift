//
//  Book+CoreDataProperties.swift
//  BooksLibrary
//
//  Created by Kevin Miyata on 10/18/18.
//  Copyright © 2018 Kevin Miyata. All rights reserved.
//
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book")
    }

    @NSManaged public var title: String?
    @NSManaged public var author: String?
    @NSManaged public var releaseDate: NSDate?

}
