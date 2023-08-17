//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Xuexiang Xu on 2023/8/13.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

    private static let emojis = [
        "🚗", "🚌", "🚲", "🛵", "🏍️", "🚖", "🚃", "🚄", "🚆", "🚇", "✈️", "🚀",
        "🛸", "🚁", "🛶", "⛵️", "🚤", "🛳️", "🏎️", "🛰️", "🛴", "🚓", "🚑", "🛺"
    ]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
