//: Playground - noun: a place where people can play

import UIKit
/**
 给定一个大小为 n 的数组，找到其中的众数。众数是指在数组中出现次数大于 ⌊ n/2 ⌋ 的元素。
 你可以假设数组是非空的，并且给定的数组总是存在众数。
 https://leetcode-cn.com/problems/majority-element/
 */

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    if m == 0 {
        nums1 = nums2
        return
    }
    if n == 0 {
        return
    }
    for i in nums2 {
        nums1.insert(i, at: 0)
    }
    nums1.sort()
}

func merge1(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m-1
    var j = n-1
    var k = m+n-1
    while i>=0 && j>=0 {
        if nums1[i] > nums2[j] {
            nums1[k] = nums1[i]
            k -= 1
            i -= 1
        } else {
            nums1[k] = nums2[j]
            k -= 1
            j -= 1
        }
    }
    if j >= 0 {
        for t in 0...j {
            nums1[t] = nums2[t]
        }
    }
}

var nums1 = [1,2,0,0]
var nums2 = [3,5]
merge1(&nums1, 2, nums2, 2)
print(nums1)



