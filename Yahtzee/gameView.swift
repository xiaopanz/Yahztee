

import UIKit


class gameView: UIViewController {
    var scoreboard1 = scoreboard()
    var numGamesLabel = 1
    var roundNumber = 0
    var numberOfPlayerLeft = UserDefaults.standard.integer(forKey: "players")
    var numberOfGameLeft = UserDefaults.standard.integer(forKey: "games")
    var playerList = [player]()
    var yahztee = false
    var settings1 = settingsView() //instance of settings view
    //initialize dice
    var randomDice1 : Int?
    var randomDice2 : Int?
    var randomDice3 : Int?
    var randomDice4 : Int?
    var randomDice5 : Int?
    //used to determine the status of each dice, clicked or not clicked (highlighted or not highlighted)
    var isClicked1 = true
    var isClicked2 = true
    var isClicked3 = true
    var isClicked4 = true
    var isClicked5 = true
    var counter: Int = 0
    //initilalize scoreboard buttons to be set to off
    var scoreboardClicked1 = false
    var scoreboardClicked2 = false
    var scoreboardClicked3 = false
    var scoreboardClicked4 = false
    var scoreboardClicked5 = false
    var scoreboardClicked6 = false
    var scoreboardClicked7 = false
    var scoreboardClicked8 = false
    var scoreboardClicked9 = false
    var scoreboardClicked10 = false
    var scoreboardClicked11 = false
    var scoreboardClicked12 = false
    var scoreboardClicked13 = false
    var scoreboardClicked14 = false
    
