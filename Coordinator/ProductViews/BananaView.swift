//
//  BananaView.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import SwiftUI

struct BananaView: View {
    var body: some View {
        EmptyView()
            .generateInfoView(sheetType: .none, name: "Banana", emoji: "🍌")
    }
}

struct BananaView_Previews: PreviewProvider {
    static var previews: some View {
        BananaView()
    }
}
