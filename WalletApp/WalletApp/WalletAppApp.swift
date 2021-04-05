//
//  WalletAppApp.swift
//  WalletApp
//
//  Created by Leonid on 04.04.2021.
//

import SwiftUI

@main
struct WalletAppApp: App {
    @StateObject private var wallet = Wallet()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(wallet)
        }
    }
}

final class Wallet: ObservableObject {
    @Published var cards = cardData
    
    var selectedCard: Card {
        cards.first(where: { $0.isSelected })!
    }
}
