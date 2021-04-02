//
//  BillsApp.swift
//  challenge
//
//  Created by Leonid on 02.04.2021.
//

import SwiftUI

struct BillsApp: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                BillsAppHeader()
                
                BillsAppCard()
                
                VStack(spacing: 40) {
                    BillsAppTitleTodayPaymentsView()
                    
                    PaymentRowView()
                }
                
                
            }
            .padding(.horizontal)
        }
    }
}

struct BillsApp_Previews: PreviewProvider {
    static var previews: some View {
        BillsApp()
    }
}

struct BillsAppHeader: View {
    
    let greeting = "Hello,"
    let userName = "Shekh Ai"
    let userAvatar = ""
    let size: CGFloat = 45
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(greeting)
                    .font(.title)
                    .fontWeight(.bold)
                Text(userName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            Spacer()
            Circle()
                .fill(Color.gray)
                .frame(width: size, height: size)
        }
    }
}

struct BillsAppCard: View {

    private struct BillsAppCardModel {
        let cardNumber: String
        let cardHolder: String
        let cardValidDate: String
    }
    
    private let data = BillsAppCardModel(cardNumber: "3894 4848 2038 4855", cardHolder: "Antia Rose", cardValidDate: "09/17")
    
    let cardHeight: CGFloat = 230
    let gradient = Gradient(colors: [Color.blue, Color.purple])
    
    struct CardBackground: View {
        let corner: CGFloat = 26
        var gradient: Gradient
        var cardHeight: CGFloat
        
        var body: some View {
            RoundedRectangle(cornerRadius: corner)
                .fill(LinearGradient(gradient: gradient, startPoint: .topTrailing, endPoint: .bottomLeading))
                .frame(maxWidth: .infinity, maxHeight: cardHeight)
        }
    }
    
    struct CardLogo: View {
        let size: CGFloat = 40
        
        var body: some View {
            HStack(spacing: -10) {
                Circle().fill(Color.white)
                Circle().fill(Color.white.opacity(0.7))
            }
            .frame(width: size, height: size)
        }
    }
    
    struct CardText: View {
        
        var title: String
        var descr: String
        
        var body: some View {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.caption)
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                    .opacity(0.6)
                Text(descr)
                    .font(.callout)
            }
        }
    }
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
            
            CardBackground(gradient: gradient, cardHeight: cardHeight)

            VStack(alignment: .leading, spacing: 20) {
            
                CardLogo()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Card number")
                        .font(.caption)
                        .fontWeight(.bold)
                        .textCase(.uppercase)
                        .opacity(0.6)
                    Text(data.cardNumber)
                        .fontWeight(.bold)
                }
                
                HStack {
                    CardText(title: "Card holder name", descr: data.cardHolder)
                    
                    Spacer()
                    
                    CardText(title: "Valid", descr: data.cardValidDate)
                    Spacer()
                }
            }.padding().padding()
        }
        .foregroundColor(.white)
    }
}

struct BillsAppTitleTodayPaymentsView: View {
    let title = "Today, 31 Jan"
    let expenses = "- $560"
    
    var body: some View {
        HStack {
            Text(title)
                .fontWeight(.medium)
            Spacer()
            Text(expenses)
                .fontWeight(.medium)
        }
        .font(.title3)
        .foregroundColor(.gray)
        .padding(.vertical)
    }
}



struct PaymentRowView: View {

    private struct Payment {
        var iconColor: Color = .green
        var paymenTitle: String
        var paymentCategory: String
        var paymentNumber: String
    }
    
    private let paymentData = [Payment(iconColor: .red, paymenTitle: "Water Bill", paymentCategory: "Unseccessfully", paymentNumber: "-$2800"),
                       Payment(iconColor: .red, paymenTitle: "Income", paymentCategory: "Credit Card", paymentNumber: "+$2100"),
                       Payment(iconColor: .green, paymenTitle: "Electric Bill", paymentCategory: "Successfully", paymentNumber: "-$480")]
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(paymentData[0].iconColor.opacity(0.2))
                    .frame(width: 50, height: 50)
                Image(systemName: "flame.fill")
                    .foregroundColor(paymentData[0].iconColor)
            }
            
            HStack(alignment: .firstTextBaseline) {
                VStack(alignment: .leading) {
                    Text(paymentData[0].paymenTitle)
                        .fontWeight(.medium)
                    Spacer()
                    Text(paymentData[0].paymentCategory)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Spacer()
                }
                
                Spacer()
                
                Text(paymentData[0].paymentNumber)
                    .fontWeight(.medium)
            }
            
        }
        .font(.title3)
    }
}
