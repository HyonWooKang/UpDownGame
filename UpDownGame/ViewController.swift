//
//  ViewController.swift
//  UpDownGame
//
//  Created by EnGiS_Spencer on 2022/11/03.
//

import UIKit

/*
 To do list
 1. Add slider
 2. Add Hit button
 3. Receive value changed events from the slider
 4. Add Reset button
 5. Add labels preseting information
 6. Generate the random number
 7. Compare the random numbr with input number
 8. Show alerts
 9. Implements reset features
 10. Add credit view
 */

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }

    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
    }

    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
        slider.value = 15
    }
}

