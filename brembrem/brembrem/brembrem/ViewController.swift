// Copyright 2020 Andrew Cen
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
