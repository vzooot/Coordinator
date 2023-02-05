//
//  BroccoliView.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import SwiftUI

struct BroccoliView: View {
    @EnvironmentObject private var coordinator: Coordinator

    var sheetType: SheetType

    var body: some View {
        content
            .generateInfoView(sheetType: sheetType, name: "Broccoli", emoji: "🥦")
    }

    @ViewBuilder var content: some View {
        List {
            Button("Info ") {
                coordinator.push(vegetableInfo: .broccoliInfo)
            }
            Button("Back") {
                coordinator.pop()
            }
            Button("Home") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("Broccoli 🥦")
    }
}

//struct BroccoliView_Previews: PreviewProvider {
//    static var previews: some View {
//        BroccoliView()
//    }
//}
