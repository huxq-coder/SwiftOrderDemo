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
    for i in 0..<arr.count-1 {
        for j in 0..<arr.count-1-i {
            if arr[j] > arr[j+1]{
                flag = false
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
                /** 空间复杂度优化
                 arr[j] = arr[j] + arr[j+1]
                 arr[j+1] = arr[j] - arr[j+1]
                 arr[j] = arr[j] - arr[j+1]
                 **/
            }
        }
        if flag {
            break
        }
    }
    return arr
}
var arr = [1,14,7,54,89,9]
bubbleSort(arr: &arr)

/*:
 ### 选择排序
 #### 原理：在未排序的序列中找到最小元素，存放到排序序列的起始位置，然后再从剩余未排序的元素中继续查找最小元素，放到已排序的序列的末尾，以此类推，直到所有元素排序完成
 #### 平均时间复杂度为O(n^2)
 */

func selectSort(arr: inout [Int]) -> [Int]{
    var minIndex = 0
    for i in 0...arr.count-2 {
        for j in i+1...arr.count-1 {
            minIndex = i
            if arr[minIndex] > arr[j] {
                minIndex = j
            }
            if i != minIndex {
                let temp = arr[i]
                arr[i] = arr[minIndex]
                arr[minIndex] = temp
            }
        }
        
    }
    return arr;
}

selectSort(arr: &arr)



