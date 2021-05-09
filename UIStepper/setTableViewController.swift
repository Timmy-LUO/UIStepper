//
//  setTableViewController.swift
//  UIStepper
//
//  Created by 羅承志 on 2021/4/27.
//

import UIKit

class setTableViewController: UITableViewController {

    @IBOutlet weak var whiteStepper: UIStepper!
    @IBOutlet weak var goldenStepper: UIStepper!
    @IBOutlet weak var blueStepper: UIStepper!
    @IBOutlet weak var grayStepper: UIStepper!
    
    @IBOutlet weak var whiteQuantityLabel: UILabel!
    @IBOutlet weak var goldenQuantityLabel: UILabel!
    @IBOutlet weak var blueQuantityLabel: UILabel!
    @IBOutlet weak var grayQuantityLabel: UILabel!
    
    @IBOutlet weak var whitePriceLabel: UILabel!
    @IBOutlet weak var goldenPriceLabel: UILabel!
    @IBOutlet weak var bluePriceLabel: UILabel!
    @IBOutlet weak var grayPriceLabel: UILabel!
    
    @IBOutlet weak var priceTotalLabel: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    
    //定義商品數量初始值=0
    var itemWhite: Int = 0
    var itemGolden: Int = 0
    var itemBlue: Int = 0
    var itemGray: Int = 0
    var totalPrice: Int = 37900
    
    //商品總額運算
        func totalCalculate() {
            let sum = itemWhite * totalPrice + itemGolden * totalPrice + itemBlue * totalPrice + itemGray * totalPrice
            priceTotalLabel.text = "TOTAL : \(sum)"
            priceTotalLabel.sizeToFit()
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeStepper(_ sender: UIStepper) {
        
        //取得stepper的值
        itemWhite = Int(whiteStepper.value)
        itemGolden = Int(goldenStepper.value)
        itemBlue = Int(blueStepper.value)
        itemGray = Int(grayStepper.value)
        
        
        //顯示於QTYLabel
        whiteQuantityLabel.text = "數量 : \(itemWhite)"
        goldenQuantityLabel.text = "數量 : \(itemGolden)"
        blueQuantityLabel.text = "數量 : \(itemBlue)"
        grayQuantityLabel.text = "數量 : \(itemGray)"
        
        //計算總額
        totalCalculate()
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        
        //stepper歸零
        whiteStepper.value = 0
        goldenStepper.value = 0
        blueStepper.value = 0
        grayStepper.value = 0
        
        //取得stepper的值
        itemWhite = Int(whiteStepper.value)
        itemGolden = Int(goldenStepper.value)
        itemBlue = Int(blueStepper.value)
        itemGray = Int(grayStepper.value)
        
        //顯示於QTYLabel
        whiteQuantityLabel.text = "數量 : \(itemWhite)"
        goldenQuantityLabel.text = "數量 : \(itemGolden)"
        blueQuantityLabel.text = "數量 : \(itemBlue)"
        grayQuantityLabel.text = "數量 : \(itemGray)"
        
        //計算總額
        totalCalculate()
        
    }
    
}
