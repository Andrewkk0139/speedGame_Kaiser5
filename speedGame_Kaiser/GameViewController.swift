//
//  GameViewController.swift
//  speedGame_Kaiser
//
//  Created by ANDREW KAISER on 12/7/23.
//
//NOTES- FIX IMAGEVIEWS NOT ALIGNING WITH LISTS. STORE NEW VAL"S
import UIKit
class GameViewController: UIViewController {
    
    @IBOutlet weak var riotLableOutlet: UILabel!
    var currentUser5: [String:String] = [:]
    var currrent: [String:String] = [:]
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
    // image view current files
    var oneCurrentFile = String(Array(AppData.userDeck.values)[0])
    var twoCurrentFile = String(Array(AppData.userDeck.values)[1])
    var threeCurrentFile = String(Array(AppData.userDeck.values)[2])
    var fourCurrentFile = String(Array(AppData.userDeck.values)[3])
    var fiveCurrentFile = String(Array(AppData.userDeck.values)[4])
    // notes
    var alert: UIAlertController!
    var okAction: UIAlertAction!
    var riotAction: UIAlertAction!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        riotLableOutlet.isHidden = true
        alert = UIAlertController(title: "NO!", message: "CANNOT DO THAT", preferredStyle: .alert)
        okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        riotAction = UIAlertAction(title: "riot", style: .destructive, handler: { alert in
            self.riotLableOutlet.text = "You are going down..."
            self.riotLableOutlet.isHidden = false
        })
        alert.addAction(okAction)
        alert.addAction(riotAction)
            line1Outlet.image = UIImage(named: "line")
            line2Outlet.image = UIImage(named: "line")
            compImageOutlet.image = UIImage(named: "evilComp")
            deckImageOutlet.image = UIImage(named: "backOfCard")
            let value = Array(AppData.playingPile.values)[0]
            currentPileImageOutlet.image = UIImage(named: value)
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
    
    @IBAction func cardImageOneAction(_ sender: Any) {
        checkPlay(Array(AppData.userDeck.keys)[0], Array(AppData.playingPile.keys)[0], 1)
    }
    
    @IBAction func cardImageTwoAction(_ sender: Any) {
        checkPlay(Array(AppData.userDeck.keys)[1], Array(AppData.playingPile.keys)[0], 2)
    }
    
    @IBAction func cardImageThreeAction(_ sender: Any) {
        checkPlay(Array(AppData.userDeck.keys)[2], Array(AppData.playingPile.keys)[0], 3)
    }
    
    @IBAction func cardImageFourAction(_ sender: Any) {
        checkPlay(Array(AppData.userDeck.keys)[3], Array(AppData.playingPile.keys)[0], 4)
    }
    
    @IBAction func cardImageFiveAction(_ sender: Any) {
        checkPlay(Array(AppData.userDeck.keys)[4], Array(AppData.playingPile.keys)[0], 5)
    }
    
    
    func checkPlay(_ playingCardName: String,_ currentPlacedCard: String,_ selectedImageNum: Int) {
        print("This is the played card:\(playingCardName) and this is the current card placed:\(currentPlacedCard)")
        let playingCardNum = Int(getCardNums(playingCardName))!
        let currentPlacedCardNum = Int(getCardNums(currentPlacedCard))!
        print("This is the playingCardNum:\(playingCardNum) and this is the currentCardNum:\(currentPlacedCardNum)")
        if ((playingCardNum > currentPlacedCardNum && playingCardNum < currentPlacedCardNum + 2) || (playingCardNum < currentPlacedCardNum && playingCardNum > currentPlacedCardNum - 2) || ((currentPlacedCardNum == 12 || currentPlacedCardNum == 13 || currentPlacedCardNum == 1) && (playingCardNum == 13 || playingCardNum == 1)) || playingCardNum == currentPlacedCardNum) {
            // play is valid
            print("YES!!! you can do that")
            // add it to the playing pile
            if let getValue = AppData.userDeck[playingCardName]{
                print(getValue)
                currrent[playingCardName] = "\(getValue)"
                currentPileImageOutlet.image = UIImage(named: "\(getValue)")
            }
           //Loading new card image
           // if AppData.userDeck.count > 5 {
//                 user had more than 5 cards, load next card
            AppData.userDeck[playingCardName] = nil
            for pls in 0...5 {
                switch pls {
                case 1:
                    let values = Array(AppData.userDeck.values)[0]
                    oneUserImageOutlet.image = UIImage(named: values)
                case 2:
                    let values = Array(AppData.userDeck.values)[1]
                    twoUserImageOutlet.image = UIImage(named: values)
                case 3:
                    let values = Array(AppData.userDeck.values)[2]
                    thirdUserImageOutlet.image = UIImage(named: values)
                case 4:
                    let values = Array(AppData.userDeck.values)[3]
                    forthUserImageOutlet.image = UIImage(named: values)
                case 5:
                    let values = Array(AppData.userDeck.values)[4]
                    fifthUserImageOutlet.image = UIImage(named: values)
                default:
                    print("if i see this im scared")
                }
            }
                
                print("value removed, userDeck: \(AppData.userDeck)")
                print("currentPlaying, pile: \(AppData.playingPile)")
        } else {
            // action is invalid
            present(alert, animated: true)
        }
    }
    
    @IBAction func noActionAction(_ sender: Any) {
        let key = Array(AppData.leftoverDeck.keys)[0]
        let value = Array(AppData.leftoverDeck.values)[0]
        AppData.playingPile[key] = value
        currentPileImageOutlet.image = UIImage(named: value)
        AppData.leftoverDeck[key] = nil
        print("currentPlaying, pile: \(AppData.playingPile)")

    }
    
    func getCardNums(_ s1: String) -> String{
      let num = s1.index(s1.startIndex, offsetBy: s1.count - 2)
      let start = s1.index(s1.startIndex, offsetBy: 0)
      return (String(s1[start...num]))
    }
}


