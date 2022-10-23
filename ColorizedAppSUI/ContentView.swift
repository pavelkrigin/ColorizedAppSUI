//
//  ContentView.swift
//  ColorizedAppSUI
//
//  Created by Pavel Krigin on 22.10.22..
//

import SwiftUI

struct ContentView: View {
    @State private var redColor = Double.random(in: 0...255)
    @State private var greenColor = Double.random(in: 0...255)
    @State private var blueColor = Double.random(in: 0...255)
    @State private var sliderValue = Double.random(in: 0...255)
    @State private var alertPresented = false
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            VStack {
                RGBPresenter(redColor: redColor, greenColor: greenColor, blueColor: blueColor)
                ColorSliderView(sliderColor: .red, sliderValue: $redColor)
                ColorSliderView(sliderColor: .green, sliderValue: $greenColor)
                ColorSliderView(sliderColor: .blue, sliderValue: $blueColor)
                Spacer()
            }.padding()
        }
        
    }
}

struct ColorSliderView: View {
    let sliderColor: Color
    @Binding var sliderValue: Double
    @State private var alertPresented = false
    
    var body: some View {
        HStack {
            Text(lround(sliderValue).formatted())
                .frame(width: 35)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(sliderColor)
                .shadow(radius: 20)
            TextField(lround(sliderValue).formatted(), text: <#Binding<String>#>)
                .frame(width: 50)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.leading)
                .keyboardType(.numberPad)
                .alert(isPresented: $alertPresented,
                       content: {
                    Alert(title: Text("Wrong Format"),
                          message: Text("Please enter value from 0 to 255"),
                          dismissButton: .cancel(Text("ОК")))
                })
        }
    }
    
    private func checkingTextField() {
        if sliderValue > 255 {
            alertPresented.toggle()
            sliderValue = 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
