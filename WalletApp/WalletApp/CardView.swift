//
//  SwiftUIView.swift
//  WalletApp
//
//  Created by Leonid on 04.04.2021.
//

import SwiftUI

struct CardView: View {
    let card: Card
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Image(card.brandLogo)
                    .resizable()
                    .frame(width: 20, height: 20)
                
            }
            Spacer()
            Text("$\(card.balance)")
                .font(.title3)
                .fontWeight(.bold)
            Text("\(card.cardNumber)")
                .font(.caption)
        }
        .padding()
        .frame(width: 120, height: 150)
        .background(card.backgroundSelected)
        .cornerRadius(10)
        .foregroundColor(card.textColor)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
            .environmentObject(Wallet())
    }
}
