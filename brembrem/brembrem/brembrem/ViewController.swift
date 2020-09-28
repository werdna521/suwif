//
//  ViewController.swift
//  brembrem
//
//  Created by prk on 24/09/20.
//  Copyright © 2020 prk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var _emailTextField: UITextField!
    @IBOutlet weak var _passwordTextField: UITextField!
    @IBOutlet weak var _label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func _check(_ string: String, _ regex: String) -> Bool {
        return nil != string.range(of: regex, options: .regularExpression, range: nil, locale: nil)
    }
    
    @IBAction func _onPress(_ sender: Any) {
        let email = _emailTextField.text!
        let password = _passwordTextField.text!
        
        if (_check(email, "^([A-Za-z][A-Za-z0-9\\.\\_\\-]*])\\@([A-Za-z][A-Za-z0-9\\.\\-\\_]*)\\.(co\\.id|com)$")) {
            _label.text = "jan sembarang emailmu!"
            return
        }
        
        if (_check(password, "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]")) {
            _label.text = "passwordmu sembarangan"
            return
        }
        
        _label.text = email
    }
    
}
