//
//  VegetableView.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import SwiftUI

struct VegetableView: View {

    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Push 🥕") {
                coordinator.push(vegetable: .carrot)
            }
            Button("Push 🥦") {
                coordinator.push(vegetable: .broccoli)
            }
        }
        .navigationTitle("Vegetables")
    }
}

struct VegetableView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableView()
    }
}
