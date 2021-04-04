//
//  HeaderView.swift
//  WalletApp
//
//  Created by Leonid on 04.04.2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Good Morning")
                    .foregroundColor(.gray)
                Text("Pat Flores")
                    .font(.title)
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Image("avatar")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
