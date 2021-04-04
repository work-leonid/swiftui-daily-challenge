//
//  OnboardingScrollView.swift
//  Fruitee
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            TabView {
                OnboardingStepView(title: "asdf")
                OnboardingStepView(title: "asdf")
            }.tabViewStyle(PageTabViewStyle())
            
            PrimaryButtonView()
                .padding()
        }
    }

}

struct OnboardingScrollView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
