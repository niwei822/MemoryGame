//
//  EmojiMemoryGame.swift
//  MemoryGame-SwiftUI
//
//  Created by cecily li on 9/14/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
   static let emojis = ["🚝", "✈️", "⛵️", "🚗","🚲", "🏎", "🚓", "🛵","🛺", "🚠", "🚀", "🚂","🚢", "🚞", "💺", "🦼","🚑", "🚒", "🦼", "🛶","🚜", "🚈", "⛵️", "🛳"]
    
   static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberofPairsOfCards: 8) { pairIndex in emojis[pairIndex]
    }
   }
 
   @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    //user intent
    func choose(_ card: Card) {
        model.choose(card)
    }
}
