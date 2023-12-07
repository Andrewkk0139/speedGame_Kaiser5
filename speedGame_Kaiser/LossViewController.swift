//
//  LossViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/7/23.
//

import UIKit

class LossViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func lossToStatsAction(_ sender: Any) {
        performSegue(withIdentifier: "lossToStats", sender: self)
    }
    
}
