//
//  ContentView.swift
//  First Lesson
//
//  Created by Swift- Amit on 28/07/22.
//

import SwiftUI

struct ContentView: View {
    @State var swiftyColor: Color = .red
    @State var swiftyOpacity: Double = 0.7
    var body: some View {
        VStack{
            
            SwiftyControls(swiftyColor: $swiftyColor, swiftyOpacity: $swiftyOpacity)
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .shadow(radius: 3)
                .foregroundColor(Color.white)
                .padding()
                .opacity(swiftyOpacity)
                .background(swiftyColor)
                .cornerRadius(13)
                .padding()
            
            
            
            
            VStack {
                
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .foregroundColor(Color.yellow)
                
                    .scaledToFit()
                    .foregroundColor(Color.red)
                    .frame(width: 25, height: 25)
                    .border(Color.red)
                    .padding()
                Text("Cool Clinate -24")
            }
            .padding()
            .background(LinearGradient(colors: [Color.blue,Color.yellow], startPoint: .topLeading, endPoint: .bottomTrailing))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SwiftyControls: View {
    @Binding var swiftyColor: Color
    @Binding var swiftyOpacity: Double
    var body: some View {
        VStack {
            ColorPicker("Swift Color", selection: $swiftyColor)
                .padding(.horizontal)
            Slider(value: $swiftyOpacity, in:0...1)
                .accentColor(swiftyColor)
                .padding(.horizontal)
        }
    }
}
