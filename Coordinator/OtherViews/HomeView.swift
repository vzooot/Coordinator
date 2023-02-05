//
//  HomeView.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Fruits 🍎🍌🍋") {
                coordinator.push(category: .fruit)
            }
            Button("Vegetables 🥕🥦") {
                coordinator.push(category: .vegetable)
            }
        }
        .navigationTitle("Home")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
