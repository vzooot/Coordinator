//
//  CarrotView.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import SwiftUI

struct CarrotView: View {
    @EnvironmentObject private var coordinator: Coordinator

    var sheetType: SheetType

    var body: some View {
        content
            .generateInfoView(sheetType: sheetType, name: "Carrot", emoji: "🥕")
    }

    @ViewBuilder var content: some View {
        List {
            Button("Info ") {
                coordinator.push(vegetableInfo: .carrotInfo)
            }
            Button("Back") {
                coordinator.pop()
            }
            Button("Home") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("Carrot 🥕")
    }
}

// struct CarrotView_Previews: PreviewProvider {
//    static var previews: some View {
//        CarrotView()
//    }
// }
