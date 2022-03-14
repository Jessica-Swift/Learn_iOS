//
//  ContentView.swift
//  Shared
//
//  Created by Jessica Kim on 14.03.22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["✈️", "⛵️", "🚗", "🚲", "🛵", "🏍", "🛺", "🚕", "🚙", "🚌", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚜", "🚂", "🚁", "🚤", "🛶", "🚠", "🛴"]
    @State var emojiCount = 6

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid (columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) {
                        CardView(content: $0)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.yellow)
            Spacer ()
            HStack{
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding()
            }
            .padding(.horizontal)
        }
    var remove: some View {
        Button {
            if emojiCount > 1 {emojiCount -= 1}
        } label: {
            Image(systemName: "minus.rectangle")
                .foregroundColor(.black)
        }
    }
    var add: some View {
        Button {
            if emojiCount < emojis.count {emojiCount += 1}
        } label: {
            Image(systemName: "plus.rectangle")
                .foregroundColor(.black)
        }
    }
    }

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill(.white)
                shape.strokeBorder(lineWidth: 4)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}





























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
  
