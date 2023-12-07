//
//  GameViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/7/23.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func devButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "toWin", sender: self)
    }
    

}
