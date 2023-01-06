//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // IBOutlet을 통해 Interface Builder의 UI element를 reference할 수 있다
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        diceImageView1.image = #imageLiteral(resourceName: "DiceTwo") // #imageLiteral(
        
    }
    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    // IBAction을 통해 특정 UI element와의 상호 작용을 감지한다. Button의 배경이나 텍스트 또는 모양을 변경은 IBOutlet을 통해 가능하다.
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("button got tapped.")
        
        // 진동
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
//        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceFour")
        diceImageView1.image = diceArray.randomElement() // diceArray[Int.random(in: 0...5)] 도 가능하다
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
    }
}

