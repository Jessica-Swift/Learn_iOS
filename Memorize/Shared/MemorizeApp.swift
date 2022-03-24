//
//  MemorizeApp.swift
//  Shared
//
//  Created by Jessica Kim on 14.03.22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame ()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
