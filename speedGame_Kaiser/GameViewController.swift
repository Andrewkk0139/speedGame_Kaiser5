//
//  GameViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/7/23.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var line1Outlet: UIImageView!
    @IBOutlet weak var line2Outlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
            line1Outlet.image = UIImage(named: "line")
            line2Outlet.image = UIImage(named: "line")
    }
    
    @IBAction func devButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "toWin", sender: self)
    }
    

}
