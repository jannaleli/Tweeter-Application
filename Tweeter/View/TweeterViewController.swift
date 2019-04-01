//
//  TweeterViewViewController.swift
//  Tweeter
//
//  Created by Jann Aleli Zaplan on 1/4/19.
//  Copyright © 2019 Jann Aleli Zaplan. All rights reserved.
//

import UIKit

open class TweeterViewController: UIViewController {
    
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var tweetTextField: UITextField!
    @IBOutlet weak var tweetButton: UIButton!

    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tweetAction(){
        let stringText = self.tweetTextField.text
        let finalString = TweeterLogic().splitMessage(stringMessage: stringText!)
        self.tweetLabel.text = finalString
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
