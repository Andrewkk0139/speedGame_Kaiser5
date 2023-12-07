//
//  ViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/6/23.
//

import UIKit

public class AppData {
    static var masterDeck: [Int:String] = [:]
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let cardRange = 1...52
        for i in cardRange {
          //  masterDeck = [i,]
        }
    }

    @IBAction func playButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "toGame", sender: self)
    }
    
    
}
