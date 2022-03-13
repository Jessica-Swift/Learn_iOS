//
//  ContentView.swift
//  Shared
//
//  Created by Jessica Kim on 12.03.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        Button("Delete section", action: executeDelete)
    
        
        
        
//        AngularGradient (gradient: Gradient(colors: [.red, .purple, .blue, .green, .yellow, .orange, .red]), center: .center)
        
//        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
        
//        LinearGradient(gradient: Gradient(stops: [Gradient.Stop (color: .white, location: 0.20), Gradient.Stop (color: .purple, location: 0.80)]), startPoint: .top, endPoint: .bottom)
//            .ignoresSafeArea()
//
//        ZStack {
//            VStack (spacing: 0) {
//                Color.blue
//                Color.yellow
//            }
//            Text("Your content")
//                .foregroundColor(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//        }
//        .ignoresSafeArea()
   }
    
    func executeDelete() {
        print("Now deleting")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

