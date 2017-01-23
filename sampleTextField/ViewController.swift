//
//  ViewController.swift
//  sampleTextField
//
//  Created by Apple on 2017/01/18.
//  Copyright © 2017年 Sasaki Kazuhiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTextField: UITextField!

    @IBOutlet weak var viewLabel: UILabel!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // キーボードの中のリターンキーが押されたとき発動
    @IBAction func tapReturn(_ sender: UITextField) {
        print(sender.text)
        
        viewLabel.text = sender.text
    
        // TODO: 入力されたテキストの中にtestという字が含まれていたら「testです」とラベルに表示、それ以外は入力された字をそのまま表示しましょう
        // let myTextField:String! = "初期値"　はダメ  
        
        let str:String! = myTextField.text
        if let r = str.range(of:"test") {
            viewLabel.text = "testです"
            print(viewLabel.text)
        } else {
            viewLabel.text = str
            print(viewLabel.text)
        }
    }
    
    // 画面上のキャンセルボタンが押されたとき発動
    @IBAction func tapCancel(_ sender: UIButton) {
        // キーボードを閉じる
        myTextField.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

