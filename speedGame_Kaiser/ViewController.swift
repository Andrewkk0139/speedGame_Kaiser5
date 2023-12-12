//
//  ViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/6/23.
//

import UIKit

public class AppData {
    static var masterDeck: [String:String] = [:]
    static var userDeck: [String:String] = [:]
    static var aiDeck: [String:String] = [:]
    static var leftoverDeck: [String:String] = [:]
    static var playingPile: [String:String] = [:]

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
        AppData.masterDeck["11c"] =  "jack_of_clubs2"
        AppData.masterDeck["11d"] =  "jack_of_diamonds2"
        AppData.masterDeck["11h"] =  "jack_of_hearts2"
        AppData.masterDeck["11s"] =  "jack_of_spades2"
        AppData.masterDeck["12c"] =  "queen_of_clubs2"
        AppData.masterDeck["12d"] =  "queen_of_diamonds2"
        AppData.masterDeck["12h"] =  "queen_of_hearts2"
        AppData.masterDeck["12s"] =  "queen_of_spades2"
        AppData.masterDeck["13c"] =  "king_of_clubs2"
        AppData.masterDeck["13d"] =  "king_of_diamonds2"
        AppData.masterDeck["13h"] =  "king_of_hearts2"
        AppData.masterDeck["13s"] =  "king_of_spades2"
        AppData.masterDeck["1c"] =  "ace_of_clubs"
        AppData.masterDeck["1d"] =  "ace_of_diamonds"
        AppData.masterDeck["1h"] =  "ace_of_hearts"
        AppData.masterDeck["1s"] =  "ace_of_spades"
        print("THIS IS THE MASTER DECK: \(AppData.masterDeck)")
        let aiRange = 0...19
        for i in aiRange{
            let key = Array(AppData.masterDeck.keys)[i]
            let value = Array(AppData.masterDeck.values)[i]
            AppData.aiDeck[key] = value
        }
        let playerRange = 20...39
        for i in playerRange{
            let key = Array(AppData.masterDeck.keys)[i]
            let value = Array(AppData.masterDeck.values)[i]
            AppData.userDeck[key] = value
        }
        let deckRange = 40...50
        for i in deckRange {
            let key = Array(AppData.masterDeck.keys)[i]
            let value = Array(AppData.masterDeck.values)[i]
            AppData.leftoverDeck[key] = value
        }
        let key = Array(AppData.masterDeck.keys)[51]
        let value = Array(AppData.masterDeck.values)[51]
        AppData.playingPile[key] = value
        print("THIS IS THE AI DECK: \(AppData.aiDeck)")
        print("THIS IS THE USER DECK: \(AppData.userDeck)")
        
    }
    

    @IBAction func playButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "toGame", sender: self)
    }
    
    
}
