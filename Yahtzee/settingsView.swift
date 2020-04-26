

import UIKit
var isntMuted = true
var gameView1 = gameView()

class settingsView: UIViewController {
    @IBOutlet weak var howToPlayBtn: UIButton!
    @IBAction func howToPlayPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "settingsToHowToPlay", sender: self)
    }
    @IBAction func languageBtn(_ sender: Any) {
        performSegue(withIdentifier: "settingsToLanguage", sender: self)
    }
    
    @IBAction func muteBttn(_ sender: Any) {
        if isntMuted {
            backgroundAudio.sharedHelper.mute()
            if L102Language.currentAppleLanguage() == "en" {
                muteBttn.setTitle("Unmute", for: [])
            }
            else if L102Language.currentAppleLanguage() == "zh-Hans" {
                muteBttn.setTitle("取消静音", for: [])
            }
            else if L102Language.currentAppleLanguage() == "ja" {
                muteBttn.setTitle("ミュートを解除する", for: [])
                
            }
            isntMuted = false
        }
        else if isntMuted == false {
            backgroundAudio.sharedHelper.unMute()
            if L102Language.currentAppleLanguage() == "en" {
                muteBttn.setTitle("Mute", for: [])
            }
            else if L102Language.currentAppleLanguage() == "zh-Hans" {
                muteBttn.setTitle("静音", for: [])
            }
            else if L102Language.currentAppleLanguage() == "ja" {
                muteBttn.setTitle("ミュート", for: [])
                
            }
            isntMuted = true
        }
    }
    
    
    @IBOutlet weak var muteBttn: UIButton!
    @IBOutlet weak var returnToGameBtn: UIButton!
    @IBOutlet weak var restartBtn: UIButton!
    @IBOutlet weak var quitBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBAction func settingsToGame(_ sender: Any) {
        dismiss(animated: true, completion: nil)
//        performSegue(withIdentifier: "settingsToGame", sender: self)
    }
    @IBAction func restartPressed(_ sender: Any) {
        performSegue(withIdentifier: "restartToGame", sender: self)
    }
    @IBAction func quitPressed(_ sender: Any) {
        performSegue(withIdentifier: "quitToMain", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(isGameViewRunning == 0) {
            if let btn = returnToGameBtn {
                btn.isHidden = true
            }
            if let btn = quitBtn {
                btn.isHidden = true
            }
            if let btn = restartBtn {
                btn.isHidden = true
            }
            if let btn = backBtn {
                btn.isHidden = false
                //btn.frame = CGRect(x: 444, y: 60, width: 198, height: 90)
            }
        }
        else if (isGameViewRunning == 1) {
            if let btn = returnToGameBtn {
                btn.isHidden = false
            }
            if let btn = quitBtn {
                btn.isHidden = false
            }
            if let btn = restartBtn {
                btn.isHidden = false
            }
            if let btn = backBtn {
                btn.isHidden = true
            }
        }
    }
}

