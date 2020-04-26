

import UIKit
var numPlayersGlobal = 0;
var numGamesGlobal = 0;

class gameSetupView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    //declare num players and games
    var numPlayersSelected: String!
    var numGamesSelected: String!
    var canContinute = false
    let numbers = [1, 2, 3, 4, 5, 6]
    let numbers2 = [1, 2, 3, 4, 5, 6]
    var numberOfPlayers = 0
    var numberOfGames = 0
    //created outlets for labels
    @IBOutlet weak var numPlayersLbl: UILabel!
    @IBOutlet weak var numGamesLbl: UILabel!
    @IBOutlet weak var numPlayers: UIPickerView!
    @IBOutlet weak var numGames: UIPickerView!
    // select number of players
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == numPlayers{
            return "\(numbers[row])"
        }
        else if pickerView == numGames{
            return "\(numbers2[row])"
        }
        return ""
    }
    //select num of games
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == numPlayers{
            return numbers.count
        }
        else if pickerView == numGames{
            return numbers2.count
        }
        return 0
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == numPlayers{
            numPlayersLbl.text = "\(numbers[row])"
            numPlayersGlobal = numbers[row]
        }
        else if pickerView == numGames{
            numGamesLbl.text = "\(numbers2[row])"
            numGamesGlobal = numbers[row]
        }
    }
    
    
    // only allow user to advance if player and games are allowed values
    func playerAndGameValid(){
        if numPlayersLbl.text == "6" && numGamesLbl.text == "1"{
            canContinute = true
        }
        else if numPlayersLbl.text == "5" && numGamesLbl.text == "1"{
            canContinute = true
        }
        else if numPlayersLbl.text == "4" && numGamesLbl.text == "1"{
            canContinute = true
        }
        else if numPlayersLbl.text == "3" && numGamesLbl.text == "1"{
            canContinute = true
        }
        else if numPlayersLbl.text == "2" && numGamesLbl.text == "1"{
            canContinute = true
        }
        else if numPlayersLbl.text == "1" && numGamesLbl.text == "1"{
            canContinute = true
        }
        else if numPlayersLbl.text == "3" && numGamesLbl.text == "2"{
            canContinute = true
        }
        else if numPlayersLbl.text == "2" && numGamesLbl.text == "2"{
            canContinute = true
        }
        else if numPlayersLbl.text == "2" && numGamesLbl.text == "3"{
            canContinute = true
        }
        else if numPlayersLbl.text == "1" && numGamesLbl.text == "3"{
            canContinute = true
        }
        else if numPlayersLbl.text == "1" && numGamesLbl.text == "4"{
            canContinute = true
        }
        else if numPlayersLbl.text == "1" && numGamesLbl.text == "5"{
            canContinute = true
        }
        else if numPlayersLbl.text == "1" && numGamesLbl.text == "6"{
            canContinute = true
        }
        else if numPlayersLbl.text == "1" && numGamesLbl.text == "2"{
            canContinute = true
        }
    }
    
    @IBOutlet weak var playBtn2: UIButton!
    @IBAction func playBtn2(_ sender: Any) {
        //show error if not a valid num of players and games
        playerAndGameValid()
        if canContinute == false {
            let refreshAlert = UIAlertController(title: "Error", message: "Their can only be a total of 6 games played out of all players. try again", preferredStyle: UIAlertController.Style.alert)
            refreshAlert.addAction(UIAlertAction(title: "Try again", style: .default, handler: { (action: UIAlertAction!) in
            }))
            present(refreshAlert, animated: true, completion: nil)
        }
        else {
            UserDefaults.standard.set(numbers[numPlayers.selectedRow(inComponent: 0)], forKey: "players")
            UserDefaults.standard.set(numbers2[numGames.selectedRow(inComponent: 0)], forKey: "games")
            self.performSegue(withIdentifier: "setupToGame", sender: self)
            
        }
    }
    
    // view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.numPlayers.delegate = self;
        self.numPlayers.dataSource = self;
        self.numGames.delegate = self;
        self.numGames.dataSource = self;
        let players = UserDefaults.standard.integer(forKey: "players")
        let games = UserDefaults.standard.integer(forKey: "games")
        numPlayers.selectRow(players - 1, inComponent: 0, animated: false)
        numGames.selectRow(games - 1, inComponent: 0, animated: false)
        numGamesLbl.text = "\(players)"
        numPlayersLbl.text = "\(games)"



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
