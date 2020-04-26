

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

var isGameViewRunning = 0

class mainMenuView: UIViewController { //This class represents the main menu view controller
    var settings2 = settingsView()
    
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var settingsBtn: UIButton!
    
    @IBAction func playBtn( sender: Any) { //main menu play action button, points to gameSetupView controller
//        performSegue(withIdentifier: "mainToSetup", sender: self)
    }
    @IBAction func settingsBtn( sender: Any) { //main menu settings action button, points to settingsView controller
        if let btn = settings2.returnToGameBtn {
            btn.isHidden = true
        }
//        performSegue(withIdentifier: "mainToSettings", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isGameViewRunning = 0
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
