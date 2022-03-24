//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jessica Kim on 17.03.22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["✈️", "⛵️", "🚗", "🚲", "🛵", "🏍", "🛺", "🚕", "🚙", "🚌", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚜", "🚂", "🚁", "🚤", "🛶", "🚠", "🛴"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
         
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
 

//VIEWMODEL
//--> kein View aber trotzdem mit userinterface --> nicht import Foundation sonder SwiftUI
//--> hier class statt func, weil object basiert

// MARK: - Intent(s)


func choose(_ card: MemoryGame<String>.Card) {
    objectWillChange.send()
    model.choose(card)
    }
}
