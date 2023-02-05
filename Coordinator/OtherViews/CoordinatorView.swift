//
//  CoordinatorView.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import SwiftUI

struct CoordinatorView: View {

    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build()
                .navigationDestination(for: Category.self) { category in
                    coordinator.build(category: category)
                }
                .navigationDestination(for: Fruit.self) { fruit in
                    coordinator.build(fruit: fruit)
                }
                .navigationDestination(for: FruitInfo.self) { fruitInfo in
                    coordinator.build(fruitInfo: fruitInfo)
                }
                .navigationDestination(for: Vegetable.self) { vegetable in
                    coordinator.build(vegetable: vegetable)
                }
                .navigationDestination(for: VegetableInfo.self) { vegetableInfo in
                    coordinator.build(vegetableInfo: vegetableInfo)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
                .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                    coordinator.build(fullScreenCover: fullScreenCover)
                }
        }
        .environmentObject(coordinator)
    }
}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
