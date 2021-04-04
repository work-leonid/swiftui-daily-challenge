//
//  MockData.swift
//  Weather
//
//  Created by Leonid on 28.03.2021.
//

import Foundation

struct Weather {
    let city: String
    let condition: String
    let currentDegree: String
    let hightDayDegree: String
    let lowDayDegree: String
    
    let dayWeather: [DayWeather]
    let weekWeather: [WeekWeather]
    
    struct DayWeather {
        let time: String
        let icon: String
        let degree: String
    }

    struct WeekWeather {
        let day: String
        let icon: String
        let humidity: String?
        let dayDegree: Int
        let nightDegree: Int
    }
    
}
