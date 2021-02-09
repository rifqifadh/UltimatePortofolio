//
//  UltimatePortofolioApp.swift
//  UltimatePortofolio
//
//  Created by Rifqi Fadhlillah on 09/02/21.
//

import SwiftUI

@main
struct UltimatePortofolioApp: App {
	@StateObject var dataController: DataController
	
	init() {
		let dataController = DataController()
		_dataController = StateObject(wrappedValue: dataController)
	}
	
    var body: some Scene {
        WindowGroup {
            ContentView()
					.environment(\.managedObjectContext, dataController.container.viewContext)
					.environmentObject(dataController)
		}
    }
}
