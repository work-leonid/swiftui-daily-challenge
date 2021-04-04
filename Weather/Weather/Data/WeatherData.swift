//
//  WeatherData.swift
//  Weather
//
//  Created by Leonid on 28.03.2021.
//

import Foundation


let weatherData: [Weather] = [
    .init(
        city: "Saint Petersburg", condition: "Mostly Sunny", currentDegree: "7°", hightDayDegree: "11°", lowDayDegree: "1°",
        
        dayWeather: [
            Weather.DayWeather(time: "Now", icon: "sun.max.fill", degree: "7°"),
            Weather.DayWeather(time: "11", icon: "cloud.sun.bolt.fill", degree: "8°"),
            Weather.DayWeather(time: "12", icon: "cloud.sun.fill", degree: "8°")
            ],
        
        weekWeather: [
            Weather.WeekWeather(day: "Monday", icon: "sun.max.fill", humidity: nil, dayDegree: 10, nightDegree: 6),
            Weather.WeekWeather(day: "Tuesday", icon: "cloud.sun.bolt.fill", humidity: "80%", dayDegree: 8, nightDegree: 3)])
]
