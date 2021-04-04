//
//  ContentView.swift
//  Fruitee
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI

struct ContentView: View {
    let textColor = Color.primaryColor
    var body: some View {
//        OnboardingStepView()
        Text("asdf")
            .foregroundColor(textColor)
            .padding()
    }
}

enum AppTheme {
    
    case light
    case dark
    case green
    
}
extension Color {
    
    static var primaryColor: Color {
        Color(Color { $0.userInterfaceStyle == .dark ?
            Color(hue: 0.5, saturation: 0.5, brightness: 1.0) :
                Color(hue: 0.5, saturation: 0.5, brightness: 1.0) })
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 50) {
            Rectangle()
                .background(Color.primaryColor)
                .frame(width: 100, height: 100, alignment: .center)
                .preferredColorScheme(.dark)
//                .previewLayout(.sizeThatFits)
            Rectangle()
                .background(Color.primaryColor)
                .frame(width: 100, height: 100, alignment: .center)
                .preferredColorScheme(.light)
//            ContentView()
//                .previewLayout(.sizeThatFits)
        }
    }
}
