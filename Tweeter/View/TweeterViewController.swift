//
//  TweeterViewViewController.swift
//  Tweeter
//
//  Created by Jann Aleli Zaplan on 1/4/19.
//  Copyright © 2019 Jann Aleli Zaplan. All rights reserved.
//

import UIKit

open class TweeterViewController: UIViewController {
    
    
    @IBOutlet weak var tweetTextField: UITextView!
    @IBOutlet weak var tweetButton: UIButton!
    @IBOutlet weak var table: UITableView!
    var msgArray: [String] = []

    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tweetAction(){
        let stringText = self.tweetTextField.text
         msgArray = TweeterLogic().splitMessage(stringMessage: stringText!)
        self.table.reloadData()
    
    
   
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

extension TweeterViewController: UITableViewDelegate {
    
}

extension TweeterViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! TweeterCell
        let row = indexPath.row
            cell.textField?.text = self.msgArray[row]
        return cell
        }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return msgArray.count
    }
    

}
