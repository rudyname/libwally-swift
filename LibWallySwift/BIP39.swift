//
//  BIP39.swift
//  LibWally
//
//  Created by Sjors on 27/05/2019.
//  Copyright © 2019 Blockchain. All rights reserved.
//

import Foundation

typealias BIP39Word = String

struct BIP39Mnemonic {
    let words: [BIP39Word]

    init(words: [BIP39Word]) {
        self.words = words
    }

}

var BIP39WordList: [BIP39Word] = {
    // Implementation based on Blockstream Green Development Kit
    var words: [BIP39Word] = []
    var WL: OpaquePointer?
    precondition(bip39_get_wordlist(nil, &WL) == WALLY_OK)
    for i in 0..<BIP39_WORDLIST_LEN {
        var word: UnsafeMutablePointer<Int8>?
        defer {
            wally_free_string(word)
        }
        precondition(bip39_get_word(WL, Int(i), &word) == WALLY_OK)
        words.append(BIP39Word(cString: word!))
    }
    return words
}()
