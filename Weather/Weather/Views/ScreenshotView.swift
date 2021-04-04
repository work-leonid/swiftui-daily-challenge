//
//  ScreenshotView.swift
//  Weather
//
//  Created by Leonid on 28.03.2021.
//

import SwiftUI

struct ScreenshotView: View {
    var name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ScreenshotView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenshotView(name: "IMG_4468")
    }
}
