//
//  AppleView.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import SwiftUI

struct AppleView: View {

    @EnvironmentObject private var coordinator: Coordinator

    var sheetType: SheetType

    var body: some View {
        content
            .generateInfoView(sheetType: sheetType, name: "Appe", emoji: "🍎")
    }

    @ViewBuilder var content: some View {
        List {
            Button("Info 🍎") {
                coordinator.push(fruitInfo: .appleInfo)
            }
            Button("Sheet 🍎") {
                coordinator.present(sheet: .appleSheet)
            }
            Button("FullSheet 🍎") {
                coordinator.present(fullScreenCover: .appleFullScreenCover)
            }
            Button("Back") {
                coordinator.pop()
            }
            Button("Home") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("🍎")
    }
}

// struct AppleView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppleView()
//    }
// }
