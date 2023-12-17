//
//  StatsViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/7/23.
//

import UIKit

class StatsViewController: UIViewController {

    
    @IBOutlet weak var userNameOutlet: UILabel!
    @IBOutlet weak var winOutlet: UILabel!
    @IBOutlet weak var lossOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let name = AppData.userName{
            userNameOutlet.text = "\(name) Stats:"
        } else {
            userNameOutlet.text = "Stats:"
        }
        winOutlet.text = "Wins: \(AppData.win)"
        lossOutlet.text = "Losses: \(AppData.loss)"
    }
    
    @IBAction func playAgainAction(_ sender: Any) {
        performSegue(withIdentifier: "toHome", sender: self)
    }
    

}
