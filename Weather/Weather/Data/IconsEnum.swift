//
//  IconsEnum.swift
//  Weather
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI

enum WeatherIcon: String, CaseIterable {
    case sunMax = "sun.max.fill"
    case sunHaze = "sun.haze.fill"
    case sunDust = "sun.dust.fill"
    
    case cloud = "cloud.fill"
    case cloudDrizzle = "cloud.drizzle.fill"
    case cloudRain = "cloud.heavyrain.fill"
    case cloudSun = "cloud.sun.fill"
    
    case snow = "snow"
    case wind = "wind"
}


extension Image {
    init(icon: WeatherIcon) {
        self.init(systemName: icon.rawValue)
    }
}

