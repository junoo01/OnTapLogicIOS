//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Apple on 26/10/2022.
//

import UIKit

class ViewController: UIViewController {

    var so1: Int!
    var so2: Int!
    var dau: String!
    
    @IBOutlet weak var ketQuaTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nut0_clicked(_ sender: Any) {
        var value = ketQuaTF.text ?? ""
        value += "0"
        
        ketQuaTF.text = value
    }
    @IBAction func nut1_clicked(_ sender: Any) {
        var value = ketQuaTF.text ?? ""
        value += "1"
        
        ketQuaTF.text = value
    }
    @IBAction func nut2_clicked(_ sender: Any) {
        var value = ketQuaTF.text ?? ""
        value += "2"
        
        ketQuaTF.text = value
    }
    
    @IBAction func nut3_clicked(_ sender: Any) {
        var value = ketQuaTF.text ?? ""
        value += "3"
        
        ketQuaTF.text = value
    }
    @IBAction func nut4_clicked(_ sender: Any) {
        var value = ketQuaTF.text ?? ""
        value += "4"
        
        ketQuaTF.text = value
    }
    @IBAction func nut5_clicked(_ sender: Any) {
        var value = ketQuaTF.text ?? ""
        value += "5"
        
        ketQuaTF.text = value
    }
    @IBAction func nut6_clicked(_ sender: Any) {
        var value = ketQuaTF.text ?? ""
        value += "6"
        
        ketQuaTF.text = value
    }
    @IBAction func nut7clicked(_ sender: Any) {
        var value = ketQuaTF.text ?? ""
        value += "7"
        
        ketQuaTF.text = value
    }
    @IBAction func nut8clicked(_ sender: Any) {
        var value = ketQuaTF.text ?? ""
        value += "8"
        
        ketQuaTF.text = value
    }
    @IBAction func nut9clicked(_ sender: Any) {
        var value = ketQuaTF.text ?? ""
        value += "9"
        
        ketQuaTF.text = value
    }
    
    
    
    @IBAction func congClicked(_ sender: Any) {
        let so1String = ketQuaTF.text ?? "0"
        so1 = Int(so1String)
        
        ketQuaTF.text = ""
        dau = "+"
    }
    @IBAction func truClicked(_ sender: Any) {
        let so1String = ketQuaTF.text ?? "0"
        so1 = Int(so1String)
        
        ketQuaTF.text = ""
        dau = "-"
    }
    @IBAction func nhanClicked(_ sender: Any) {
        let so1String = ketQuaTF.text ?? "0"
        so1 = Int(so1String)
        
        ketQuaTF.text = ""
        dau = "*"
    }
    @IBAction func chiaClicked(_ sender: Any) {
        let so1String = ketQuaTF.text ?? "0"
        so1 = Int(so1String)
        
        ketQuaTF.text = ""
        dau = "/"
    }
    
    
    
    @IBAction func bangClicked(_ sender: Any) {
        let so2String = ketQuaTF.text ?? "0"
        so2 = Int(so2String)
        var result = 0
        if dau == "+" {
            result = so1 + so2
        }else if dau == "-" {
            result = so1 - so2
        }else if dau == "*" {
            result = so1 * so2
        }else if dau == "/" {
            result = so1 / so2
        }
        
        ketQuaTF.text = "\(result)"
    }
    
    @IBAction func xoaClicked(_ sender: Any) {
        ketQuaTF.text = ""
    }
    

}

