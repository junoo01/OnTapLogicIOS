//
//  bai3.swift
//  ontap1
//
//  Created by Apple on 28/10/2022.
//

import Foundation

func mayATM() {
    var n = 0
    while n <= 0 || n > 30 {
        print("Nhập tổng số lượng tờ tiền, nhiều nhất 30:")
        n = Int(readLine() ?? "") ?? 0
    }
    print("Nhập số tiền cần rút:")
    var soTienRut = Int(readLine() ?? "") ?? 0

    let soTo50k = Int.random(in: 0..<n)
    let soTo100k = Int.random(in: 0..<(n-soTo50k))
    let soTo200k = Int.random(in: 0..<(n-soTo50k-soTo100k))
    var soTo500k = n-soTo50k-soTo100k-soTo200k
    soTo500k = soTo500k > 0 ? soTo500k : 0

    print(soTo50k, soTo100k, soTo200k, soTo500k)
    let tongSoTien = soTo50k*50000 + soTo100k*100000 + soTo200k*200000 + soTo500k*500000

    if (soTienRut % 50000 != 0) {
        print("Số tiền rút phải là bội số 50.000")
        exit(0)
    }
    if soTienRut > tongSoTien {
        print("Số tiền rút lớn hơn số tiền trong ATM")
        exit(0)
    }
    var soToRut500k: Int = 0
    var soToRut200k: Int = 0
    var soToRut100k: Int = 0
    var soToRut50k: Int = 0

    soToRut500k = soTienRut / 500000
    soToRut500k = min(soToRut500k, soTo500k)
    soTienRut -= soToRut500k * 500000

    if soTienRut > 0 {
        soToRut200k = soTienRut / 200000
        soToRut200k = min(soToRut200k, soTo200k)
        soTienRut -= soToRut200k * 200000
    }
    if soTienRut > 0 {
        soToRut100k = soTienRut / 100000
        soToRut100k = min(soToRut100k, soTo100k)
        soTienRut -= soToRut100k * 100000
    }
    if soTienRut > 0 {
        soToRut50k = soTienRut / 50000
        soToRut50k = min(soToRut50k, soTo50k)
        soTienRut -= soToRut50k * 50000
    }
    if soTienRut > 0 {
        print("Số tiền rút lớn hơn số tiền trong ATM")
        exit(0)
    }

    print("50K: ", soToRut50k)
    print("100k: ", soToRut100k)
    print("200k: ", soToRut200k)
    print("500k: ", soToRut500k)
}
