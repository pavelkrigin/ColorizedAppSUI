//
//  DisplayShow.swift
//  ColorizedAppSUI
//
//  Created by Pavel Krigin on 24.10.22..
//

import SwiftUI

struct RGBPresenter: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Color(red: redColor / 255,
              green: greenColor / 255,
              blue: blueColor / 255)
        .frame(width: 340, height: 135)
        .cornerRadius(25)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
        .shadow(radius: 22)
        .padding(.bottom, 45)
    }
}

struct DisplayShow_Previews: PreviewProvider {
    static var previews: some View {
        RGBPresenter(redColor: 255, greenColor: 255, blueColor: 255)
    }
}
