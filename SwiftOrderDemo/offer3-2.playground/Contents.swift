//: Playground - noun: a place where people can play

import UIKit

/**
 不能修改数组找出数组中重复的数字
 在一个长度为n+1的数组里的所有数字都在 1 ~ n 的范围内。数组中至少有一个数字是重复的，找出数组中任意一个重复的数字，不能修改输入的数组。
 
 注： 共有 n+1 个数字，取值范围是 1 -> n
 1 -> n 数组内使用二分法取值 m，在 m 的左边 或者 右边 进行判断
 
 利用二分的思想：把 1~n 的数字从中间数字m开始分为两部分，前一半为 1~ m，后面一半为 m+1 ~n，如果 1~m 中的数字在数组中出现的次数大于m，那么这一半必定有重复的数字；否则，那么另一部分必定含有重复数字。接着我们，继续对含有重复数字的区间一分为二，直到找到重复的数字。

 作者：宇宙之一粟
 链接：https://www.jianshu.com/p/4efc31dc4e7a
 来源：简书
 */


func findRepeatNumFromArray(array: [Int]) -> Int {
    /// 校验
    if array.count == 0 {
        return -1
    }
    for i in 0...array.count-1 {
        if array[i] < 1 || array[i] >= array.count {
            return -1
        }
    }
    var start = 1
    var end = array.count - 1
    while end >= start {
        /// 中间值
        var middle = (end - start) / 2 + start
        /// 计数器
        var count = 0
        for i in 0...array.count-1 {
            if array[i] >= start && array[i] <= end {
                count = count + 1
            }
        }
        if count > middle - start + 1 {
            end = middle
        } else {
            start = middle + 1
        }
    }
    return start
}

var array = [1,2,3,4,5]
print("重复数字: \(findRepeatNumFromArray(array: array))")

func find(array: [Int]) -> Int {
    for i in 1...array.count {
        var count = 0
        for j in 0...array.count-1 {
            if i == array[j] {
                count = count + 1
            }
            if count > 1 {
                return array[j]
            }
        }
    }
    return -1
}

var array1 = [2,3,5,4,3,2,6,7]
find(array: array1)


