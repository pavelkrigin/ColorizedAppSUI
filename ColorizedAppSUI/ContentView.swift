//
//  ContentView.swift
//  ColorizedAppSUI
//
//  Created by Pavel Krigin on 22.10.22..
//

import SwiftUI

//struct ContentView: View {
//    @State private var sliderValue = Double.random(in: 0...255)// обязательно приватное и инициализированное
//    @State private var displayedName = ""
//    @State private var userName = ""
//    @State private var alertPresented = false
//
//    var body: some View {
//        VStack(spacing: 40) {
//            Text(lround(sliderValue).formatted())
//                .font(.largeTitle)
//            UserNameView(userName: displayedName)
//            ColorSliderView(value: $sliderValue)
//            TextField("Enter your name", text: $userName).font(.title)
//                .textFieldStyle(.roundedBorder)
//            Button("Done") {
//                checkUserName()
//            }
//            .alert("Wrong Format", isPresented: $alertPresented) {
//                Button("OK", action: {})
//            } message: {
//                Text("Enter yor name")
//            }
//            Text("Welcome to SwiftUI")
//                .font(.system(size: 60))
//                .bold()
//                .foregroundColor(.green)
//                .background(Color.blue)
//                .padding()
//                .background(Color.gray)
//            Spacer()// чтобы поднять к верху экрана
//        }
//        .padding()
//    }
//    private func checkUserName() {
//        if let _ = Double(userName) {
//            userName = ""
//            alertPresented.toggle()
//            return
//        }
//        displayedName = userName
//        userName = ""
//    }
//}
//
//struct ColorSliderView: View {
//    @Binding var value: Double
//
//    var body: some View {
//        HStack {
//            Text("0").foregroundColor(.red)
//            Slider(value: $value, in: 0...255, step: 1)
//            Text("255").foregroundColor(.red)
//        }
//        .padding(.horizontal)
//    }
//}
//
//struct UserNameView: View {
//    let userName: String
//
//    var body: some View {
//        HStack {
//            HStack(alignment: .firstTextBaseline) {
//                Text("USER NAME: ").frame(height: 60)
//                Text(userName)
//                    .font(.largeTitle)
//            }
//            Spacer()//для левой ориентации
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
struct ContentView: View {
    @State private var redColor = Double.random(in: 0...255)
    @State private var greenColor = Double.random(in: 0...255)
    @State private var blueColor = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack {
                
                
                Spacer()
            }.padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
