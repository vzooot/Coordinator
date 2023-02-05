//
//  FruitView.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import SwiftUI

struct FruitView: View {

    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Push 🍎") {
                coordinator.push(fruit: .apple)
            }
            Button("Push 🍌") {
                coordinator.push(fruit: .banana)
            }
            Button("Push 🍋") {
                coordinator.push(fruit: .lemon)
            }
        }
        .navigationTitle("Fruits")
    }
}

struct FruitView_Previews: PreviewProvider {
    static var previews: some View {
        FruitView()
    }
}
