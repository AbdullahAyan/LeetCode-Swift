//
//  234. Palindrome Linked List
//
//  Created by Abdullah Ayan on 22.07.2022.
//



/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

/*
Runtime: 1157 ms, faster than 49.57% of Swift online submissions for Palindrome Linked List.
Memory Usage: 31.8 MB, less than 44.25% of Swift online submissions for Palindrome Linked List.
*/

import Foundation

class Solution {
    var values = [Int]()
    func isPalindrome(_ head: ListNode?) -> Bool {
        values.append(head!.val)
        if let next = head!.next {
            return isPalindrome(next)
        }else {
            return values == values.reversed()
        }
    }
}
