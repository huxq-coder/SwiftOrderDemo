//: Playground - noun: a place where people can play

import UIKit

/**
 找出数组中重复的数字
 在一个长度为n的数组里的所有数字都在 0 ~ n-1 的范围内。数组中某些数字是重复的，但不知道有几个数字重复，也不知道每个数字重复了几次，找出数组中任意一个重复的数字。
 
 */


func findRepeatNumFromArray(array: inout [Int]) -> Bool {
    for i in 0...array.count-1 {
        print("i : \(i)")
        while i != array[i] {
            if array[i] != array[array[i]] {
                var temp : Int
                temp = array[i]
                array[i] = array[temp]
                array[temp] = temp
                print("array is \(array)")
            } else {
                print("repeat number is \(array[i])")
                return true
            }
        }
    }
    return false
}

var array = [3,1,0,2,5,3]
findRepeatNumFromArray(array: &array)



