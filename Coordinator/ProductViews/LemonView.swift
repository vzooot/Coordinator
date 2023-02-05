//
//  LemonView.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import SwiftUI

struct LemonView: View {
    var body: some View {
        EmptyView()
            .generateInfoView(sheetType: .none, name: "Lemon", emoji: "🍋")
    }
}

struct LemonView_Previews: PreviewProvider {
    static var previews: some View {
        LemonView()
    }
}
