//
//  ContentView.swift
//  Weather
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
//            ScreenshotView(name: "IMG_4468")
//                .opacity(0.4)
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                CurrentWeatherView()
                    .padding(.top, 102)
                    .padding(.bottom, 86)
                
                DayWeatherView()

                
                
                VStack(spacing: 10) {
                    ForEach(0..<10) { _ in
                        WeekWeatherView()
                    }
                }



//                CurrentWeatherDetailView()
            }
//            .opacity(0.4)
//            .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
