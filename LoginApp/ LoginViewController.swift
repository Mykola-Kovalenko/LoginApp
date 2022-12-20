//
//  ViewController.swift
//  LoginApp
//
//  Created by Николай Коваленко on 11.12.2022.
//

import UIKit

class  LoginViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private var user = "User"
    private var password = "Password"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? WelcomeViewController else { return }
        let  greettings = "Hello, \(userNameTF.text ?? "...")"
        destinationVC.userName = greettings
    }
    
    
    @IBAction func loginButtonDidTAped() {
        if userNameTF.text == user, passwordTF.text == password {
        } else {
            showAlert(
                Title: "invaild login or password",
                Message: "Please try again"
            )
            passwordTF.text = ""
        }
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    @IBAction func fogotUserDidTaped() {
        showAlert(Title: "OOPS!",
                  Message: "Your name is (User) 🤣"
        )
    }
    @IBAction func fogotPassDidTaped() {
        showAlert(Title: "OOPS!",
                  Message: "Your pass is (Password) 🤣"
        )
    }
    
    
    // MARK: - Alerts
}
extension  LoginViewController {
    private func showAlert(Title title: String, Message message: String) {
        let userAlert = UIAlertController(title: title, message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        userAlert.addAction(okAction)
        present(userAlert, animated: true)
    }
}





