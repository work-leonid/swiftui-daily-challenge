//
//  WeekWeatherView.swift
//  Weather
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI

struct WeekWeatherView: View {
    var body: some View {
        HStack {
            Text("Monday")
            
            Spacer()
            
            Image(systemName: "sun.max.fill")
                .renderingMode(.original)
            
            Spacer()
            
            HStack(spacing: 30) {
                Text("10")
                Text("6")
                    .opacity(0.6)
            }
            
        }
        .padding(.horizontal)
    }
}

struct WeekWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeekWeatherView()
    }
}
