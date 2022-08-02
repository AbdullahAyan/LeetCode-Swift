//
//  383. Ransom Note
//
//  Created by Abdullah Ayan on 28.07.2022.
//

import Foundation

//Runtime: 276 ms, faster than 5.39% of Swift online submissions for Ransom Note.
//Memory Usage: 14.2 MB, less than 80.05% of Swift online submissions for Ransom Note.

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var randomNote = ransomNote
        for letter in magazine {
            if let index = randomNote.firstIndex(of: letter) {
                randomNote.remove(at: index)
            }
        }
        return randomNote.isEmpty
    }
}
