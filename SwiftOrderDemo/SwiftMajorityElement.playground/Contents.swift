//: Playground - noun: a place where people can play

import UIKit
/**
 给定一个大小为 n 的数组，找到其中的众数。众数是指在数组中出现次数大于 ⌊ n/2 ⌋ 的元素。
 你可以假设数组是非空的，并且给定的数组总是存在众数。
 https://leetcode-cn.com/problems/majority-element/
 */
/// 先排序，然后取中间值
func majorityElement(_ nums : inout [Int]) -> Int {
    nums.sort()
    return nums[nums.count/2]
}

/// 摩尔投票算法
func majorityElement1(_ nums : [Int]) -> Int {
    var result = nums[0]
    var count = 0
    for num in nums {
        if num == result {
            count += 1
        } else {
            count -= 1
            if count == 0 {
                result = num
                count = 1
            }
        }
    }
    return result
}

func majorityElement2(_ nums : [Int]) -> Int {
    // key 值， value 次数
    var map = [Int: Int]()
    for num in nums {
        if map[num] != nil {
            map[num] = map[num]! + 1
        } else {
            map[num] = 1
        }
    }
    for (key, value) in map {
        if value > nums.count/2 {
            return key
        }
    }
    return 0
}

var nums = [8,8,7,7,7]
print(majorityElement(&nums))
print(majorityElement2(nums))





