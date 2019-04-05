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
    @IBOutlet weak var noTweetLabel: UILabel!
    @IBOutlet weak var tweetHereLabel: UILabel!
    @IBOutlet weak var numberLines: UILabel!

    
    var msgArray: [String] = []
    
    public func changeView(){
        let font = UIFont.systemFont(ofSize: 17.0, weight: .ultraLight)
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: UIColor.black,
            
            ]
        
        
        self.tweetTextField.attributedText = NSAttributedString(string: "Tweet here please", attributes: attributes)
        self.tweetTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.tweetTextField.layer.borderWidth = 2.0
        self.tweetTextField.layer.cornerRadius = 3.0
    }
    

    
  


    override open func viewDidLoad() {
        super.viewDidLoad()
        self.changeView()
        
        if self.msgArray.count == 0 {
            self.noTweetLabel.isHidden = false
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tweetAction(){
        guard  let stringText = self.tweetTextField.text else {
            return
        }
        msgArray =  TweeterLogic().splitMessage(stringMessage: stringText)
        self.table.reloadData()
         self.noTweetLabel.isHidden = true
    
    
   
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

extension TweeterViewController: UITextViewDelegate{
    public func textViewDidBeginEditing(_ textView: UITextView) {
        let font = UIFont.systemFont(ofSize: 17.0, weight: .ultraLight)
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: UIColor.black,
            
            ]
        textView.attributedText = NSAttributedString(string: "", attributes: attributes)
    }
    
    public func textViewDidChange(_ textView: UITextView) {
     let count =   textView.text.count
    self.numberLines.text = "\(count)"
    }
    

}
