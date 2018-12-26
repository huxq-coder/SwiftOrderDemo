//: Playground - noun: a place where people can play

import UIKit

/**
 判断一个整数是否是回文数。回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。
 
 示例 1:
 输入: 121
 输出: true
 示例 2:
 输入: -121
 输出: false
 解释: 从左向右读, 为 -121 。 从右向左读, 为 121- 。因此它不是一个回文数。
 示例 3:
 输入: 10
 输出: false
 解释: 从右向左读, 为 01 。因此它不是一个回文数。
 
 https://leetcode-cn.com/problems/palindrome-number/
 */

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 || (x % 10 == 0 && x != 0){
        return false
    }
    var temp = x
    var rev = 0
    while temp > 0 {
        let last = temp % 10
        rev = rev * 10 + last
        temp = temp / 10
    }
    return x == rev
}

func isPalindrome1(_ x: inout Int) -> Bool {
    if x < 0 || (x % 10 == 0 && x != 0) {
        return false
    }
    var rev = 0
    while x > rev {
        rev = rev * 10 + x % 10
        x = x / 10
    }
    return x == rev || x == rev / 10
}

var x = 1234321
isPalindrome1(&x)
isPalindrome(123321)


