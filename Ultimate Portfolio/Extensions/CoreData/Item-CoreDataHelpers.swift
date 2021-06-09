//
//  Item-CoreDataHelpers.swift
//  Ultimate Portfolio
//
//  Created by Ben Bastow on 23/04/2021.
//

import Foundation

extension Item {
    enum SortOrder {
        case optimised, title, creationDate
    }
    
    var itemTitle: String {
        title ?? "New Item"
    }
    var itemDetail: String {
        detail ?? ""
    }
    var itemCreationDate: Date {
        creationDate ?? Date ()
    }
    
    static var example: Item {
        let controller = DataController(inMemory: true)
        let viewContext = controller.container.viewContext
        
        let item = Item(context: viewContext)
        
        item.title = "Example Item"
        item.detail = "This is an example item"
        item.priority = 3
        item.creationDate = Date()
        
        return item
    }
}