    //used to find the true value of the dice in getter methods
    var trueDiceNum1: Int = 0
    var trueDiceNum2: Int = 0
    var trueDiceNum3: Int = 0
    var trueDiceNum4: Int = 0
    var trueDiceNum5: Int = 0
    //array of image names for randomization of dice
    var diceImages: [String] = ["dice_1.png", "dice_2.png" , "dice_3.png" , "dice_4.png", "dice_5.png", "dice_6.png"]
    var diceImages2: [String] = ["dice_1_clicked.png", "dice_2_clicked.png" , "dice_3_clicked.png" , "dice_4_clicked.png", "dice_5_clicked.png", "dice_6_clicked.png"]
    var numArray: [Int] = []
    var totalScore: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dice_1.isEnabled = false //disable dice
        dice_2.isEnabled = false
        dice_3.isEnabled = false
        dice_4.isEnabled = false
        dice_5.isEnabled = false
        isGameViewRunning = 1
        self.gameLbl.text = "Game: " + String(numGamesLabel)
        onesOutlet.isEnabled = false //disable outlets
        twosOutlet.isEnabled = false
        threesOutlet.isEnabled = false
        foursOutlet.isEnabled = false
        fivesOutlet.isEnabled = false
        sixesOutlet.isEnabled = false
        threeXOutlet.isEnabled = false
        fourXOutlet.isEnabled = false
        fullHouseOutlet.isEnabled = false
        smallStraightOutlet.isEnabled = false
        largeStraightOutlet.isEnabled = false
        chanceOutlet.isEnabled = false
        yahtzeeOutlet.isEnabled = false
        tinyStraightOutlet.isEnabled = false
        
        
    }
    
    func getDiceNum1() -> Int{ //returns the value of dice1 for each turn
        if randomDice1! == 0{
            trueDiceNum1 = 1
        }
        else if randomDice1! == 1{
            trueDiceNum1 = 2
        }
        else if randomDice1! == 2{
            trueDiceNum1 = 3
        }
        else if randomDice1! == 3{
            trueDiceNum1 = 4
        }
        else if randomDice1! == 4{
            trueDiceNum1 = 5
        }
        else if randomDice1! == 5{
            trueDiceNum1 = 6
        }
        return trueDiceNum1
    }
    func getDiceNum2() -> Int{ //returns the value of dice2 for each turn
        if randomDice2! == 0{
            trueDiceNum2 = 1
        }
        else if randomDice2! == 1{
            trueDiceNum2 = 2
        }
        else if randomDice2! == 2{
            trueDiceNum2 = 3
        }
        else if randomDice2! == 3{
            trueDiceNum2 = 4
        }
        else if randomDice2! == 4{
            trueDiceNum2 = 5
        }
        else if randomDice2! == 5{
            trueDiceNum2 = 6
        }
        return trueDiceNum2
    }
    func getDiceNum3() -> Int{ //returns the value of dice3 for each turn
        if randomDice3! == 0{
            trueDiceNum3 = 1
        }
        else if randomDice3! == 1{
            trueDiceNum3 = 2
        }
        else if randomDice3! == 2{
            trueDiceNum3 = 3
        }
        else if randomDice3! == 3{
            trueDiceNum3 = 4
        }
        else if randomDice3! == 4{
            trueDiceNum3 = 5
        }
        else if randomDice3! == 5{
            trueDiceNum3 = 6
        }
        return trueDiceNum3
    }
    func getDiceNum4() -> Int{ //returns the value of dice4 for each turn
        if randomDice4! == 0{
            trueDiceNum4 = 1
        }
        else if randomDice4! == 1{
            trueDiceNum4 = 2
        }
        else if randomDice4! == 2{
            trueDiceNum4 = 3
        }
        else if randomDice4! == 3{
            trueDiceNum4 = 4
        }
        else if randomDice4! == 4{
            trueDiceNum4 = 5
        }
        else if randomDice4! == 5{
            trueDiceNum4 = 6
        }
        return trueDiceNum4
    }
    func getDiceNum5() -> Int{ //returns the value of dice5 for each turn
        if randomDice5! == 0{
            trueDiceNum5 = 1
        }
        else if randomDice5! == 1{
            trueDiceNum5 = 2
        }
        else if randomDice5! == 2{
            trueDiceNum5 = 3
        }
        else if randomDice5! == 3{
            trueDiceNum5 = 4
        }
        else if randomDice5! == 4{
            trueDiceNum5 = 5
        }
        else if randomDice5! == 5{
            trueDiceNum5 = 6
        }
        return trueDiceNum5
    }
    
    @IBAction func dice3Btn(_ sender: Any) { //Changes the image of the dice3 to highlighted when clicked, then changes it back if user decides to unclick
        if isClicked3{
            if randomDice3! == 0 {
                dice_3.setImage(UIImage(named: diceImages2[0]), for: .normal)
            }
            else if randomDice3! == 1 {
                dice_3.setImage(UIImage(named: diceImages2[1]), for: .normal)
            }
            else if randomDice3! == 2 {
                dice_3.setImage(UIImage(named: diceImages2[2]), for: .normal)
            }
            else if randomDice3! == 3 {
                dice_3.setImage(UIImage(named: diceImages2[3]), for: .normal)
            }
            else if randomDice3! == 4 {
                dice_3.setImage(UIImage(named: diceImages2[4]), for: .normal)
            }
            else if randomDice3! == 5 {
                dice_3.setImage(UIImage(named: diceImages2[5]), for: .normal)
            }
            isClicked3 = false
        }
        else {
            if randomDice3! == 0 {
                dice_3.setImage(UIImage(named: diceImages[0]), for: .normal)
            }
            else if randomDice3! == 1 {
                dice_3.setImage(UIImage(named: diceImages[1]), for: .normal)
            }
            else if randomDice3! == 2 {
                dice_3.setImage(UIImage(named: diceImages[2]), for: .normal)
            }
            else if randomDice3! == 3 {
                dice_3.setImage(UIImage(named: diceImages[3]), for: .normal)
            }
            else if randomDice3! == 4 {
                dice_3.setImage(UIImage(named: diceImages[4]), for: .normal)
            }
            else if randomDice3! == 5 {
                dice_3.setImage(UIImage(named: diceImages[5]), for: .normal)
            }
            isClicked3 = true
            
        }
    }
    
    @IBAction func dice5Btn(_ sender: Any) { //Changes the image of the dice5 to highlighted when clicked, then changes it back if user decides to unclick
        if isClicked5{
            if randomDice5! == 0 {
                dice_5.setImage(UIImage(named: diceImages2[0]), for: .normal)
            }
            else if randomDice5! == 1 {
                dice_5.setImage(UIImage(named: diceImages2[1]), for: .normal)
            }
            else if randomDice5! == 2 {
                dice_5.setImage(UIImage(named: diceImages2[2]), for: .normal)
            }
            else if randomDice5! == 3 {
                dice_5.setImage(UIImage(named: diceImages2[3]), for: .normal)
            }
            else if randomDice5! == 4 {
                dice_5.setImage(UIImage(named: diceImages2[4]), for: .normal)
            }
            else if randomDice5! == 5 {
                dice_5.setImage(UIImage(named: diceImages2[5]), for: .normal)
            }
            isClicked5 = false
        }
        else{
            if randomDice5! == 0 {
                dice_5.setImage(UIImage(named: diceImages[0]), for: .normal)
            }
            else if randomDice5! == 1 {
                dice_5.setImage(UIImage(named: diceImages[1]), for: .normal)
            }
            else if randomDice5! == 2 {
                dice_5.setImage(UIImage(named: diceImages[2]), for: .normal)
            }
            else if randomDice5! == 3 {
                dice_5.setImage(UIImage(named: diceImages[3]), for: .normal)
            }
            else if randomDice5! == 4 {
                dice_5.setImage(UIImage(named: diceImages[4]), for: .normal)
            }
            else if randomDice5! == 5 {
                dice_5.setImage(UIImage(named: diceImages[5]), for: .normal)
            }
            isClicked5 = true
        }
        
    }
    @IBAction func dice2Btn(_ sender: Any) { //Changes the image of the dice2 to highlighted when clicked, then changes it back if user decides to unclick
        if isClicked2{
            if randomDice2! == 0 {
                dice_2.setImage(UIImage(named: diceImages2[0]), for: .normal)
            }
            else if randomDice2! == 1 {
                dice_2.setImage(UIImage(named: diceImages2[1]), for: .normal)
            }
            else if randomDice2! == 2 {
                dice_2.setImage(UIImage(named: diceImages2[2]), for: .normal)
            }
            else if randomDice2! == 3 {
                dice_2.setImage(UIImage(named: diceImages2[3]), for: .normal)
            }
            else if randomDice2! == 4 {
                dice_2.setImage(UIImage(named: diceImages2[4]), for: .normal)
            }
            else if randomDice2! == 5 {
                dice_2.setImage(UIImage(named: diceImages2[5]), for: .normal)
            }
            isClicked2 = false
        }
        else{
            if randomDice2! == 0 {
                dice_2.setImage(UIImage(named: diceImages[0]), for: .normal)
            }
            else if randomDice2! == 1 {
                dice_2.setImage(UIImage(named: diceImages[1]), for: .normal)
            }
            else if randomDice2! == 2 {
                dice_2.setImage(UIImage(named: diceImages[2]), for: .normal)
            }
            else if randomDice2! == 3 {
                dice_2.setImage(UIImage(named: diceImages[3]), for: .normal)
            }
            else if randomDice2! == 4 {
                dice_2.setImage(UIImage(named: diceImages[4]), for: .normal)
            }
            else if randomDice2! == 5 {
                dice_2.setImage(UIImage(named: diceImages[5]), for: .normal)
            }
            isClicked2 = true
            
        }
    }
    @IBAction func dice4Btn(_ sender: Any) { //Changes the image of the dice4 to highlighted when clicked, then changes it back if user decides to unclick
        if isClicked4{
            
            if randomDice4! == 0 {
                dice_4.setImage(UIImage(named: diceImages2[0]), for: .normal)
            }
            else if randomDice4! == 1 {
                dice_4.setImage(UIImage(named: diceImages2[1]), for: .normal)
            }
            else if randomDice4! == 2 {
                dice_4.setImage(UIImage(named: diceImages2[2]), for: .normal)
            }
            else if randomDice4! == 3 {
                dice_4.setImage(UIImage(named: diceImages2[3]), for: .normal)
            }
            else if randomDice4! == 4 {
                dice_4.setImage(UIImage(named: diceImages2[4]), for: .normal)
            }
            else if randomDice4! == 5 {
                dice_4.setImage(UIImage(named: diceImages2[5]), for: .normal)
            }
            isClicked4 = false
        }
        else{
            if randomDice4! == 0 {
                dice_4.setImage(UIImage(named: diceImages[0]), for: .normal)
            }
            else if randomDice4! == 1 {
                dice_4.setImage(UIImage(named: diceImages[1]), for: .normal)
            }
            else if randomDice4! == 2 {
                dice_4.setImage(UIImage(named: diceImages[2]), for: .normal)
            }
            else if randomDice4! == 3 {
                dice_4.setImage(UIImage(named: diceImages[3]), for: .normal)
            }
            else if randomDice4! == 4 {
                dice_4.setImage(UIImage(named: diceImages[4]), for: .normal)
            }
            else if randomDice4! == 5 {
                dice_4.setImage(UIImage(named: diceImages[5]), for: .normal)
            }
            isClicked4 = true
        }
    }
    @IBAction func dice1Btn(_ sender: Any) { //Changes the image of the dice1 to highlighted when clicked, then changes it back if user decides to unclick
        if isClicked1{
            if randomDice1! == 0 {
                dice_1.setImage(UIImage(named: diceImages2[0]), for: .normal)
            }
            else if randomDice1! == 1 {
                dice_1.setImage(UIImage(named: diceImages2[1]), for: .normal)
            }
            else if randomDice1! == 2 {
                dice_1.setImage(UIImage(named: diceImages2[2]), for: .normal)
            }
            else if randomDice1! == 3 {
                dice_1.setImage(UIImage(named: diceImages2[3]), for: .normal)
            }
            else if randomDice1! == 4 {
                dice_1.setImage(UIImage(named: diceImages2[4]), for: .normal)
            }
            else if randomDice1! == 5 {
                dice_1.setImage(UIImage(named: diceImages2[5]), for: .normal)
            }
            isClicked1 = false
        }
        else{
            if randomDice1! == 0 {
                dice_1.setImage(UIImage(named: diceImages[0]), for: .normal)
            }
            else if randomDice1! == 1 {
                dice_1.setImage(UIImage(named: diceImages[1]), for: .normal)
            }
            else if randomDice1! == 2 {
                dice_1.setImage(UIImage(named: diceImages[2]), for: .normal)
            }
            else if randomDice1! == 3 {
                dice_1.setImage(UIImage(named: diceImages[3]), for: .normal)
            }
            else if randomDice1! == 4 {
                dice_1.setImage(UIImage(named: diceImages[4]), for: .normal)
            }
            else if randomDice1! == 5 {
                dice_1.setImage(UIImage(named: diceImages[5]), for: .normal)
            }
            isClicked1 = true
            
        }
    }
    
    
    @IBAction func cupAction(_ sender: UIButton) { //if the cup is clicked
        dice_1.isEnabled = true //enable dice to be clicked
        dice_2.isEnabled = true
        dice_3.isEnabled = true
        dice_4.isEnabled = true
        dice_5.isEnabled = true
        dice_1.isHidden = false
        dice_2.isHidden = false
        dice_3.isHidden = false
        dice_4.isHidden = false
        dice_5.isHidden = false
        
        if roundNumber < 14 { //check and see how many boxes (what round) have been clicked
            onesOutlet.isEnabled = true //enable scoreboard buttons
            twosOutlet.isEnabled = true
            threesOutlet.isEnabled = true
            foursOutlet.isEnabled = true
            fivesOutlet.isEnabled = true
            sixesOutlet.isEnabled = true
            threeXOutlet.isEnabled = true
            fourXOutlet.isEnabled = true
            fullHouseOutlet.isEnabled = true
            smallStraightOutlet.isEnabled = true
            largeStraightOutlet.isEnabled = true
            chanceOutlet.isEnabled = true
            yahtzeeOutlet.isEnabled = true
            tinyStraightOutlet.isEnabled = true
            
            if scoreboardClicked1 == true { //if scoreboard button is clicked disable the button
                onesOutlet.isEnabled = false
            }
            if  scoreboardClicked2 == true {//if scoreboard button is clicked disable the button
                twosOutlet.isEnabled = false
            }
            if scoreboardClicked3 == true {//if scoreboard button is clicked disable the button
                threesOutlet.isEnabled = false
            }
            if  scoreboardClicked4 == true {
                foursOutlet.isEnabled = false
            }
            if scoreboardClicked5 == true {
                fivesOutlet.isEnabled = false
            }
            if  scoreboardClicked6 == true {
                sixesOutlet.isEnabled = false
            }
            if scoreboardClicked7 == true {
                threeXOutlet.isEnabled = false
            }
            if  scoreboardClicked8 == true {
                fourXOutlet.isEnabled = false
            }
            if scoreboardClicked9 == true {
                fullHouseOutlet.isEnabled = false
            }
            if  scoreboardClicked10 == true {
                smallStraightOutlet.isEnabled = false
            }
            if scoreboardClicked11 == true {
                largeStraightOutlet.isEnabled = false
            }
            if  scoreboardClicked12 == true {
                yahtzeeOutlet.isEnabled = false
            }
            if scoreboardClicked13 == true {
                chanceOutlet.isEnabled = false
            }
            if scoreboardClicked14 == true {
                tinyStraightOutlet.isEnabled = false
            }
            
            if isClicked1 == true { //transforms dice onto table
                self.dice_1.transform = CGAffineTransform.identity
                randomDice1 = Int(arc4random() % UInt32(diceImages.count))
                dice_1.setImage(UIImage(named: diceImages[randomDice1!]), for: .normal)
                UIButton.animate(withDuration: 0.5, animations: { //animate dice1 to move from the cup to the middle of the screen
                    self.dice_1.transform = CGAffineTransform(translationX: -150, y: -150 )
                }, completion : { finished in
                    
                })
                
            }
            if isClicked2 == true { //transforms dice onto table
                self.dice_2.transform = CGAffineTransform.identity
                randomDice2 = Int(arc4random() % UInt32(diceImages.count))
                dice_2.setImage(UIImage(named: diceImages[randomDice2!]), for: .normal)
                UIButton.animate(withDuration: 0.5, animations: { //animate dice2 to move from the cup to the middle of the screen
                    self.dice_2.transform = CGAffineTransform(translationX: -120, y: -90 )
                }, completion : { finished in
                    
                })
            }
            if isClicked3 == true { //transforms dice onto table
                self.dice_3.transform = CGAffineTransform.identity
                randomDice3 = Int(arc4random() % UInt32(diceImages.count))
                dice_3.setImage(UIImage(named: diceImages[randomDice3!]), for: .normal)
                UIButton.animate(withDuration: 0.5, animations: { //animate dice3 to move from the cup to the middle of the screen
                    self.dice_3.transform = CGAffineTransform(translationX:  -210, y: -170 )
                }, completion : { finished in
                    
                })
            }
            if isClicked4 == true { //transforms dice onto table
                self.dice_4.transform = CGAffineTransform.identity
                randomDice4 = Int(arc4random() % UInt32(diceImages.count))
                dice_4.setImage(UIImage(named: diceImages[randomDice4!]), for: .normal)
                UIButton.animate(withDuration: 0.5, animations: { //animate dice4 to move from the cup to the middle of the screen
                    self.dice_4.transform = CGAffineTransform(translationX: -250, y: -110 )
                }, completion : { finished in
                    
                })
            }
            if isClicked5 == true { //transforms dice onto table
                self.dice_5.transform = CGAffineTransform.identity
                randomDice5 = Int(arc4random() % UInt32(diceImages.count))
                dice_5.setImage(UIImage(named: diceImages[randomDice5!]), for: .normal)
                UIButton.animate(withDuration: 0.5, animations: { //animate dice5 to move from the cup to the middle of the screen
                    self.dice_5.transform = CGAffineTransform(translationX: -100, y: -200 )
                }, completion : { finished in
                    
                })
            }
            
            sender.shake() //perform shake animation on cup
            
            
            numArray = [getDiceNum1(),getDiceNum2(),getDiceNum3(),getDiceNum4(),getDiceNum5()]
            
            onesOutlet.setTitle("Ones- ", for: .normal) //set titles and backgrounds so it looks like each button is no longer highlighted
            onesOutlet.backgroundColor = nil
            twosOutlet.setTitle("Twos- ", for: .normal)
            twosOutlet.backgroundColor = nil
            threesOutlet.setTitle("Threes- ", for: .normal)
            threesOutlet.backgroundColor = nil
            foursOutlet.setTitle("Fours- ", for: .normal)
            foursOutlet.backgroundColor = nil
            fivesOutlet.setTitle("Fives- ", for: .normal)
            fivesOutlet.backgroundColor = nil
            sixesOutlet.setTitle("Sixes- ", for: .normal)
            sixesOutlet.backgroundColor = nil
            threeXOutlet.setTitle("3x- ", for: .normal)
            threeXOutlet.backgroundColor = nil
            fourXOutlet.setTitle("4x- ", for: .normal)
            fourXOutlet.backgroundColor = nil
            fullHouseOutlet.setTitle("Full- ", for: .normal)
            fullHouseOutlet.backgroundColor = nil
            smallStraightOutlet.setTitle("Small- ", for: .normal)
            smallStraightOutlet.backgroundColor = nil
            largeStraightOutlet.setTitle("Large- ", for: .normal)
            largeStraightOutlet.backgroundColor = nil
            yahtzeeOutlet.setTitle("Yahtzee ", for: .normal)
            yahtzeeOutlet.backgroundColor = nil
            chanceOutlet.setTitle("Chance ", for: .normal)
            chanceOutlet.backgroundColor = nil
            tinyStraightOutlet.setTitle("Tiny- ", for: .normal)
            tinyStraightOutlet.backgroundColor = nil
            
            
            
            
            
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 1) > 0 && //calculating the score for each box
                onesOutlet.isEnabled{
                onesOutlet.setTitle("Ones " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 1)), for: .normal)
                onesOutlet.backgroundColor = UIColor.yellow
            }
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 2) > 0 && twosOutlet.isEnabled{ //calculating the score for each box
                twosOutlet.setTitle("Twos " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 2)), for: .normal)
                twosOutlet.backgroundColor = UIColor.yellow
            }
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 3) > 0 && threesOutlet.isEnabled{//calculating the score for each box
                threesOutlet.setTitle("Threes " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 3)), for: .normal)
                threesOutlet.backgroundColor = UIColor.yellow
            }
            
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 4) > 0 && foursOutlet.isEnabled{//calculating the score for each box
                foursOutlet.setTitle("Fours " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 4)), for: .normal)
                foursOutlet.backgroundColor = UIColor.yellow
                
            }
            
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 5) > 0 && fivesOutlet.isEnabled{//calculating the score for each box
                fivesOutlet.setTitle("Fives " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 5)), for: .normal)
                fivesOutlet.backgroundColor = UIColor.yellow
                
            }
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 6) > 0 && sixesOutlet.isEnabled{//calculating the score for each box
                sixesOutlet.setTitle("Sixes " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 6)), for: .normal)
                sixesOutlet.backgroundColor = UIColor.yellow
                
            }
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 7) > 0 && threeXOutlet.isEnabled {//calculating the score for each box
                threeXOutlet.setTitle("3x - " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 7)), for: .normal)
                threeXOutlet.backgroundColor = UIColor.yellow
                
            }
            
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 8) > 0  && fourXOutlet.isEnabled{//calculating the score for each box
                fourXOutlet.setTitle("4x - " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 8)), for: .normal)
                fourXOutlet.backgroundColor = UIColor.yellow
                
            }
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 9) > 0  && fullHouseOutlet.isEnabled{//calculating the score for each box
                fullHouseOutlet.setTitle("Full " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 9)), for: .normal)
                fullHouseOutlet.backgroundColor = UIColor.yellow
                
            }
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 10) > 0  && smallStraightOutlet.isEnabled{//calculating the score for each box
                smallStraightOutlet.setTitle("Small " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 10)), for: .normal)
                smallStraightOutlet.backgroundColor = UIColor.yellow
                
            }
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 11) > 0 && largeStraightOutlet.isEnabled{//calculating the score for each box
                largeStraightOutlet.setTitle("Large " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 11)), for: .normal)
                largeStraightOutlet.backgroundColor = UIColor.yellow
                
            }
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 12) > 0 && yahtzeeOutlet.isEnabled{//calculating the score for each box
                yahtzeeOutlet.setTitle("Yahtzee" + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 12)), for: .normal)
                yahtzeeOutlet.backgroundColor = UIColor.yellow
                
            }
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 13) > 0 && chanceOutlet.isEnabled {//calculating the score for each box
                chanceOutlet.setTitle("Chance " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 13)), for: .normal)
                chanceOutlet.backgroundColor = UIColor.yellow
            }
            if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 14) > 0 && tinyStraightOutlet.isEnabled {//calculating the score for each box
                tinyStraightOutlet.setTitle("Tiny- " + String(scoreboard1.calculateScore(rollScore: numArray, boxNumber: 14)), for: .normal)
                tinyStraightOutlet.backgroundColor = UIColor.yellow
            }
            
            
            
            //Use this to allow cup to be clicked only 3 times
            counter = counter + 1
            if (counter == 3) {
                cupOutlet.isEnabled = false
            }
            
        }
        else{
            
            
            roundNumber = 0
            if(numberOfPlayerLeft > 0) //if players still need to play, subtract one before going further
            {
                numberOfPlayerLeft -= 1
            }
            
            let numberOfCurrentPlayer = UserDefaults.standard.integer(forKey: "players") - numberOfPlayerLeft
            
            scoreboard1.calculateTotalScore()
            let onePlayer = player()
            
            onePlayer.addTotalScores(totalScore: scoreboard1.getTotalScore()) //add scores for each player
            onePlayer.setNoOfPlayer(NoOfPlayer: numberOfCurrentPlayer)
            playerList.append(onePlayer) //append a player to the player list
            
            
            scoreboard1.resetTotalScore()
            scoreLabel.text = "Score: "
            if (numberOfPlayerLeft == 0) //number of players left to go for that game is 0, so subtract one from games left
            {
                numberOfGameLeft -= 1
            }
            
            if numberOfPlayerLeft == 0  && UserDefaults.standard.integer(forKey: "players") > 1 //if game is over
            {
                
                var maxScore = -1 //calculating highest scores  between all players
                var NoOfWinner = 0
                for player in playerList
                {
                    if (player.getTotalScores() > maxScore)
                    {
                        maxScore = player.getTotalScores()
                        NoOfWinner = player.getNoOfPlayer()
                    }
                }
                
                let refreshAlert = UIAlertController(title: "Game Over", message: "The winner is " + "player " + (String(NoOfWinner)) + " with a score of " + (String(maxScore)), preferredStyle: UIAlertController.Style.alert) //displays an alert on screen asking the user to restart the game or to quit the game
                refreshAlert.addAction(UIAlertAction(title: "Play again", style: .default, handler: { (action: UIAlertAction!) in
                    
                    self.performSegue(withIdentifier: "gameViewRestart", sender: self)
                    
                }))
                refreshAlert.addAction(UIAlertAction(title: "Quit game", style: .default, handler: { (action: UIAlertAction!) in
                    self.performSegue(withIdentifier: "gameViewQuit", sender: self)
                }))
                present(refreshAlert, animated: true, completion: nil)
            }
            else if numberOfPlayerLeft == 0  && UserDefaults.standard.integer(forKey: "players") == 1 //if theres only one player
            {
                
                let refreshAlert = UIAlertController(title: "Game Over", message: "The total score is " + String(playerList[0].getTotalScores()), preferredStyle: UIAlertController.Style.alert) //displays an alert on screen asking the user to restart the game or to quit the game
                refreshAlert.addAction(UIAlertAction(title: "Play again", style: .default, handler: { (action: UIAlertAction!) in
                    
                    self.performSegue(withIdentifier: "gameViewRestart", sender: self)
                    
                }))
                refreshAlert.addAction(UIAlertAction(title: "Quit game", style: .default, handler: { (action: UIAlertAction!) in
                    self.performSegue(withIdentifier: "gameViewQuit", sender: self)
                }))
                
                
                present(refreshAlert, animated: true, completion: nil)
            }
            
            if numberOfGameLeft > 0
            {
                scoreboardClicked1 = false//reset scoreboard buttons
                scoreboardClicked2 = false
                scoreboardClicked3 = false
                scoreboardClicked4 = false
                scoreboardClicked5 = false
                scoreboardClicked6 = false
                scoreboardClicked7 = false
                scoreboardClicked8 = false
                scoreboardClicked9 = false
                scoreboardClicked10 = false
                scoreboardClicked11 = false
                scoreboardClicked12 = false
                scoreboardClicked13 = false
                scoreboardClicked14 = false
                
                dice_1.isHidden = true //hide all the dice
                dice_2.isHidden = true
                dice_3.isHidden = true
                dice_4.isHidden = true
                dice_5.isHidden = true
                
                if(numberOfPlayerLeft > 0) //change the player lable at the top of the scoreboard
                {
                    playerLbl.text = "Player " + (String(numberOfCurrentPlayer + 1))
                }
            }
            else
            {
                cupOutlet.isEnabled = false //disallow the cup to be clicked again
                dice_1.isHidden = true //hide all the dice
                dice_2.isHidden = true
                dice_3.isHidden = true
                dice_4.isHidden = true
                dice_5.isHidden = true
            }
        }
    }
    
    func endTurn(){ //function that is called when a turn has been completed (scoreboard button has been pressed)
        counter = 0
        dice_1.isHidden = true
        dice_2.isHidden = true //hide all dice
        dice_3.isHidden = true
        dice_4.isHidden = true
        dice_5.isHidden = true
        self.dice_1.transform = CGAffineTransform.identity
        self.dice_2.transform = CGAffineTransform.identity //send dice back to the cup
        self.dice_3.transform = CGAffineTransform.identity
        self.dice_4.transform = CGAffineTransform.identity
        self.dice_5.transform = CGAffineTransform.identity
        isClicked1 = true
        isClicked2 = true
        isClicked3 = true //dice are not clicked
        isClicked4 = true
        isClicked5 = true
        onesOutlet.setTitle("Ones- ", for: .normal) //reset all scoreboard buttons
        onesOutlet.backgroundColor = nil
        twosOutlet.setTitle("Twos- ", for: .normal)
        twosOutlet.backgroundColor = nil
        threesOutlet.setTitle("Threes- ", for: .normal)
        threesOutlet.backgroundColor = nil
        foursOutlet.setTitle("Fours- ", for: .normal)
        foursOutlet.backgroundColor = nil
        fivesOutlet.setTitle("Fives- ", for: .normal)
        fivesOutlet.backgroundColor = nil
        sixesOutlet.setTitle("Sixes- ", for: .normal)
        sixesOutlet.backgroundColor = nil
        threeXOutlet.setTitle("3x- ", for: .normal)
        threeXOutlet.backgroundColor = nil
        fourXOutlet.setTitle("4x- ", for: .normal)
        fourXOutlet.backgroundColor = nil
        fullHouseOutlet.setTitle("Full- ", for: .normal)
        fullHouseOutlet.backgroundColor = nil
        smallStraightOutlet.setTitle("Small- ", for: .normal)
        smallStraightOutlet.backgroundColor = nil
        largeStraightOutlet.setTitle("Large- ", for: .normal)
        largeStraightOutlet.backgroundColor = nil
        yahtzeeOutlet.setTitle("Yahtzee ", for: .normal)
        yahtzeeOutlet.backgroundColor = nil
        chanceOutlet.setTitle("Chance ", for: .normal)
        chanceOutlet.backgroundColor = nil
        tinyStraightOutlet.setTitle("Tiny- ", for: .normal)
        tinyStraightOutlet.backgroundColor = nil

        scoreboard1.addUpperBoxBonus()
        if(scoreboard1.getUpperBoxBonus()) {
            if(BonusLabel.text == "Bonus: ") {
                BonusLabel.text = "Bonus: 35"
            } else if(BonusLabel.text == "Bonus: 100") {
                BonusLabel.text = "Bonus: 135"
            }
        }
        
        
        if scoreboard1.calculateScore(rollScore: numArray, boxNumber: 12) == 50 && yahztee
        {
            scoreboard1.addYahtzeeBonus()
        }
        if(scoreboard1.getYahtzeeBonus()) {
            if(BonusLabel.text == "Bonus: ") {
                BonusLabel.text = "Bonus: 100"
            } else if(BonusLabel.text == "Bonus: 35") {
                BonusLabel.text = "Bonus: 135"
            }
        }
        scoreboard1.calculateTotalScore()
        scoreLabel.text = "Score: " + String(scoreboard1.getTotalScore())
        
        let refreshAlert = UIAlertController(title: "Turn over", message: "Click okay to roll for your next turn!", preferredStyle: UIAlertController.Style.alert) //displays an alert that their turn is over now
        refreshAlert.addAction(UIAlertAction(title: "okay!", style: .default, handler: { (action: UIAlertAction!) in
            
        }))
        
        present(refreshAlert, animated: true, completion: nil)
        onesOutlet.isEnabled = false //hide all scoreboard buttons
        twosOutlet.isEnabled = false
        threesOutlet.isEnabled = false
        foursOutlet.isEnabled = false
        fivesOutlet.isEnabled = false
        sixesOutlet.isEnabled = false
        threeXOutlet.isEnabled = false
        fourXOutlet.isEnabled = false
        fullHouseOutlet.isEnabled = false
        smallStraightOutlet.isEnabled = false
        largeStraightOutlet.isEnabled = false
        chanceOutlet.isEnabled = false
        yahtzeeOutlet.isEnabled = false
        tinyStraightOutlet.isEnabled = false
        cupOutlet.isEnabled = true
        
    }
    
    @IBAction func onesAction(_ sender: Any) { //if the ones button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 1), selectedBox: 1)
       
        scoreboardClicked1 = true
        onesOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
    }
    
    
    @IBAction func twosAction(_ sender: Any) { //if the twos button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 2), selectedBox: 2)
        
        scoreboardClicked2 = true
        twosOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
    }
    
    
    @IBAction func threesAction(_ sender: Any) { //if the threes button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 3), selectedBox: 3)
        
        scoreboardClicked3 = true
        threesOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
    }
    
    @IBAction func foursAction(_ sender: Any) { //if the fours button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 4), selectedBox: 4)
        
        scoreboardClicked4 = true
        foursOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
        
    }
    
    
    @IBAction func fivesAction(_ sender: Any) { //if the fives action is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 5), selectedBox: 5)
        
        scoreboardClicked5 = true
        fivesOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
        
    }
    
    @IBAction func sixesAction(_ sender: Any) { //if the sixes action is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 6), selectedBox: 6)
        
        scoreboardClicked6 = true
        sixesOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
        
    }
    
    @IBAction func threeXAction(_ sender: Any) { //if the three x button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 7), selectedBox: 7)
        
        scoreboardClicked7 = true
        threeXOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
        
    }
    
    @IBAction func fourXAction(_ sender: Any) { //if the four x button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 8), selectedBox: 8)
        
        scoreboardClicked8 = true
        fourXOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
        
    }
    
    @IBAction func fullHouseAction(_ sender: Any) { //if full house button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 9), selectedBox: 9)
        
        scoreboardClicked9 = true
        fullHouseOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
        
    }
    @IBAction func tinyStraightAction(_ sender: Any) {
        //if the small straight button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 14), selectedBox: 14)
        
        scoreboardClicked14 = true
        smallStraightOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
    }
    
    @IBAction func smallStraightAction(_ sender: Any) { //if the small straight button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 10), selectedBox: 10)
        
        scoreboardClicked10 = true
        tinyStraightOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
        
    }
    
    @IBAction func largeStraightAction(_ sender: Any) { //if the large button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 11), selectedBox: 11)
        
        scoreboardClicked11 = true
        largeStraightOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
        
    }
    
    @IBAction func chanceAction(_ sender: Any) { //if the change action button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 13), selectedBox: 13)
        
        scoreboardClicked13 = true
        chanceOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
        
    }
    
    @IBAction func yahtzeeAction(_ sender: Any) { //if the yahtzee action button is clicked
        scoreboard1.recordScore(score: scoreboard1.calculateScore(rollScore: numArray, boxNumber: 12), selectedBox: 12)
        
        scoreboardClicked12 = true
        yahtzeeOutlet.isEnabled = false
        roundNumber += 1
        endTurn()
        yahztee = true
        
    }
    @IBAction func gameToSettings(_ sender: Any) { //action segue to settings
        performSegue(withIdentifier: "gameToSettings", sender: self)
    }
    
    //Outlets for all scoreboard buttons
    @IBOutlet weak var onesOutlet: UIButton!
    
    @IBOutlet weak var threesOutlet: UIButton!
    
    @IBOutlet weak var foursOutlet: UIButton!
    
    @IBOutlet weak var fivesOutlet: UIButton!
    
    @IBOutlet weak var sixesOutlet: UIButton!
    
    @IBOutlet weak var twosOutlet: UIButton!
    
    
    @IBOutlet weak var BonusLabel: UILabel!
    
    @IBOutlet weak var threeXOutlet: UIButton!
    
    @IBOutlet weak var fourXOutlet: UIButton!
    
    @IBOutlet weak var fullHouseOutlet: UIButton!
    
    @IBOutlet weak var gameLbl: UILabel!
    @IBOutlet weak var smallStraightOutlet: UIButton!
    
    @IBOutlet weak var tinyStraightOutlet: UIButton!
    @IBOutlet weak var largeStraightOutlet: UIButton!
    
    @IBOutlet weak var chanceOutlet: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var yahtzeeOutlet: UIButton!
    
    @IBOutlet weak var cupOutlet: UIButton!
    
    //Outlets for all dice
    
    @IBOutlet weak var dice_1: UIButton!
    
    @IBOutlet weak var dice_2: UIButton!
    
    @IBOutlet weak var dice_3: UIButton!
    
    @IBOutlet weak var dice_4: UIButton!
    
    @IBOutlet weak var dice_5: UIButton!
    
    //other outlets
    @IBOutlet weak var gameToSettingsBtn: UIButton!
    @IBOutlet var myView: UIView!
    
    
    @IBOutlet weak var playerLbl: UILabel!
}
extension UIButton {
    
    func shake() { //creates a shaking animation, can be used on any UI. Created for the cup
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.duration = 0.8
        animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
        layer.add(animation, forKey: "shake")
    }
    
}

