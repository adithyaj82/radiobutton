//
//  ViewController.swift
//  RadioButtonSwift3
//
//  Created by Abdullah Alhazmy on 5/4/17.
//  Copyright © 2017 Abdullah Alhazmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var l1: UILabel!
    
    @IBOutlet var radioButton3: RadioButton!
    @IBOutlet var radioButton4: RadioButton!
    
    lazy var radioButtons: [RadioButton] = {
        return [
        //    self.radioButton1,
          //  self.radioButton2,
            self.radioButton3,
            self.radioButton4        ]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onFourthRadioButtonClicked(_ sender: RadioButton) {
        updateRadioButton(sender)
        l1.text = "female"


    }
    @IBAction func onThirdRadioButtonClicked(_ sender: RadioButton) {
        updateRadioButton(sender)
        l1.text = "male"
    }
  
    
    func updateRadioButton(_ sender: RadioButton){
        radioButtons.forEach { $0.isSelected = false }
        sender.isSelected = !sender.isSelected

    }
    
    func getSelectedRadioButton() -> RadioButton? {
        var radioButton: RadioButton?
         radioButtons.forEach { if($0.isSelected){ radioButton =  $0 } }
        return radioButton
    }
    
 


}

