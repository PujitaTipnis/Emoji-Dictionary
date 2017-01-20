//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Pujita Tipnis on 1/20/17.
//  Copyright © 2017 Pujita Tipnis. All rights reserved.
//

class Emoji {
    var emojiIcon = ""
    var definition = ""
    var category = ""
    var creationYear = 0
    
    func createEmoji(emojiIcon1: String, definition1: String, category1: String, creationYear1: Int) {
        emojiIcon = emojiIcon1
        definition = definition1
        category = category1
        creationYear = creationYear1
    }
}
