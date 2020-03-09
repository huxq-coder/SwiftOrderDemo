import UIKit

/*
 将字符串中的空格替换成“%20”,当字符串为I am FlyElephat,替换之后的字符串为I%20am%20FlyElephant.
 */

func replaceSpaces(str: inout String) -> String {
    if str.count == 0 {
        return ""
    }
    /// 空格数量
    var spaceCount = 0
    /// 原始字符串的长度
    let originalCount = str.count
    // 计算出空格的数量
    for character in str {
        if character == " " {
            spaceCount += 1
        }
    }
    if spaceCount == 0 {
        return ""
    }
    /// 20% 替换了空格 之后的长度
    let newCount = originalCount + spaceCount * 2
    
    var indexOfOriginal = originalCount-1
    var indexOfNew = newCount
    for i in 0..<spaceCount {
        str.append("  ")
    }
    while indexOfOriginal >= 0 && indexOfNew > indexOfOriginal {
        if str[str.index(str.startIndex, offsetBy: indexOfOriginal)] == " " {
            str.insert("0", at: str.index(str.startIndex, offsetBy: indexOfNew))
            indexOfNew -= 1
            str.remove(at: str.index(str.startIndex, offsetBy: indexOfNew))
            
            str.insert("2", at: str.index(str.startIndex, offsetBy: indexOfNew))
            indexOfNew -= 1
            str.remove(at: str.index(str.startIndex, offsetBy: indexOfNew))
            
            str.insert("%", at: str.index(str.startIndex, offsetBy: indexOfNew))
            indexOfNew -= 1
            str.remove(at: str.index(str.startIndex, offsetBy: indexOfNew))
        } else {
            
            str.insert(str[str.index(str.startIndex, offsetBy: indexOfOriginal)], at: str.index(str.startIndex, offsetBy: indexOfNew))
            str.remove(at: str.index(str.startIndex, offsetBy: indexOfOriginal))
            indexOfNew -= 1
        }
        indexOfOriginal -= 1
    }
    return str
}


var str = "we are happy."
print("字符串:\(str) 空格 替换 %20 之后为: \(replaceSpaces(str: &str))")

/// 借助于数组实现
let array = str.components(separatedBy: " ")
print("借助数组实现：\(array.joined(separator: "%20"))")

var str1 = "we are happy."
/// 系统自带方法
print("系统自带的方法替换空格: \(str1.replacingOccurrences(of: " ", with: "%20"))")

