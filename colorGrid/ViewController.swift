//
//  ViewController.swift
//  colorGrid
//
//  Created by SanDEV on 2020-01-08.
//  Copyright © 2020 SanDEV. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    var currentCounter = 0
    let colorArray = [
                      [UIColor.red,UIColor.green],
                      [#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), UIColor.red],
                      [UIColor.blue, UIColor.yellow] ,
                      [UIColor.cyan, UIColor.darkGray] ,
                      [UIColor.black , UIColor.white],
                      [UIColor.brown , UIColor.magenta] ,
                      [UIColor.gray , UIColor.orange] ,
                      [UIColor.green , UIColor.purple] ,
                      [UIColor.magenta , UIColor.brown] ,
                      [UIColor.orange , UIColor.gray] ,
                      [UIColor.purple , UIColor.green],
                      [UIColor.white, UIColor.black] ,
                      [UIColor.yellow, UIColor.blue] ,
                      [UIColor .darkGray, UIColor.cyan] ,
                      [UIColor.lightGray , #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)]
    ]

    @IBOutlet var boxes : [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        boxes.forEach {
            $0.setTitle("", for: .normal)
        }
        
       var leftOverBoxes = boxes
        var leftOverColors = colorArray
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)
        
        {
            timer in
            
                self.currentCounter += 1
            if(self.currentCounter < 16) {
                var currentBox = leftOverBoxes?.randomElement()
                
            let x = leftOverBoxes?.firstIndex(of: currentBox!)
            leftOverBoxes?.remove(at:  x!)
                
                var elementOfColor = leftOverColors.randomElement()!
            
                
                currentBox?.backgroundColor = elementOfColor[0];
                currentBox?.setTitle("\(self.currentCounter)", for: .normal)
                currentBox?.setTitleColor(elementOfColor[1], for: .normal)
                
                let y = leftOverColors.firstIndex(of: elementOfColor)
                leftOverColors .remove(at:  y!)
                
                
        }
        
    }
        
    }


}

 
