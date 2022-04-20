//
//  ViewController.swift
//  alertProject
//
//  Created by İrem Akgoz on 19.04.2022.
//  Copyright © 2022 Irem Akgoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "error", message: "username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "okey", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("button clicked")
        }
        alert.addAction(okButton)
 */
        
        
        if userNameText.text == "" {
           makeAlert(titleInput: "error", messageInput: "username not found")
        }
        
        else if passwordText.text == "" {
           makeAlert(titleInput: "error", messageInput: "password not found")
        }
        
        else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "error", messageInput: "password do not match")
            
        }
        
        else {
            makeAlert(titleInput: "succes" , messageInput: "user OK")
        }
    
}
    
    func makeAlert(titleInput : String , messageInput : String){
        let alert = UIAlertController(title: titleInput, message: messageInput , preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "okey", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
        


}
