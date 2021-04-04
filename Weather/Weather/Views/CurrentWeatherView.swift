//
//  CurrentWeatherView.swift
//  Weather
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI

struct CurrentWeatherView: View {
    var body: some View {
        ZStack {
//            ScreenshotView(name: "IMG_4468")
//                .opacity(0.5)
            VStack {
                VStack {
                        Text("Saint Petersburg")
                            .font(.system(size: 32, weight: .light))
                        Text("Mostly Sunny")
                            .font(.callout)
                        Text("7°")
                            .font(.system(size: 94, weight: .thin))
                            .padding(.vertical, -20)
                        HStack {
                            Text("H:11°")
                            Text("L:1°")
                        }
                        .font(.callout)
                }
                
            }
        }
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView()
    }
}
