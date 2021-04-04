//
//  PrimaryButtonView.swift
//  Fruitee
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI

//struct PrimaryButton: ButtonStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        configuration.label
//            .padding()
//    }
//}

struct PrimaryButtonView: View {
    var body: some View {
        VStack {
            Button(action: {}, label: {
                Text("Button")
            })
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(12)
            .font(.callout)
        }
    }
}

struct PrimaryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButtonView()
            .previewLayout(.sizeThatFits)
    }
}
