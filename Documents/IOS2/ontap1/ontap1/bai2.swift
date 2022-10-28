//
//  bai2.swift
//  ontap1
//
//  Created by Apple on 28/10/2022.
//

import Foundation

func tongHaiMaTran() {
    var n: Int = 0
    while n <= 0 || n > 5 {
        print("Nhập kích thước ma trận (0 < n <= 5)")
        n = Int(readLine() ?? "") ?? 0
    }
    var maTran1: [[Int]] = []
    var maTran2: [[Int]] = []
    var maTranTong: [[Int]] = []

    for _ in 0..<n {
        var arr1: [Int] = []
        var arr2: [Int] = []
        for _ in 0..<n {
            arr1.append(Int.random(in: 0..<100))
            arr2.append(Int.random(in: 0..<100))
        }
        maTran1.append(arr1)
        maTran2.append(arr2)
    }
    print(maTran1)
    print(maTran2)
    
    for x in 0..<n {
        var arr: [Int] = []
        for y in 0..<n {
            arr.append(maTran1[x][y] + maTran2[x][y])
        }
        maTranTong.append(arr)
    }
    print("Ma trận tổng: ")
    print(maTranTong)
}
