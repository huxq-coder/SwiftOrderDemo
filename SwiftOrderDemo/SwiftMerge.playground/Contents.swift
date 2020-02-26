//: Playground - noun: a place where people can play

import UIKit
/**
 给定两个有序整数数组 nums1 和 nums2，将 nums2 合并到 nums1 中，使得 num1 成为一个有序数组。
 说明:
 初始化 nums1 和 nums2 的元素数量分别为 m 和 n。
 你可以假设 nums1 有足够的空间（空间大小大于或等于 m + n）来保存 nums2 中的元素。
 https://leetcode-cn.com/problems/merge-sorted-array/
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



