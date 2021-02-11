//
//  Item+CoreDataHelpers.swift
//  UltimatePortofolio
//
//  Created by Rifqi Fadhlillah on 09/02/21.
//

import Foundation

extension Item {
	var itemTitle: String {
		title ?? "New Item"
	}
	
	var itemDetail: String {
		detail ?? ""
	}
	
	var itemCreationDate: Date {
		creationDate ?? Date()
	}
	
	static var example: Item {
		let controller = DataController(inMemory: true)
		let viewContent = controller.container.viewContext
		
		let item = Item(context: viewContent)
		item.title = "Example Item"
		item.detail = "This is an example item"
		item.priority = 3
		item.creationDate = Date()
		
		return item
	}
}
