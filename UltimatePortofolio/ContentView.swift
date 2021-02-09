//
//  ContentView.swift
//  UltimatePortofolio
//
//  Created by Rifqi Fadhlillah on 09/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		TabView {
			HomeView()
				.tabItem {
					Image(systemName: "house")
					Text("Home")
				}
			
			ProjectsView(showClosedProject: false)
				.tabItem {
					Image(systemName: "list.bullet")
					Text("Open")
				}
			
			ProjectsView(showClosedProject: false)
				.tabItem {
					Image(systemName: "checkmark")
					Text("Closed")
				}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
	static var dataController = DataController.preview
	
    static var previews: some View {
        ContentView()
			.environment(\.managedObjectContext, dataController.container.viewContext)
			.environmentObject(dataController)
    }
}
