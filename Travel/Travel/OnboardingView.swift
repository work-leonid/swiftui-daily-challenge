//
//  OnboardingView.swift
//  Travel
//
//  Created by Leonid on 06.04.2021.
//  from https://dribbble.com/shots/15425529-Govel-Travel-App

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
            
            VStack(alignment: .center,spacing: 20) {
                Image("onboarding")
                    .resizable()
                    .scaledToFit()
                Text("Enjoy your vacation, only here".capitalized)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("Vacation to all the destinations you like, only here")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                Button(action: {
                    
                }) {
                    NavigationLink(destination: HomeView()) {
                        Text("Start")
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                    
                }
                
                Button(action: {}) {
                    Text("Do you have account?")
                        .foregroundColor(Color.gray)
                }
            }
            .padding()
            .padding()
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
