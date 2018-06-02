//
//  ViewController.swift
//  EasyAuthen
//
//  Created by MasterUNG on 2/6/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Explicit
    var userString: String = ""
    var passwordString: String = ""
    
    var dialogString = ["Have Space", "User False", "Password False", "Welcome To App"]
    
    var autnenDicString = ["user1":"1234", "user2":"2234", "user3":"3234", "user4":"4234"]
    
    
    
    
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBOutlet weak var alertLebel: UILabel!
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        
//        Get Value From TextField
        userString = userTextField.text!
        passwordString = passwordTextField.text!
        
        print("User ==> \(userString)")
        print("Password ==> \(passwordString)")
        
//        Check Space
        if (userString.count == 0) || (passwordString.count == 0) {
            alertLebel.text = dialogString[0]
        } else {
            
            let truePasswordString = autnenDicString[userString]
            print("truePass ==> \(String(describing: truePasswordString))")
            
            if truePasswordString != nil {
                
                if passwordString == truePasswordString {
                    alertLebel.text = dialogString[3]
                } else {
                    alertLebel.text = dialogString[2]
                }
                
            } else {
                alertLebel.text = dialogString[1]
            }
            
            
            
        }   // if
    }   // loginButton
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

