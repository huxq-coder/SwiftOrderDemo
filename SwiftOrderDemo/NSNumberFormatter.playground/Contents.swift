//: Playground - noun: a place where people can play

import UIKit

/**
 找出数组中重复的数字
 在一个长度为n的数组里的所有数字都在 0 ~ n-1 的范围内。数组中某些数字是重复的，但不知道有几个数字重复，也不知道每个数字重复了几次，找出数组中任意一个重复的数字。
 
 */

/// 四舍五入
func numberFormatterTest1() {
    let number: NSNumber = 123456.7890;
    let numberStr = NumberFormatter.localizedString(from: number, number: .none)
    print(numberStr)
}

/// 货币形式
func numberFormatterTest2() {
    let number: NSNumber = 123456.7890;
    let numberStr = NumberFormatter.localizedString(from: number, number: .decimal)
    print(numberStr)
}

/// 货币形式。带有本地化符号
func numberFormatterTest3() {
    let number: NSNumber = 123456.7890;
    let numberStr = NumberFormatter.localizedString(from: number, number: .currency)
    print(numberStr)
}

/// 百分数形式,并且四舍五入到百分比的整数部分
func numberFormatterTest4() {
    let number: NSNumber = 123456.7890;
    let numberStr = NumberFormatter.localizedString(from: number, number: .percent)
    print(numberStr)
}

/// 科学计数
func numberFormatterTest5() {
    let number: NSNumber = 123456.7890;
    let numberStr = NumberFormatter.localizedString(from: number, number: .scientific)
    print(numberStr)
}

/// 本地化拼写
func numberFormatterTest6() {
    let number: NSNumber = 123456.7890;
    let numberStr = NumberFormatter.localizedString(from: number, number: .spellOut)
    print(numberStr)
}

/// 序数
func numberFormatterTest7() {
    let number: NSNumber = 123456.7890;
    let numberStr = NumberFormatter.localizedString(from: number, number: .ordinal)
    print(numberStr)
}

/// 货币形式 显示ISO分配的货币符号
func numberFormatterTest8() {
    let number: NSNumber = 123456.7890;
    let numberStr = NumberFormatter.localizedString(from: number, number: .currencyISOCode)
    print(numberStr)
}

/// 货币形式
func numberFormatterTest9() {
    let number: NSNumber = 123456.7890;
    let numberStr = NumberFormatter.localizedString(from: number, number: .currencyPlural)
    print(numberStr)
}

/// 会计形式
func numberFormatterTest0() {
    let number: NSNumber = 123456.7890;
    let numberStr = NumberFormatter.localizedString(from: number, number: .currencyAccounting)
    print(numberStr)
}

/// 自定义设置
func numberFormatterTest10() {
    let number: NSNumber = 123456.7890;
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.positiveFormat = "###,###.##"
    formatter.positivePrefix = "!"
    formatter.positiveSuffix = "元"
    formatter.paddingCharacter = "0"
    formatter.formatWidth = 20
    let numberStr = formatter.string(from: number)
    
    print(numberStr!)
}

numberFormatterTest10()



