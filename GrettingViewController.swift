//
//  SecondView.swift
//  LoginApp
//
//  Created by Николай Коваленко on 16.12.2022.
//

import SwiftUI

class GrettingViewController: UIViewController {
    
    @IBOutlet weak var grettingTF: UILabel!
    
    var userName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        grettingTF.text = userName
    }
}

