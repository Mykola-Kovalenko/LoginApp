//
//  ViewController.swift
//  LoginApp
//
//  Created by Николай Коваленко on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //    var fogotLogin = UIAlertController(
    //        title: "Fogot user login?",
    //        message: "Put /User/ to login string" ,
    //        preferredStyle: UIAlertController.Style.alert)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fogotUserDidTaped() {
        showUserAlert("OOPS!", "Your name is User")
    }
    
    @IBAction func fogotPassDidTaped() {
        showPassAlert("OOPS!", "Your pass is Password :)")
    }
    
    
    // MARK: - Alerts
}
extension ViewController {
        private func showUserAlert(_ title: String,_ message: String) {
            let userAlert = UIAlertController(title: title, message: message , preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            userAlert.addAction(okAction)
            present(userAlert, animated: true)
        }
        private func showPassAlert(_ title: String,_ message: String) {
            let passwordAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            passwordAlert.addAction(okAction)
            present(passwordAlert, animated: true)
        }
    }


