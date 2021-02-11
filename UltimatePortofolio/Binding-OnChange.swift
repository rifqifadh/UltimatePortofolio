//
//  Binding-OnChange.swift
//  UltimatePortofolio
//
//  Created by Rifqi Fadhlillah on 10/02/21.
//

import SwiftUI

extension Binding {
	func onChange(_ handler: @escaping () -> Void) -> Binding<Value> {
		Binding(
			get: { self.wrappedValue },
			set: { newValue in
				self.wrappedValue = newValue
				handler()
			}
		)
	}
}
