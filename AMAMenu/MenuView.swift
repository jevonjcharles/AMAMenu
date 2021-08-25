//
//  ContentView.swift
//  AMAMenu
//
//  Created by Jevon Charles on 8/23/21.
//

import SwiftUI

struct MenuView: View {
	var body: some View {
		NavigationView {
			List {
				Section(header: Text("")) {
					VStack(alignment: .center) {
						Text("Going Offline? Click to download all available visits.")
							.font(.title)
							.lineLimit(1)
							.minimumScaleFactor(0.2)

						Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
							(Text(Image(systemName: "icloud.and.arrow.down.fill")) + Text("Download Visits(0)"))
								.foregroundColor(.white)
								.font(.title3)
								.padding(.vertical , 8)
						})
						.frame(maxWidth: .infinity)
						.background(Color.blue)
						.cornerRadius(4)
					}
				}
				Section(header: Text("")) {
					ForEach(0..<2) { int in
						if int == 0 {
							HStack {
								Image(systemName: "person.crop.rectangle")
									.foregroundColor(.black)
									.opacity(0.6)
								Text("My Profile")
									.fontWeight(.bold)
							}
						} else {
							HStack {
								Image(systemName: "gearshape.fill")
									.foregroundColor(.black)
									.opacity(0.6)
								Text("Settings")
									.fontWeight(.bold)
							}
						}
					}
				}
				Section(header: Text("")) {
					HStack {
						Image(systemName: "questionmark.circle.fill")
							.foregroundColor(.black)
							.opacity(0.6)
						Text("Help/Support")
							.fontWeight(.bold)
					}				}
				Section(header: Text("")) {
					HStack {
						Image(systemName: "power")
							.foregroundColor(.black)
							.opacity(0.6)
						Text("Logout")
							.fontWeight(.bold)
					}
				}
			}
			.navigationViewBackgroundColor()
			.listStyle(InsetGroupedListStyle())
			.navigationTitle("Menu")
		}
	}
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
			Group {
				MenuView()
			}
    }
}

struct MenuItem: View {
	private var image: String
	private var text: String

	init(image: String, text: String) {
		self.image = image
		self.text = text
	}

	var body: some View {
		HStack {
			Image(systemName: image)
			Text(text)
		}
	}
}
