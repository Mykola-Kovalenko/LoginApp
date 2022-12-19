//
//  ViewController.swift
//  LoginApp
//
//  Created by Николай Коваленко on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
private var user = "User"
private var password = "Password"
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? GrettingViewController else { return }
        let  greettings = "Hello, \(userNameTF.text ?? "...")"
        destinationVC.userName = greettings
    }
    
    
  
        
    
    
    
    @IBAction func fogotUserDidTaped() {
        showAlert("OOPS!", "Your name is (User) 🤣")
    }
    @IBAction func fogotPassDidTaped() {
        showAlert("OOPS!", "Your pass is (Password) 🤣")
    }

    
    // MARK: - Alerts
}
extension ViewController {
    private func showAlert(_ title: String,_ message: String) {
        let userAlert = UIAlertController(title: title, message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        userAlert.addAction(okAction)
        present(userAlert, animated: true)
    }
}
      

