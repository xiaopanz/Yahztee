
import UIKit
let okay = "👍"
let cancel = "👎"

class languageView: UIViewController {
    
    
    @IBOutlet weak var englishBtn: UIButton!
    @IBOutlet weak var japaneseBtn: UIButton!
    @IBOutlet weak var chineseBtn: UIButton!
    
    @IBAction func japanese(_ sender: Any) {
        if L102Language.currentAppleLanguage() == "en" {
            let refreshAlert = UIAlertController(title: "Restart", message: "Are you sure? the app will restart and all data will be lost.", preferredStyle: UIAlertController.Style.alert)
            refreshAlert.addAction(UIAlertAction(title: okay, style: .default, handler: { (action: UIAlertAction!) in
                L102Language.setAppleLAnguageTo(lang: "ja")
                exit(0)
            }))
            refreshAlert.addAction(UIAlertAction(title: cancel, style: .cancel, handler: { (action: UIAlertAction!) in
            }))
            
            present(refreshAlert, animated: true, completion: nil)
            
        }
            
        else if L102Language.currentAppleLanguage() == "ja"{
            let refreshAlert = UIAlertController(title: "エラー", message: "言語はすでに英語です", preferredStyle: UIAlertController.Style.alert)
            refreshAlert.addAction(UIAlertAction(title: okay, style: .default, handler: { (action: UIAlertAction!) in
            }))
            
            present(refreshAlert, animated: true, completion: nil)
            
            
        }
            
        else if L102Language.currentAppleLanguage() == "zh-Hans"{
            let refreshAlert = UIAlertController(title: "重新开始", message: "你确定吗？应用程序将重新启动，所有数据都将丢失。", preferredStyle: UIAlertController.Style.alert)
            refreshAlert.addAction(UIAlertAction(title: okay, style: .default, handler: { (action: UIAlertAction!) in
                L102Language.setAppleLAnguageTo(lang: "ja")
                exit(0)
            }))
            refreshAlert.addAction(UIAlertAction(title: cancel, style: .cancel, handler: { (action: UIAlertAction!) in
            }))
            present(refreshAlert, animated: true, completion: nil)
            
            
        }
    }
    
    @IBAction func chinese(_ sender: Any) {
        if L102Language.currentAppleLanguage() == "en" {
            let refreshAlert = UIAlertController(title: "Restart", message: "Are you sure? the app will restart and all data will be lost.", preferredStyle: UIAlertController.Style.alert)
            refreshAlert.addAction(UIAlertAction(title: okay, style: .default, handler: { (action: UIAlertAction!) in
                L102Language.setAppleLAnguageTo(lang: "zh-Hans")
                exit(0)
            }))
            refreshAlert.addAction(UIAlertAction(title: cancel, style: .cancel, handler: { (action: UIAlertAction!) in
            }))
            
            present(refreshAlert, animated: true, completion: nil)
            
        }
            
        else if L102Language.currentAppleLanguage() == "ja"{
            let refreshAlert = UIAlertController(title: "再起動", message: "本気ですか？アプリが再起動され、すべてのデータが失われます。", preferredStyle: UIAlertController.Style.alert)
            refreshAlert.addAction(UIAlertAction(title: okay, style: .default, handler: { (action: UIAlertAction!) in
                L102Language.setAppleLAnguageTo(lang: "zh-Hans")
                exit(0)
            }))
            refreshAlert.addAction(UIAlertAction(title: cancel, style: .cancel, handler: { (action: UIAlertAction!) in
            }))
            
            present(refreshAlert, animated: true, completion: nil)
            
            
        }
            
        else if L102Language.currentAppleLanguage() == "zh-Hans"{
            let refreshAlert = UIAlertController(title: "エラー", message: "言語はすでに日本語です", preferredStyle: UIAlertController.Style.alert)
            refreshAlert.addAction(UIAlertAction(title: okay, style: .default, handler: { (action: UIAlertAction!) in
            }))
            present(refreshAlert, animated: true, completion: nil)
            
            
        }
    
    }
    
    @IBAction func english(_ sender: Any) {
        if L102Language.currentAppleLanguage() == "en" {
            let refreshAlert = UIAlertController(title: "Error", message: "The language is already english", preferredStyle: UIAlertController.Style.alert)
            refreshAlert.addAction(UIAlertAction(title: okay, style: .default, handler: { (action: UIAlertAction!) in
            }))
            present(refreshAlert, animated: true, completion: nil)
        }
            
        else if L102Language.currentAppleLanguage() == "ja"{
            let refreshAlert = UIAlertController(title: "再起動", message: "本気ですか？アプリが再起動され、すべてのデータが失われます。", preferredStyle: UIAlertController.Style.alert)
            refreshAlert.addAction(UIAlertAction(title: okay, style: .default, handler: { (action: UIAlertAction!) in
                L102Language.setAppleLAnguageTo(lang: "en")
                exit(0)
            }))
            refreshAlert.addAction(UIAlertAction(title: cancel, style: .cancel, handler: { (action: UIAlertAction!) in
            }))
            
            present(refreshAlert, animated: true, completion: nil)
            
            
        }
            
        else if L102Language.currentAppleLanguage() == "zh-Hans"{
            let refreshAlert = UIAlertController(title: "重新开始", message: "你确定吗？应用程序将重新启动，所有数据都将丢失。", preferredStyle: UIAlertController.Style.alert)
            refreshAlert.addAction(UIAlertAction(title: okay, style: .default, handler: { (action: UIAlertAction!) in
                L102Language.setAppleLAnguageTo(lang: "en")
                exit(0)
            }))
            refreshAlert.addAction(UIAlertAction(title: cancel, style: .cancel, handler: { (action: UIAlertAction!) in
            }))
            
            present(refreshAlert, animated: true, completion: nil)
            
            
    
            
        }
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
