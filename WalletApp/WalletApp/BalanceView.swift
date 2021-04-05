//
//  BalanceView.swift
//  WalletApp
//
//  Created by Leonid on 05.04.2021.
//

import SwiftUI

struct BalanceView: View {
    
    @EnvironmentObject var wallet: Wallet
    @State private var incomePercent = 0
    
    var headerView: some View {
        HStack {
            Text("Balance")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Text("$\(wallet.selectedCard.balance)")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.primaryPurple)
                .padding(.trailing)
        }.onChange(of: wallet.selectedCard, perform: { _ in
            update()
        })
        .onAppear() {
            update()
        }
    }
    
    var body: some View {
        VStack {
            headerView
            HorizontalProgressView(percentage: $incomePercent)
        }
    }
    
    private func update() {
        withAnimation(.spring()) {
            incomePercent = wallet.selectedCard.incomePercentage
        }
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
            .environmentObject(Wallet())
    }
}
