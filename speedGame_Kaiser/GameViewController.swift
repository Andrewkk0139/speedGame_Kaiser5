//
//  GameViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/7/23.
//

import UIKit

class GameViewController: UIViewController {
    
    var currentUser5: [String:String] = [:]
    @IBOutlet weak var line1Outlet: UIImageView!
    @IBOutlet weak var line2Outlet: UIImageView!
    // USER CARD IMAGE VIEWS
    @IBOutlet weak var oneUserImageOutlet: UIImageView!
    @IBOutlet weak var twoUserImageOutlet: UIImageView!
    @IBOutlet weak var thirdUserImageOutlet: UIImageView!
    @IBOutlet weak var forthUserImageOutlet: UIImageView!
    @IBOutlet weak var fifthUserImageOutlet: UIImageView!
    // Computer Image
    @IBOutlet weak var compImageOutlet: UIImageView!
    // pile and deck Images
    @IBOutlet weak var currentPileImageOutlet: UIImageView!
    @IBOutlet weak var deckImageOutlet: UIImageView!
    //
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
            line1Outlet.image = UIImage(named: "line")
            line2Outlet.image = UIImage(named: "line")
            compImageOutlet.image = UIImage(named: "evilComp")
            deckImageOutlet.image = UIImage(named: "backOfCard")
        
        //setting up user card images
        let loadFirstFiveUserRange = 0...4
        for i in loadFirstFiveUserRange{
            let key = Array(AppData.userDeck.keys)[i]
            let value = Array(AppData.userDeck.values)[i]
            currentUser5[key] = value
            switch i {
            case 0:
               oneUserImageOutlet.image = UIImage(named: value)
            case 1:
               twoUserImageOutlet.image = UIImage(named: value)
            case 2:
               thirdUserImageOutlet.image = UIImage(named: value)
            case 3:
               forthUserImageOutlet.image = UIImage(named: value)
            case 4:
               fifthUserImageOutlet.image = UIImage(named: value)
            default:
                print("i hope i don't see this")
            }
            
        }
    }
    
    @IBAction func devButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "toWin", sender: self)
    }
    

}
