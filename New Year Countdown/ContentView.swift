//
//  ContentView.swift
//  New Year Countdown
//
//  Created by Anatoliy on 19.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //snow
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: 0)
                    .minimumScaleFactor(0.5)
                    .frame(height: 100)
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .padding(.vertical, -30)
            }
            
            //Text
            VStack {
                Text("\(daysUntilTheNy())")
                    .font(.custom("Kingthings Christmas 2", size: 250))
                    .foregroundColor(.white)
                Text("Days Until New Year!")
                    .font(.custom("Kingthings Christmas 2", size: 40))
                    .foregroundColor(.white)
            } .padding(.bottom, 100)
            
            // Decorations
            VStack {
                HStack {
                    Spacer()
                    Image("moon")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .rotationEffect(.degrees(-10))
                        .padding(.top, 30)
                        .padding(.trailing, 30)
                }
                Spacer()
                HStack{
                    Image("tree")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                        .rotationEffect(.degrees(-5))
                        .padding(.bottom, 10)
                        .padding(.leading, -25)
                    Spacer()
                    Image("snowman")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .padding(.bottom, 10)
                }
            }
        }
        .background(Color.init(
            red: 0/255/0,
            green: 14/255.0,
            blue: 51/255.0))
        .ignoresSafeArea()
        
        
    }
    
    func daysUntilTheNy() -> Int {
        let nyDateComponents = DateComponents(month: 12, day: 31, hour: 23, minute: 59, second: 59)
        let currentDate = Date()
        if let nextNyDate = Calendar.current.nextDate(after: currentDate, matching: nyDateComponents, matchingPolicy: .strict) , let daysUntilNextNy = Calendar.current.dateComponents([.day], from: currentDate, to: nextNyDate).day {
            return daysUntilNextNy
        }
        
        return 0
    }
}
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
