//
//  CardModel.swift
//  WalletApp
//
//  Created by Leonid on 04.04.2021.
//

import SwiftUI

struct Card: Hashable {
    let brandLogo: String
    let cardNumber: String
    
    let income: Int
    let expense: Int
    var balance: Int {
        income - expense
    }
    
    var isSelected = false
    var backgroundSelected: Color {
        isSelected ? Color.primaryPurple : Color.primaryYellow
    }
    var textColor: Color {
        isSelected ? Color.white : Color.black
    }
    
    var incomePercentage: Int {
        Int(Double(balance) / Double(income) * 100)
    }
}
