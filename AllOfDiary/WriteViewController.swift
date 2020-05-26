//
//  ViewController.swift
//  AllOfDiary
//
//  Created by 김민기 on 2020/05/25.
//  Copyright © 2020 Mingky. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController, UITextViewDelegate {
    var placeholderText = "일기를 입력해주세요"
    @IBOutlet weak var diaryText: UITextView!
    @IBAction func ClickEvent(_ sender: Any) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diaryText.layer.masksToBounds = true
        diaryText.layer.cornerRadius = 10
        diaryText.layer.borderWidth = 1
        diaryText.layer.borderColor = UIColor.darkGray.cgColor
        diaryText.delegate = self
        diaryText.text = placeholderText
        diaryText.textColor = UIColor.lightGray
    }
    func textViewDidBeginEditing(_ textView: UITextView) {

        if diaryText.textColor == UIColor.lightGray {
            diaryText.text = ""
            
            if(self.traitCollection.userInterfaceStyle == .light){
                diaryText.textColor = UIColor.black
            }else{
                diaryText.textColor = UIColor.white
            }
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {

        if diaryText.text == "" {

            diaryText.text = placeholderText
            diaryText.textColor = UIColor.lightGray
        }
    }

}

