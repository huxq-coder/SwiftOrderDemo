//: Playground - noun: a place where people can play

import UIKit

/**
 给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。
 示例 1:
 输入: 123
 输出: 321
 示例 2:
 输入: -123
 输出: -321
 示例 3:
 输入: 120
 输出: 21
 注意:
 假设我们的环境只能存储得下 32 位的有符号整数，则其数值范围为 [−2^31,  2^31 − 1]。请根据这个假设，如果反转后整数溢出那么就返回 0。
 链接：https://leetcode-cn.com/problems/reverse-integer/
 */

func reverse(_ x: inout Int) -> Int {
    var rev = 0
    while x != 0 {
        let pop = x % 10
        x = x / 10
        if (rev > Int32.max / 10) || (rev == Int32.max / 10 && pop > 7) {
            return 0
        }
        if (rev < Int32.min / 10) || (rev == Int32.min / 10 && pop < -8) {
            return 0
        }
        rev = rev * 10 + pop
    }
    return rev
}

var x = 214748361
reverse(&x)
Int32.max



