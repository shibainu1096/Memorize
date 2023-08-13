//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Xuexiang Xu on 2022/12/25.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
