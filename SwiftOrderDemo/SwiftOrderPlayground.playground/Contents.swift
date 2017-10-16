//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, SwiftOrder"

/**
 swift 排序算法
 
 */

/*:
 ### 冒泡排序
 #### 原理：两两相邻元素进行比较，把较小的放到前面
 #### 平均时间复杂度为O(n^2)，空间复杂度为O(1)
 **inout** 通过函数改变函数外部的变量的值，
 */
func bubbleSort(arr: inout [Int]) -> [Int]{
    //标记位，若为true，则表示数组未经过任何交换，已经是有序的
    var flag = true
    for i in 0...arr.count-2 {
        for j in i+1...arr.count-1 {
            if arr[i] > arr[j]{
                flag = false
                let temp = arr[j]
                arr[j] = arr[i]
                arr[i] = temp
            }
        }
        if flag {
            break
        }
    }
    return arr
}
var arr = [21,6,3,0,4,7,9]
bubbleSort(arr: &arr)



