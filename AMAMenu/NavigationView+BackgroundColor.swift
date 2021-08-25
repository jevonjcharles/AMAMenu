//
//  NavigationView+BackgroundColor.swift
//  AMAMenu
//
//  Created by Jevon Charles on 8/23/21.
//

import SwiftUI

extension View {
	func navigationViewBackgroundColor() -> some View {
		self.modifier(NavigationViewBackgroundColor())
	}
}

@available(iOS 14, *)
struct NavigationViewBackgroundColor: ViewModifier {

	func body(content: Content) -> some View {
		content
	}

	init() {
		let navigationAppearance = UINavigationBarAppearance()
		navigationAppearance.configureWithOpaqueBackground()
		navigationAppearance.backgroundColor = UIColor.purple
		navigationAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
		navigationAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
		UINavigationBar.appearance().standardAppearance = navigationAppearance
		UINavigationBar.appearance().compactAppearance = navigationAppearance
		UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance
	}
}
