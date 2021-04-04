//
//  OnboardingStepView.swift
//  Fruitee
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI
import Fakery

let faker = Faker()

struct OnboardingStepView: View {
    
    
    var title: String
    var description = faker.lorem.sentences(amount: 3)
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Circle()
                .frame(width: 250, height: 250)
            Text(title)
                .font(.title)
                .fontWeight(.medium)
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .padding(.horizontal, 40)
                .font(.callout)
        }
    }
}

struct OnboardingStepView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStepView(title: faker.lorem.words())
    }
}


