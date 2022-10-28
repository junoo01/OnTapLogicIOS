//
//  bai4.swift
//  ontap1
//
//  Created by Apple on 28/10/2022.
//

import Foundation
func bai3() {
    let arrNumber:[Int] = [10, 1, 3, 5, 6, 7, 2]
    
    for(index, item) in arrNumber.enumerated() {
        var tempArray: [Int] = []
        for i in index...arrNumber.count - 1 {
            if item < arrNumber[i] {
                tempArray.append(arrNumber[i])
            }
        }
        if tempArray.count == 0 {
            print("Sau phần tử thứ \(index) có giá trị \(item), ko có phần tử nào lớn hơn nó. -1")
        }else{
            print("Sau phần tử thứ \(index) có giá trị \(item), các phần tử nào lớn là: \(tempArray)")
        }
        print("---------------")
        print()
    }
}
