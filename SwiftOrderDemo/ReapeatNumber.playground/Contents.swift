//: Playground - noun: a place where people can play

import UIKit

/**
 数组a[N]，存放了1 至N-1 个数，其中某个数重复一次。
 写一个函数，找出被重复的数字.时间复杂度必须为o（N）
 **/

//引用地址：http://blog.csdn.net/zhuimengzh/article/details/6720388

func findRepeatNumber(arr: inout [Int]) -> Int {
    var temp: Int = 0
    while arr[0] != arr[arr[0]] {
        temp = arr[0]
        arr[0] = arr[temp]
        arr[temp] = temp
    }
    return arr[0]
}
//测试方法
var arr = [Int]()
let count = 999
while arr.count != count {
    let temp: Int = Int(arc4random_uniform(UInt32(count))) + 1
    if !arr.contains(temp) {
        arr.append(temp)
    }
}
//print(arr)
arr.insert(84, at: 14)
//print(arr)
print(findRepeatNumber(arr: &arr))
