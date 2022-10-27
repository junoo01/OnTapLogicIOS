//
//  main.swift
//  ontap1
//
//  Created by Apple on 25/10/2022.
//

import Foundation

//Bài tập logic
//In 1 ma trận 3 x 3 bất kì.
//Cộng 2 ma trận nxn bất kì (0 < n <= 5)
//Cho dãy số tự nhiên bất kỳ gồm n phần tử. Với mỗi phần tử thứ i, hãy tìm phần tử bên phải lớn hơn nó. Nếu không tồn tại, in ra -1.
//Một máy ATM hiện có n (n <= 30) tờ tiền có giá trị 50.000, 100.000, 200.000, 500.000. Hãy tìm cách trả ít tờ nhất với số tiền đúng bằng S nhập từ bàn phím (mỗi loại tiền có số lượng tờ khác nhau, tổng các tờ tiền = n). Trường hợp S nhập từ bàn phím không hợp lệ, hãy đưa ra thông báo.


// MARK: BÀI 1
//let arrNumbers = [1,1,9,8,7,12,11,15,16,17]
//    for (left,right) in zip(arrNumbers, arrNumbers.dropFirst()) {
//        if left > right {
//            print(left)
//            print(right)
//        }else{
//            print("-1")
//        }
//    }

// MARK: BÀI 2
//var t100: Int = 100
//var t50: Int = 50
//var t20: Int = 20
//print("Nhập số tiền bạn muốn rút: ")
//var t = Int(readLine()!)!
//t100 = t/100 //5.7 => 5
//t -= 100*t100 // 570-500 =70
//
//t50 = t/50 //70/50 = 1.4 => 1
//t -= 50*t50 // 70-50 = 20
//
//t20 = t/20 // 20/20 = 1
//t -= 20*t20 // 20-20= 0
//
//print("Số tờ các loại mệnh giá là: ")
//print("Loại 100 :",t100)
//print("Loại 50  :",t50)
//print("Loại 20  :",t20)
//
//print("Tổng số tờ các loại bạn nhận được là: ",t+t100+t50+t20)

//var t50: Int = 50000
//var t100: Int = 100000
//var t200: Int = 200000
//var t500: Int = 500000
//print("Nhập số tiền bạn muốn rút: ")
//var t = Int(readLine() ?? "") ?? 0
//if t <= 0 {
//    print("Hãy nhập số tiền lớn hơn 0")
//}
//// số tờ tiền muốn nhận ít nên duyệt từ 500k trở xuống
//t500 = t/500000
//t -= 500000*t500
//
//t200 = t/200000
//t -= 200000*t200
//
//t100 = t/100000
//t -= 100000*t100
//
//t50 = t/50000
//t -= 50000*t50
//
//print("Số tờ các loại mệnh giá là: ")
//print("Loại 500 :",t500)
//print("Loại 200 :",t200)
//print("Loại 100 :",t100)
//print("Loại 50 :",t50)
//
//var tong: Int
//tong = t+t500+t200+t100+t50
//if tong<30 {
//    print("Tổng số tờ các loại bạn nhận được là: ",tong)
//}else{
//    print("Số tiền quá lớn")
//}

// MARK: BÀI 3
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 3, columns: 3)
matrix[0, 0] = 2
matrix[0, 1] = 1
matrix[0, 2] = 4
matrix[1, 0] = 5
matrix[1, 1] = 7
matrix[1, 2] = 8
matrix[2, 0] = 3
matrix[2, 1] = 9
matrix[2, 2] = 5
var matrix2 = Matrix(rows: 3, columns: 3)
matrix2[0, 0] = 7
matrix2[0, 1] = 4
matrix2[0, 2] = 3
matrix2[1, 0] = 2
matrix2[1, 1] = 1
matrix2[1, 2] = 8
matrix2[2, 0] = 4
matrix2[2, 1] = 6
matrix2[2, 2] = 2

print(matrix)
print(matrix2)

var matrixSum = Matrix(rows: 3, columns: 3)
for row in 0 ..< 3 {
    for column in 0 ..< 3 {
        matrixSum[row, column] = matrix[row, column] + matrix2[row, column]
    }
}
print(matrixSum)















