//
//  EmojiMemoryGame.swift
//  MemoryGame-SwiftUI
//
//  Created by cecily li on 9/14/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
   static let emojis = ["🚝", "✈️", "⛵️", "🚗","🚲", "🏎", "🚓", "🛵","🛺", "🚠", "🚀", "🚂","🚢", "🚞", "💺", "🦼","🚑", "🚒", "🦼", "🛶","🚜", "🚈", "⛵️", "🛳"]
    
   static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberofPairsOfCards: 4) { pairIndex in emojis[pairIndex]
    }
   }
 
   @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //user intent
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
