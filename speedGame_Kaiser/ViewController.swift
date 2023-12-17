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
    static var userName: String?
    static var win = 0
    static var loss = 0
}

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userNameFieldOutlt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userNameFieldOutlt.delegate = self
    }
    override func viewDidAppear(_ animated: Bool) {
        //claring all decks
        for i in 0..<(AppData.masterDeck.count/2) {
            let key = Array(AppData.masterDeck.keys)[i]
            print(key)
            AppData.masterDeck[key] = nil
        }
        for i in 0..<(AppData.userDeck.count/2){
            let key = Array(AppData.userDeck.keys)[i]
            AppData.userDeck[key] = nil
        }
        for i in 0..<(AppData.aiDeck.count/2){
            let key = Array(AppData.aiDeck.keys)[i]
            AppData.aiDeck[key] = nil
        }
        for i in 0..<(AppData.leftoverDeck.count/2){
            let key = Array(AppData.leftoverDeck.keys)[i]
            AppData.leftoverDeck[key] = nil
        }
        for i in 0..<(AppData.playingPile.count/2){
            let key = Array(AppData.playingPile.keys)[i]
            AppData.playingPile[key] = nil
        }
        // filling dictionaries
        for i in 2...10 {
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
        for i in 0...19{
            let key = Array(AppData.masterDeck.keys)[i]
            let value = Array(AppData.masterDeck.values)[i]
            AppData.aiDeck[key] = value
        }
        for i in 20...39{
            let key = Array(AppData.masterDeck.keys)[i]
            let value = Array(AppData.masterDeck.values)[i]
            AppData.userDeck[key] = value
        }
        for i in 40...50 {
            let key = Array(AppData.masterDeck.keys)[i]
            let value = Array(AppData.masterDeck.values)[i]
            AppData.leftoverDeck[key] = value
        }
        let key = Array(AppData.masterDeck.keys)[51]
        let value = Array(AppData.masterDeck.values)[51]
        AppData.playingPile[key] = value
        print("THIS IS THE AI DECK: \(AppData.aiDeck)")
        print("THIS IS THE USER DECK: \(AppData.userDeck)")
        print("This is total count of masterDeck: \(AppData.masterDeck.count)")

    }
    

    @IBAction func playButtonAction(_ sender: Any) {
        AppData.userName = userNameFieldOutlt.text
        performSegue(withIdentifier: "toGame", sender: self)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
}
