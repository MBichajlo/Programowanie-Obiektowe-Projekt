//
//  Sips&BitesVC.swift
//  Sips&Bites
//
//  Created by Paweł Ciach on 24/10/2022.
//

import UIKit
import SQLite

class Sips_BitesVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonTapped(_ sender: Any){
        performSegue(withIdentifier: "toMenuVC", sender: nil)
    }
}
