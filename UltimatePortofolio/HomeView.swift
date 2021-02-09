//
//  HomeView.swift
//  UltimatePortofolio
//
//  Created by Rifqi Fadhlillah on 09/02/21.
//

import SwiftUI

struct HomeView: View {
	@EnvironmentObject var dataController: DataController
	
	var body: some View {
		NavigationView {
			VStack {
				Button("Add data") {
					dataController.deleteAll()
					try? dataController.createSampleData()
				}
			}
			.navigationTitle("Home")
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}