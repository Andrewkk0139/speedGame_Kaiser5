//
//  LossViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/7/23.
//

import UIKit

class LossViewController: UIViewController {

    @IBOutlet weak var lossImageOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lossImageOutlet.image = UIImage(named: "sadFace")
    }
    
    @IBAction func lossToStatsAction(_ sender: Any) {
        performSegue(withIdentifier: "lossToStats", sender: self)
    }
    
}
