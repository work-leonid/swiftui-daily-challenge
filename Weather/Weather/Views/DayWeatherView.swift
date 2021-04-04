//
//  DayWeatherView.swift
//  Weather
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI

struct DayWeatherView: View {
    
    let data = weatherData[0]

    
    var body: some View {
        ZStack {
            VStack {
                Divider()
                    .background(Color.red)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 12) {
                        ForEach(0..<data.dayWeather.count) { item in
                            DayWeatherCellView(time: data.dayWeather[item].time, icon: data.dayWeather[item].icon, degree: data.dayWeather[item].degree)
                        }
                    }
                    
                }
                .padding(.horizontal)
                Divider()
            }
        }
    }
}

struct DayWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DayWeatherView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
//            .overlay(ScreenshotView(name: "IMG_4468").opacity(0.6))
    }
}

