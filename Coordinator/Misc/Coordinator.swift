//
//  Coordinator.swift
//  Coordinator
//
//  Created by Administrator on 2/5/23.
//

import Foundation
import SwiftUI

enum Category: String, Identifiable {
    case fruit
    case vegetable
    
    var id: String {
        self.rawValue
    }
}

enum Vegetable: String, Identifiable {
    case carrot
    case broccoli
    
    var id: String {
        self.rawValue
    }
}

enum VegetableInfo: String, Identifiable {
    case carrotInfo
    case broccoliInfo
    
    var id: String {
        self.rawValue
    }
}

enum Fruit: String, Identifiable {
    case apple
    case banana
    case lemon
    
    var id: String {
        self.rawValue
    }
}

enum FruitInfo: String, Identifiable {
    case appleInfo
    case bananaInfo
    case lemonInfo
    
    var id: String {
        self.rawValue
    }
}

enum Sheet: String, Identifiable {
    case appleSheet
    
    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case appleFullScreenCover

    var id: String {
        self.rawValue
    }
}

class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    func push(fruit: Fruit) {
        self.path.append(fruit)
    }
    
    func push(fruitInfo: FruitInfo) {
        self.path.append(fruitInfo)
    }
    
    func push(vegetable: Vegetable) {
        self.path.append(vegetable)
    }
    
    func push(vegetableInfo: VegetableInfo) {
        self.path.append(vegetableInfo)
    }
    
    func push(category: Category) {
        self.path.append(category)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        self.path.removeLast()
    }
    
    func popToRoot() {
        self.path.removeLast(self.path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    @ViewBuilder func build() -> some View {
        HomeView()
    }
    
    @ViewBuilder func build(category: Category) -> some View {
        switch category {
        case .fruit:
            FruitView()
        case .vegetable:
            VegetableView()
        }
    }
    
    @ViewBuilder func build(fruit: Fruit) -> some View {
        switch fruit {
        case .apple:
            AppleView(sheetType: .default)
        case .banana:
            BananaView()
        case .lemon:
            LemonView()
        }
    }
    
    @ViewBuilder func build(fruitInfo: FruitInfo) -> some View {
        switch fruitInfo {
        case .appleInfo:
            AppleView(sheetType: .none)
        case .bananaInfo:
            BananaView()
        case .lemonInfo:
            LemonView()
        }
    }
    
    @ViewBuilder func build(vegetable: Vegetable) -> some View {
        switch vegetable {
        case .carrot:
            CarrotView(sheetType: .default)
        case .broccoli:
            BroccoliView(sheetType: .default)
        }
    }
    
    @ViewBuilder func build(vegetableInfo: VegetableInfo) -> some View {
        switch vegetableInfo {
        case .carrotInfo:
            CarrotView(sheetType: .none)
        case .broccoliInfo:
            BroccoliView(sheetType: .none)
        }
    }
    
    @ViewBuilder func build(sheet: Sheet) -> some View {
        switch sheet {
        case .appleSheet:
            NavigationStack {
                AppleView(sheetType: .sheet)
            }
        }
    }
    
    @ViewBuilder func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .appleFullScreenCover:
            NavigationStack {
                AppleView(sheetType: .fullscreenCover)
            }
        }
    }
}
