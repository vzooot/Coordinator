//
//  InfoViewModifier.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import SwiftUI

struct InfoViewModifier: ViewModifier {
    @EnvironmentObject private var coordinator: Coordinator

    var sheetType: SheetType

    var name: String
    var emoji: String

    func body(content: Content) -> some View {
        switch sheetType {
        case .none:
            info
        case .sheet:
            sheetInfo
        case .fullscreenCover:
            fullScreenInfo
        default:
            content
        }
    }

    @ViewBuilder var info: some View {

        VStack {
            Text(emoji)
                .font(Font.system(size: 150))
            Text("The lemon (Citrus limon) is a species of small evergreen trees in the flowering plant family Rutaceae, native to Asia, primarily Northeast India (Assam), Northern Myanmar or China.\n\n The tree's ellipsoidal yellow fruit is used for culinary and non-culinary purposes throughout the world, primarily for its juice, which has both culinary and cleaning uses.[2] The pulp and rind are also used in cooking and baking. The juice of the lemon is about 5% to 6% citric acid, with a pH of around 2.2, giving it a sour taste. The distinctive sour taste of lemon juice makes it a key ingredient in drinks and foods such as lemonade and lemon meringue pie.")
                .font(.body)
            Spacer()
        }
        .padding(20)
    }

    @ViewBuilder var sheetInfo: some View {

        VStack {
            Text(emoji)
                .font(Font.system(size: 150))
            Text("The lemon (Citrus limon) is a species of small evergreen trees in the flowering plant family Rutaceae, native to Asia, primarily Northeast India (Assam), Northern Myanmar or China.\n\n The tree's ellipsoidal yellow fruit is used for culinary and non-culinary purposes throughout the world, primarily for its juice, which has both culinary and cleaning uses.[2] The pulp and rind are also used in cooking and baking. The juice of the lemon is about 5% to 6% citric acid, with a pH of around 2.2, giving it a sour taste. The distinctive sour taste of lemon juice makes it a key ingredient in drinks and foods such as lemonade and lemon meringue pie.")
                .font(.body)
            Spacer()
        }
        .padding(20)
        .navigationTitle("\(name) \(emoji)")
    }

    @ViewBuilder var fullScreenInfo: some View {

        VStack {
            Text(emoji)
                .font(Font.system(size: 150))
            Text("The lemon (Citrus limon) is a species of small evergreen trees in the flowering plant family Rutaceae, native to Asia, primarily Northeast India (Assam), Northern Myanmar or China.\n\n The tree's ellipsoidal yellow fruit is used for culinary and non-culinary purposes throughout the world, primarily for its juice, which has both culinary and cleaning uses.[2] The pulp and rind are also used in cooking and baking. The juice of the lemon is about 5% to 6% citric acid, with a pH of around 2.2, giving it a sour taste. The distinctive sour taste of lemon juice makes it a key ingredient in drinks and foods such as lemonade and lemon meringue pie.")
                .font(.body)
            Spacer()
            Button {
                coordinator.dismissFullScreenCover()
            } label: {
                Text("Dismiss")
            }
        }
        .padding(20)
        .navigationTitle("\(name) \(emoji)")
    }
}

extension View {
    func generateInfoView(sheetType: SheetType, name: String, emoji: String) -> some View {
        modifier(InfoViewModifier(sheetType: sheetType, name: name, emoji: emoji))
    }
}
