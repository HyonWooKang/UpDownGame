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
    // slider 값 변경 시 처리
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
        let integerValue: Int = Int(sender.value)
        sliderValueLabel.text = String(integerValue)
    }
    
    // 게임 결과를 알려주는 alert
    func showAlert(message: String) {
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            (action) in self.reset()
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    // v버튼을 눌러 랜덤 게임 진행
    @IBAction func touchUpHitButton(_ sender: UIButton) {

        print(slider.value)
        let hitValue: Int = Int(slider.value)
        slider.value = Float(hitValue)
        
        tryCount += 1
        tryCountLabel.text = "\(tryCount) / 5"
        // 랜덤 게임
        if randomValue == hitValue {
            //print("You Hit!!")
            showAlert(message: "You hit!")
            reset()
        } else if tryCount >= 5 {
            //print("You lose")
            showAlert(message: "You lose")
            reset()
        } else if randomValue > hitValue {
            slider.minimumValue = Float(hitValue)
            minimumValueLable.text = String(hitValue)
        } else {
            slider.maximumValue = Float(hitValue)
            maximumValueLabel.text = String(hitValue)
        }
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

