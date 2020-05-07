//: Playground - noun: a place where people can play

import UIKit

/**
 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。

 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。

  

 示例:

 给定 nums = [2, 7, 11, 15], target = 9

 因为 nums[0] + nums[1] = 2 + 7 = 9
 所以返回 [0, 1]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/two-sum
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0...nums.count-1 {
        let temp = target - nums[i]
        for j in i+1...nums.count-1 {
            if nums[j] == temp {
                print("下标结果是:\(i) and \(j)")
                return [i, j]
            }
            }
    }
    return []
}

func twoSum1(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = Dictionary<Int, Int>()
    for i in 0...nums.count-1 {
        let temp = target - nums[i]
        if dict.keys.contains(temp) {
            print("结果是i:\(i), j:\(dict[temp]!)")
            return [dict[temp]! as Int, i]
        }
        dict[nums[i]] = i
        print("dict: \(dict)")
    }
    return []
}


let nums = [2,7,11,15]
let target = 9
twoSum1(nums, target)


