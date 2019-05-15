//: Playground - noun: a place where people can play

import UIKit
/**
 给定一个非空整数数组，除了某个元素只出现一次以外，其余每个元素均出现两次。找出那个只出现了一次的元素。
 说明：
 你的算法应该具有线性时间复杂度。 你可以不使用额外空间来实现吗？
 https://leetcode-cn.com/problems/single-number/
 */

func singleNumber(_ nums: [Int]) -> Int {
    for i in 0..<nums.count{
        let temp = nums[i]
        for j in 0..<nums.count{
            if i != j && temp == nums[j] {
                break
            }
            if j==nums.count-1 {
                return temp
            }
        }
    }
    return 0
}

/// 位运算 时间复杂度 O(n) 空间复杂度O(1)
func singleNumber1(_ nums:[Int]) -> Int {
    var temp = 0
    for num in nums {
        temp = temp ^ num
    }
    return temp
}

let nums = [1,2,1,9,2,5,5]
print(singleNumber1(nums))




