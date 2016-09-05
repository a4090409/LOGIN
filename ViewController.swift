//
//  ViewController.swift
//  LOGIN
//
//  Created by ChinBuck on 2016/5/21.
//  Copyright © 2016年 ChinBuck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LoginFE: UITextField!
    @IBOutlet weak var SecretFE: UITextField!
    @IBOutlet weak var LoginStatus: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        SecretFE.secureTextEntry = true;
        
    }

    @IBAction func account(sender: UITextField) {
        sender.resignFirstResponder()
        LoginStatus.sizeToFit()
        
    }
    @IBAction func secret(sender: UITextField) {
        sender.resignFirstResponder()
        LoginStatus.sizeToFit()
    }
    @IBAction func LoginCheck(sender: UIButton) {
        let custaccount = LoginFE.text!
        let secret = SecretFE.text!
        switch (custaccount,secret) {
        case ("buck","abc123"),("annie","12345"),("a4090409","666"):
            LoginStatus.text = "登入成功"
        case ("buck",_),("annie",_),("a4090409",_):
            LoginStatus.text = "請輸入正確密碼"
        default:
            LoginStatus.text = "使用者或帳密錯誤"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

