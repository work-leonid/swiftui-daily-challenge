//
//  BeautyShop.swift
//  challenge
//
//  Created by Leonid on 03.04.2021.
//  from https://dribbble.com/shots/15404606-Beauty-Product-Mobile-App

import SwiftUI

struct BeautySaleCardModel {
    let cover: String
    
    let title: String
    
    let priceOld: Int
    let discount: Int
    var discountPercent: Double {
        Double(Double(discount) / 100)
    }
    var priceNew: Int {
        Int(Double(priceOld) - (discountPercent * Double(priceOld)))
    }
}


let BeautySaleCardData = [
    BeautySaleCardModel(cover: "", title: "Curology Facial Wash", priceOld: 120, discount: 60),
    BeautySaleCardModel(cover: "", title: "Curology Serum Packet", priceOld: 150, discount: 70)
]


struct BeautyShop: View {
    var body: some View {
        BeautyMainView()
    }
}

struct BeautyMainView: View {
    
    let data = BeautySaleCardData[1]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("main")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<3) { _ in
                            BeautySaleCard(data: data)
                        }
                    }.padding().padding(.vertical)
                }
                
                
                
                NavigationLink(destination: BeautyDetailView()) {
                    Text("go to detail")
                }
            }
        }
    }
}

struct BeautyDetailView: View {
    var body: some View {
        Text("detail")
    }
}

struct BeautyShop_Previews: PreviewProvider {
    static var previews: some View {
        BeautyShop()
    }
}

struct BeautySaleCard: View {
    var data = BeautySaleCardData[0]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.orange
            
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Text(data.title)
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    
                    Text("\(data.discount)%")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                        .padding(15)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0.0, y: 2.0)
                }.padding(.bottom)
                
                HStack {
                    Text("$\(data.priceOld)")
                        .font(.callout)
                        .strikethrough()
                        .foregroundColor(.gray)
                    Spacer()
                    Text("$\(data.priceNew)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                }
            }
            .padding()
            .background(Color.white)
        }
        .background(Color.white)
        .frame(maxWidth: 240, maxHeight: 240)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .shadow(color: Color.black.opacity(0.2), radius: 14, x: 0.0, y: 0.0)
    }
}
