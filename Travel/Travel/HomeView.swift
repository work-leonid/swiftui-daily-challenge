//
//  HomeView.swift
//  Travel
//
//  Created by Leonid on 06.04.2021.
//

import SwiftUI

struct HomeView: View {
    
    @State private var search = ""
    let categoriesData = [
        CategoryModel(title: "Mountain", cover: "cover0", color: Color.green),
        CategoryModel(title: "Beach", cover: "cover1", color: Color.yellow),
        CategoryModel(title: "City", cover: "cover2", color: Color.orange)
    ]
    
    let popularPlacesData = [
        PlaceCoverModel(title: "Broken Beach", place: "Bali, Indonesia", cover: "popular0"),
        PlaceCoverModel(title: "Ketek Beach", place: "Malong, Indonesia", cover: "popular1"),
        PlaceCoverModel(title: "Broken Beach", place: "Bali, Indonesia", cover: "popular2"),
        PlaceCoverModel(title: "Ketek Beach", place: "Malong, Indonesia", cover: "popular3")
    ]
    
    var header: some View {
        HStack {
            Image("avatar")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            Text("Hai Jessica!")
                .fontWeight(.medium)
            
            Spacer()
            
            Image(systemName: "bell.badge.fill")
        }
    }
    
    var title: some View {
        Text("Find your favourite place!".capitalized)
            .font(.title2)
            .fontWeight(.bold)
            .padding(.leading)
            .padding(.trailing, 140)
            .multilineTextAlignment(.leading)
    }
    
    var searchField: some View {
        ZStack(alignment: .trailing) {
            TextField("Search", text: $search)
                .padding()
                .background(Color.gray.opacity(0.15))
                .cornerRadius(12)
            Image(systemName: "magnifyingglass")
                .padding()
                .foregroundColor(.gray)
        }
    }
    
    var categories: some View {
        VStack {
            StackTitle(title: "Categories")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0..<3) { index in
                        CategoryView(
                            title: categoriesData[index].title,
                            cover: categoriesData[index].cover,
                        color: categoriesData[index].color)
                    }
                }.padding(.horizontal)
            }
        }
    }
    
    var popularPlaces: some View {
        VStack {
            StackTitle(title: "Popular")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing:  20) {
                    ForEach(0..<4) { index in
                        NavigationLink(destination: PlaceDetailView(place: PlaceData[0])) {
                            PlaceCardView(title: popularPlacesData[index].title, place: popularPlacesData[index].place, cover: popularPlacesData[index].cover)
                        }
                    }
                }.padding(.horizontal)
            }
        }
    }
    
    var homeView: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                header
                    .padding(.horizontal)
                title
                searchField
                    .padding(.horizontal)
                
                categories
                    .padding(.top)
                
                popularPlaces
                    .padding(.top)
                    .padding(.bottom)
                
            }
        }
        .navigationBarHidden(true)
        .navigationBarTitle("")
    }
    
    var body: some View {
        NavigationView {
            TabView {
                homeView
                    .tabItem { Label("", systemImage: "house.fill")}
                Text("Search")
                    .tabItem { Label("", systemImage: "arrow.up.backward.and.arrow.down.forward.circle.fill") }
                Text("All")
                    .tabItem { Label("", systemImage: "square.grid.2x2.fill") }
                Text("Profile")
                    .tabItem { Label("", systemImage: "person.fill") }
            }
        }
    }
}

struct CategoryView: View {
    var title: String
    var cover: String
    var color: Color
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
//            Color.gray
            Image(cover)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 220)
            
            Text(title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(color)
                .foregroundColor(.white)
        }
        .cornerRadius(12)
        .clipped()
        .frame(width: 150, height: 220)
    }
}

struct PlaceCardView: View {
    var title: String
    var place: String
    var cover: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(cover)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
            
            LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .top, endPoint: .bottom)
                .frame(height: 80)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                    .fontWeight(.medium)
                HStack {
                    Image(systemName: "map.fill")
                    Text(place)
                        .opacity(0.5)
                }
                .font(.caption)
            }
            .foregroundColor(.white)
            .padding()
        }
        .frame(width: 200, height: 200)
        .clipped()
        .cornerRadius(12)
    }
}

struct CategoryModel {
    let title: String
    let cover: String
    let color: Color
}

struct PlaceCoverModel {
    let title: String
    let place: String
    let cover: String
}

struct StackTitle: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
            Spacer()
            Button(action: {}) {
                Text("See all")
            }
        }
        .padding(.horizontal)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

