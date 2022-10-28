//
//  bai1.swift
//  ontap1
//
//  Created by Apple on 28/10/2022.
//

import Foundation

func inMaTran() {
    var array: [[Int]] = [[1 , 2, 3],[4, 5, 6],[7, 8, 9]]

    for i in 0..<array.count {
        for j in 0..<array.count {
            print(array[i][j], terminator: " ")
        }
        print()
    }
    
}
