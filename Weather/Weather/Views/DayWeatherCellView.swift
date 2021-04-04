//
//  DayWeatherCellView.swift
//  Weather
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI

struct DayWeatherCellView: View {

    var time = weatherData[0].dayWeather[0].time
    var icon = weatherData[0].dayWeather[0].icon
    var degree = weatherData[0].dayWeather[0].degree
    
    var body: some View {
        VStack(spacing: 8) {
            Text(time)
            Image(icon: .cloud)
                .renderingMode(.original)
                .frame(minHeight: 30)
            Text(degree)
                .font(.system(size: 18, weight: .medium))
        }
    }
}

struct DayWeatherCellView_Previews: PreviewProvider {
    static var previews: some View {
        DayWeatherCellView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
