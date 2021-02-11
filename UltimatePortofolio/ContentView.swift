//
//  ContentView.swift
//  UltimatePortofolio
//
//  Created by Rifqi Fadhlillah on 09/02/21.
//

import SwiftUI

struct ContentView: View {
	@AppStorage("selectedView") var selectedView: String?
	
    var body: some View {
		TabView(selection: $selectedView) {
			HomeView()
				.tag(HomeView.tag)
				.tabItem {
					Image(systemName: "house")
					Text("Home")
				}
			
			ProjectsView(showClosedProject: false)
				.tag(ProjectsView.openTag)
				.tabItem {
					Image(systemName: "list.bullet")
					Text("Open")
				}
			
			ProjectsView(showClosedProject: true)
				.tag(ProjectsView.closedTag)
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
