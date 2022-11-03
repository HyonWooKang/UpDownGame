//
//  ViewController.swift
//  UpDownGame
//
//  Created by EnGiS_Spencer on 2022/11/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var minimumValueLable: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    
    var randomValue: Int = 0
    var tryCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // slider 포인터 이미지 변경
        slider.setThumbImage(UIImage(imageLiteralResourceName: "slider_thumb.png"), for: .normal)
        reset()
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }

    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
    }

    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
        reset()
    }
    
    func reset() {
        //print("reset")
        randomValue = Int.random(in: 0...30)
        print("randomValue : \(randomValue)")
        // 초기화
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLable.text = "0"
        maximumValueLabel.text = "30"
        sliderValueLabel.text = "15"
        
    }
}

