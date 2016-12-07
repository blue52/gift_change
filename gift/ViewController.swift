//
//  ViewController.swift
//  gift
//
//  Created by sky on 2016/12/2.
//  Copyright © 2016年 sky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataArray = [Int]()
    var playerArray = [String]()
    let person = ["Sky","Jessie","老大"]
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var AddfileTextfield: UITextField!
    
    @IBAction func AddmemberButton(_ sender: Any) {
            if AddfileTextfield.text == ""{
            displayLabel.text = "Enter somewords!!"
            }else{
                savefile()
            }

    }
    @IBAction func playButton(_ sender: Any) {
        let rollgift = Int(arc4random_uniform(UInt32(person.count)))

        
        displayLabel.text = person[rollgift]
        //rollgift = Int(arc4random_uniform(3))
       
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func savefile(){
        let fileManager = FileManager.default
        let docUrls = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        let douUrl = docUrls.first
        let url = douUrl?.appendingPathComponent("newtext.txt")
        let array = playerArray
        (array as NSArray).write(to: url!, atomically: true)
    }


}

