//
//  SecondView.swift
//  LoginApp
//
//  Created by Николай Коваленко on 16.12.2022.
//

import SwiftUI

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var grettingTF: UILabel!
    
    var userName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        grettingTF.text = userName
        
        let color1 = UIColor(red: 153 / 255, green: 26 / 255, blue: 61 / 255, alpha: 1.0).cgColor
        let color2 = UIColor(red: 243 / 255, green: 155 / 255, blue: 51 / 255, alpha: 1.0).cgColor
        let color3 = UIColor(red: 184 / 255, green: 34 / 255, blue: 69 / 255, alpha: 1.0).cgColor
        
        
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = self.view.bounds
        gradientBackground.colors = [color1, color2, color3]
        gradientBackground.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientBackground.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradientBackground, at: 0)
        
    }
    
    @IBAction func logOutButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
}

