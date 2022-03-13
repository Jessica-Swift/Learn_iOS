//
//  ContentView.swift
//  Shared
//
//  Created by Jessica Kim on 12.03.22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScores = false
    @State private var scoreTitle = ""
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View{
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            VStack(spacing: 40){
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.subheadline.weight(.heavy))
                }
                ForEach(0..<3) { number in
                    Button{
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 100, height: 70)
                            .clipShape(Capsule())
                            
                            
                    }
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScores) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is ???")
        }
    }
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScores = true
    }
    func askQuestion() {
        countries.shuffled()
        correctAnswer = Int.random(in: 0...2)
    }
}


//struct ContentView: View {
//    @State private var showingAlert = false
//
//    var body: some View{
//        Button("Show Alert"){
//            showingAlert = true
//        }
//        .alert("Important message", isPresented: $showingAlert) {
//            Button("Delete", role: .destructive) {}
//            Button("Cancel", role: .cancel) {}
//        } message: {
//            Text("Please read this")
//        }
//    }
//}


//struct ContentView: View {
//    var body: some View{
//
//        Button{
//            print("Edit button was tapped!")
//        } label: {
//            Label("Edit", systemImage: "pencil")
//        }
//    }
//}


//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Button("Button 1") {}
//            .buttonStyle(.bordered)
//            Button("Button 2", role: .destructive)  {}
//            .buttonStyle(.bordered)
//            Button("Button 3") {}
//            .buttonStyle(.borderedProminent)
//            .tint(.mint)
//            Button("Button 4", role: .destructive) {}
//            .buttonStyle(.borderedProminent)
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//
//
//        AngularGradient (gradient: Gradient(colors: [.red, .purple, .blue, .green, .yellow, .orange, .red]), center: .center)
//
////        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
//
////        LinearGradient(gradient: Gradient(stops: [Gradient.Stop (color: .white, location: 0.20), Gradient.Stop (color: .purple, location: 0.80)]), startPoint: .top, endPoint: .bottom)
////            .ignoresSafeArea()
////
////        ZStack {
////            VStack (spacing: 0) {
////                Color.blue
////                Color.yellow
////            }
////            Text("Your content")
////                .foregroundColor(.secondary)
////                .padding(50)
////                .background(.ultraThinMaterial)
////        }
////        .ignoresSafeArea()
//   }
//
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

