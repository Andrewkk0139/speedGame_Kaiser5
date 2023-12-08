//
//  ViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/6/23.
//

import UIKit

public class AppData {
    static var masterDeck: [String:String] = [:]
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let cardRange = 2...10
        for i in cardRange {
            AppData.masterDeck["\(i)c"] =  "\(i)_of_clubs"
            AppData.masterDeck["\(i)d"] =  "\(i)_of_diamonds"
            AppData.masterDeck["\(i)h"] =  "\(i)_of_hearts"
            AppData.masterDeck["\(i)s"] =  "\(i)_of_spades"
        }
        AppData.masterDeck["jackC"] =  "jack_of_clubs2"
        AppData.masterDeck["jackD"] =  "jack_of_diamonds2"
        AppData.masterDeck["jackH"] =  "jack_of_hearts2"
        AppData.masterDeck["jackS"] =  "jack_of_spades2"
        AppData.masterDeck["queenC"] =  "queen_of_clubs2"
        AppData.masterDeck["queenD"] =  "queen_of_diamonds2"
        AppData.masterDeck["queenH"] =  "queen_of_hearts2"
        AppData.masterDeck["queenS"] =  "queen_of_spades2"
        AppData.masterDeck["kingC"] =  "king_of_clubs2"
        AppData.masterDeck["kingD"] =  "king_of_diamonds2"
        AppData.masterDeck["kingH"] =  "king_of_hearts2"
        AppData.masterDeck["kingS"] =  "king_of_spades2"
        AppData.masterDeck["aceC"] =  "ace_of_clubs"
        AppData.masterDeck["aceD"] =  "ace_of_diamonds"
        AppData.masterDeck["aceH"] =  "ace_of_hearts"
        AppData.masterDeck["aceS"] =  "ace_of_spades"
        print(AppData.masterDeck)
    }
    

    @IBAction func playButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "toGame", sender: self)
    }
    
    
}
