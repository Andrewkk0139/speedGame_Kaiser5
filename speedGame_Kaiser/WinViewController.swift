//
//  WinViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/7/23.
//

import UIKit

class WinViewController: UIViewController {
    
    @IBOutlet weak var winImageOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        winImageOutlet.image = UIImage(named: "trophy")
        
    }
    
    @IBAction func winToStatsAction(_ sender: Any) {
        performSegue(withIdentifier: "winToStats", sender: self)
    }
    
}
