//
//  CardListView.swift
//  WalletApp
//
//  Created by Leonid on 04.04.2021.
//

import SwiftUI

struct CardListView: View {
    @EnvironmentObject var wallet: Wallet
    
    var HeaderView: some View {
        HStack {
            Text("Your cards")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Button(action: {}, label: {
                Text("Add new")
            })
        }
    }
    
    var cardView: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(wallet.cards.indices) { index in
                        CardView(card: wallet.cards[index])
                            .onTapGesture {
                                wallet.cards.indices.forEach { index in
                                        wallet.cards[index].isSelected = false
                                    }
                                wallet.cards[index].isSelected.toggle()
                            }
                    }
                }
            }
        }
        
    }
    
    var body: some View {
        VStack {
            HeaderView
            cardView
        }
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
            .environmentObject(Wallet())
    }
}
