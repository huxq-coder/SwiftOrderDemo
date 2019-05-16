//: Playground - noun: a place where people can play

import UIKit
/**
 编写一个高效的算法来搜索 m x n 矩阵 matrix 中的一个目标值 target。该矩阵具有以下特性：
 
 每行的元素从左到右升序排列。
 每列的元素从上到下升序排列。
 示例:
 
 现有矩阵 matrix 如下：
 
 [
 [1,   4,  7, 11, 15],
 [2,   5,  8, 12, 19],
 [3,   6,  9, 16, 22],
 [10, 13, 14, 17, 24],
 [18, 21, 23, 26, 30]
 ]
 给定 target = 5，返回 true。
 
 给定 target = 20，返回 false。
 https://leetcode-cn.com/problems/search-a-2d-matrix-ii/
 */

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    for i in matrix {
        for j in i {
            if j == target {
                return true
            }
        }
    }
    return false
}

func searchMatrix1(_ matrix: [[Int]], _ target: Int) -> Bool {
    let row = matrix.count
    let rank = matrix[0].count
    let first = matrix[0][0]
    let last = matrix[row-1][rank-1]
    if target == first || target == last {
        return true
    }
    if target < first || target > last {
        return false
    }
    
    var tempRow = 0, tempRank = rank - 1
    while tempRow >= 0 && tempRow < row {
        if target == matrix[tempRow][tempRank] {
            return true
        } else if target < matrix[tempRow][tempRank] {
            tempRank -= 1
            if tempRank < 0 {
                return false
            }
        } else {
            tempRow += 1
        }
    }
    return false
}

var matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]]

print(searchMatrix1(matrix, 13))





