

import Foundation

class player {
    
    var totalScores : Int
    // one player's total score for one game
    var NoOfPlayer : Int
    // the No. of one player
    
    init()
    {
        // initializes instances of player class
        NoOfPlayer = 0
        totalScores = 0
    }
    
    // setter Method which sets the No. of one player
    func setNoOfPlayer(NoOfPlayer: Int)
    {
        self.NoOfPlayer = NoOfPlayer
    }
    
    // getter Method which returns the No. of one player
    func getNoOfPlayer() -> Int
    {
        return NoOfPlayer
    }
    
    // setter Method which sets the total score of one player
    func addTotalScores(totalScore:Int)
    {
        totalScores = totalScore
    }
    
    // getter Method which returns the total score of one player
    func getTotalScores() -> Int
    {
        return totalScores
    }
    
    
}
