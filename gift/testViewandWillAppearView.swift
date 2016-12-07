//
//  testViewandWillAppearView.swift
//  gift
//
//  Created by sky on 2016/12/5.
//  Copyright © 2016年 sky. All rights reserved.
//

import UIKit

class testViewandWillAppearView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("ViewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("willAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDisappear")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
