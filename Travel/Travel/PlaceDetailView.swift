//
//  PlaceDetailView.swift
//  Travel
//
//  Created by Leonid on 06.04.2021.
//

import SwiftUI

struct PlaceDetailView: View {
    
    let place: PlaceModel
    
    var infoAboutPlace: some View {
        HStack(spacing: 20) {
            infoAboutPlaceCell(title: String(place.rating), icon: "star.fill", iconColor: Color.yellow, description: "\(place.review)")
            Divider()
            infoAboutPlaceCell(title: place.weatherDegree, icon: "sun.min.fill", iconColor: Color.orange, description: "Sunny")
            Divider()
            infoAboutPlaceCell(title: place.departureDate, icon: "airplane", iconColor: Color.blue, description: "Departure")
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 100)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.5), lineWidth: 1))
    }
    
    var description: some View {
        VStack(alignment: .leading) {
            Text("Description")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.bottom)
            Text(place.description)
                .foregroundColor(.gray)
        }
    }
    
    
    var body: some View {
        ZStack(alignment: .center) {
            VStack {
                Image(place.cover)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 500)
                    .clipped()
                    
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 30) {
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text(place.title)
                                .font(.title2)
                                .fontWeight(.bold)
                            HStack {
                                Image(systemName: "map.fill")
                                    .foregroundColor(.orange)
                                Text(place.place)
                            }
                        }
                        Spacer()
                        Text("$\(place.price)")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    
                    infoAboutPlace
                    
                    description
                        .padding(.bottom, UIScreen.main.bounds.height / 2)
                    
                    
                }
                .padding().padding(10)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(25)
                .offset(y: UIScreen.main.bounds.height / 2 - 100)
            }
        }
    }
}

struct PlaceModel {
    let cover: String
    let title: String
    let place: String
    
    let price: Int
    
    let rating: Double
    let reviewsCount: Int
    var review: String {
        return "\(reviewsCount) Reviews"
    }
    
    let weatherDegreeNumber: Int
    var weatherDegree: String {
        return "\(weatherDegreeNumber)℃"
    }
    
    let departureDate: String
    
    let description: String
}

let PlaceData = [
    PlaceModel(cover: "cover0", title: "Broken Beach", place: "Bali, Indonesia", price: 125, rating: 4.5, reviewsCount: 231, weatherDegreeNumber: 28, departureDate: "7 aug", description: "Lorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem loremLorem lorem")
]

struct infoAboutPlaceCell: View {
    var title: String
    var icon: String
    var iconColor: Color
    var description: String
    
    var body: some View {
        return VStack(spacing: 10) {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(iconColor)
                Text(title)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .layoutPriority(1)
            }
            Text(description)
                .font(.caption)
                .foregroundColor(.gray)
            
        }
    }

}

struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetailView(place: PlaceData[0])
    }
}
