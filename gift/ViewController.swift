//
//  ViewController.swift
//  gift
//
//  Created by sky on 2016/12/2.
//  Copyright © 2016年 sky. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    //var dataArray = [Int]()
    //var playerArray = [String]()
    var person = [String]()
    var audioplayer = AVAudioPlayer()
    
    
    @IBOutlet weak var showLabelOne: UILabel!
    @IBOutlet weak var showLabelTwo: UILabel!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var AddfileTextfield: UITextField!
    @IBAction func AddmemberButton(_ sender: Any) {
            if AddfileTextfield.text == ""{
            displayLabel.text = "Enter somewords!!"
            }else{
                //savefile()
                person.append(AddfileTextfield.text!)
                AddfileTextfield.text = "" //clear textfield
            }

    }
    @IBAction func playButton(_ sender: Any) {

        let rollgift = Int(arc4random_uniform(UInt32(person.count)))
        
        if person.isEmpty == true{
            displayLabel.text = "喂~別鬧好嗎？要輸入成員名單啦！"
            showLabelOne.text = ""
            showLabelTwo.text = ""
        }else{
            displayLabel.text = "開獎囉！"
            showLabelOne.text = "恭喜獲得\(person[rollgift])的禮物"
            person.remove(at: rollgift)
            playmusic()
            showLabelTwo.text = "還剩\(person.joined(separator: ",")) \(person.count)位大獎未被抽中"
            if person.count == 0{
                showLabelTwo.text = "希望大家都喜歡抽中的禮物"
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        AddfileTextfield.delegate = self
            print(person.count)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        AddfileTextfield.resignFirstResponder()
        return true
    }//按retrun鍵,keyboard會自動hide
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }//點擊其它地方，收起keyboard
    
    func playmusic(){
        let audioURL = Bundle.main.path(forResource: "crrect_answer", ofType: "mp3")
        let url = URL(fileURLWithPath: audioURL!)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioplayer = sound
            sound.play()
        } catch {
            print("audio error")
        }
        
    }
}

