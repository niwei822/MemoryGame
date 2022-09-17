//
//  MemoryGame_SwiftUIApp.swift
//  MemoryGame-SwiftUI
//
//  Created by cecily li on 9/13/22.
//

import SwiftUI

@main
struct MemoryGame_SwiftUIApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
