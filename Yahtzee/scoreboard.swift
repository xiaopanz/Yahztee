

import Foundation

class scoreboard {
    
    var Yahztee : Bool
    // Boolean to check if there is already one Yahztee in one game
    
    var yahtzeeBonus  : Bool
    // Boolean to check if the player has already got one bouns
    
    var eachRollScore = [Int](repeating: 0, count: 14)
    // the array that stores the scores of 13 boxes in the scoreboard for one player
    
    var totalScore : Int
    // the array that stores the total score for one player
    
    var upperBoxBonus: Bool
    // Boolean to check if the player can have a upper box bonus
    
    //var gameView1 = gameView()
    
    init()
    {
        // initializes instances of scoreboard
        totalScore = 0
        Yahztee = false
        yahtzeeBonus = false
        upperBoxBonus = false
        
    }
    
    // Methods to calcuate the score for each box on the scoreboard
    func calculateScore(rollScore: [Int], boxNumber: Int) -> Int{
        var score = 0
        
        switch boxNumber
        {
        case 1  : //1's
            for index in rollScore
            {
                if (index == 1)
                {
                    score += 1
                }
            }
            break
        case 2  : //2's
            for index in rollScore
            {
                if (index == 2)
                {
                    score += 2
                }
            }
            break
        case 3 : //3's
            for index in rollScore
            {
                if (index == 3)
                {
                    score += 3
                }
            }
            break
        case 4 : //4's
            for index in rollScore
            {
                if (index == 4)
                {
                    score += 4
                }
            }
            break
        case 5 : //5's
            for index in rollScore
            {
                if (index == 5)
                {
                    score += 5
                }
            }
            break
        case 6 : //6's
            for index in rollScore
            {
                if (index == 6)
                {
                    score += 6
                }
            }
            break
            
        case 7 : // 3 of a Kind
            var dice = 1
            var threeOfAKind = false
            while (dice <= 6)
            {
                var count  = 0
                var j = 0
                while(j < 5)
                {
                    if (rollScore[j] == dice)
                    {
                        count += 1
                    }
                    j += 1
                }
                if(count > 2)
                {
                    threeOfAKind = true
                }
                dice += 1
            }
            if(threeOfAKind)
            {
                for index in rollScore
                {
                    score += index
                }
            }
            break
            
        case 8 : // 4 of a Kind
            var dice = 1
            var fourOfAKind = false
            while (dice <= 6)
            {
                var count  = 0
                var j = 0
                while(j < 5)
                {
                    if (rollScore[j] == dice)
                    {
                        count += 1
                    }
                    j += 1
                }
                if(count > 3)
                {
                    fourOfAKind = true
                }
                dice += 1
            }
            if(fourOfAKind)
            {
                for index in rollScore
                {
                    score += index
                }
                
            }
            break
            
            
        case 9:// Full house
            
            var dice = [Int](repeating: 0, count: 5)
            dice[0] = rollScore[0]
            dice[1] = rollScore[1]
            dice[2] = rollScore[2]
            dice[3] = rollScore[3]
            dice[4] = rollScore[4]
            
            dice.sort()
            
            if( (((dice[0] == dice[1]) && (dice[1] == dice[2])) && // Three of a Kind
                (dice[3] == dice[4]) && // Two of a Kind
                (dice[2] != dice[3])) ||
                ((dice[0] == dice[1]) && // Two of a Kind
                    ((dice[2] == dice[3]) && (dice[3] == dice[4])) && // Three of a Kind
                    (dice[1] != dice[2])) )
            {
                score = 25;
            }
            break
            
        case 10:// Small Straight
            var dice = [Int](repeating: 0, count: 5)
            dice[0] = rollScore[0]
            dice[1] = rollScore[1]
            dice[2] = rollScore[2]
            dice[3] = rollScore[3]
            dice[4] = rollScore[4]
            
            dice.sort()
            
            
            //If there is more than one same number in the dice array, move the duplicate number to the end
            var count = 0
            while (count < 4)
            {
                var temp = 0
                if dice[count] == dice[count+1]
                {
                    temp = dice[count]
                    var count2 = count
                    while (count2 < 4)
                    {
                        dice[count2] = dice[count2+1]
                        count2 += 1
                    }
                    dice[4] = temp
                }
                count += 1
            }
            
            
            if( ((dice[0] == 1) && (dice[1] == 2) && (dice[2] == 3) && (dice[3] == 4)) ||
                ((dice[0] == 2) && (dice[1] == 3) && (dice[2] == 4) && (dice[3] == 5)) ||
                ((dice[0] == 3) && (dice[1] == 4) && (dice[2] == 5) && (dice[3] == 6)) ||
                ((dice[1] == 1) && (dice[2] == 2) && (dice[3] == 3) && (dice[4] == 4)) ||
                ((dice[1] == 2) && (dice[2] == 3) && (dice[3] == 4) && (dice[4] == 5)) ||
                ((dice[1] == 3) && (dice[2] == 4) && (dice[3] == 5) && (dice[4] == 6)) )
            {
                score = 30
            }
            break
            
        case 11:// Large Straight
            var dice = [Int](repeating: 0, count: 5)
            dice[0] = rollScore[0]
            dice[1] = rollScore[1]
            dice[2] = rollScore[2]
            dice[3] = rollScore[3]
            dice[4] = rollScore[4]
            
            dice.sort()
            
            if( ((dice[0] == 1) && (dice[1] == 2) && (dice[2] == 3) && (dice[3] == 4) && (dice[4] == 5)) ||
                ((dice[0] == 2) && (dice[1] == 3) && (dice[2] == 4) && (dice[3] == 5) && (dice[4] == 6)) )
            {
                score = 40
            }
            break
            
        case 12: // Yahtzee
            var Yahztee = false
            var dice = 1
            while( dice <= 6 )
            {
                var count = 0
                var j = 0
                while( j < 5 )
                {
                    if( rollScore[j] == dice )
                    {
                        count += 1
                    }
                    
                    if( count > 4 )
                    {
                        Yahztee = true
                    }
                    j += 1
                }
                dice += 1
            }
            if(Yahztee)
            {
                score = 50
                
            }
            break
            
        case 13://Chance
            for index in rollScore
            {
                score += index
            }
            
            break
            
        case 14://TinyStraight
            var dice = [Int](repeating: 0, count: 5)
            dice[0] = rollScore[0]
            dice[1] = rollScore[1]
            dice[2] = rollScore[2]
            dice[3] = rollScore[3]
            dice[4] = rollScore[4]
            
            dice.sort()
            
            //If there is more than one same number in the dice array, move the duplicate number to the end
            var i = 0
            while (i<2){
                var count = 0
                while (count < 4)
                {
                    var temp = 0
                    if dice[count] == dice[count+1]
                    {
                        temp = dice[count]
                        var count2 = count
                        while (count2 < 4)
                        {
                            dice[count2] = dice[count2+1]
                            count2 += 1
                        }
                        dice[4] = temp
                    }
                    count += 1
                }
                i += 1
            }
           
            if(    ((dice[0] == 1) && (dice[1] == 2) && (dice[2] == 3))
                || ((dice[0] == 2) && (dice[1] == 3) && (dice[2] == 4))
                || ((dice[0] == 3) && (dice[1] == 4) && (dice[2] == 5))
                || ((dice[0] == 4) && (dice[1] == 5) && (dice[2] == 6))
                || ((dice[1] == 1) && (dice[2] == 2) && (dice[3] == 3))
                || ((dice[1] == 2) && (dice[2] == 3) && (dice[3] == 4))
                || ((dice[1] == 3) && (dice[2] == 4) && (dice[3] == 5))
                || ((dice[1] == 4) && (dice[2] == 5) && (dice[3] == 6))
                || ((dice[2] == 1) && (dice[3] == 2) && (dice[4] == 3))
                || ((dice[2] == 2) && (dice[3] == 3) && (dice[4] == 4))
                || ((dice[2] == 3) && (dice[3] == 4) && (dice[4] == 5))
                || ((dice[2] == 4) && (dice[3] == 5) && (dice[4] == 6)))
            {
                score = 20
            }
            break
            
        default:
            break
        }
        return score
    }
    
    
    //check if player can get a bonus score
    
    // records the score of all 6 dices for one selected box
    func recordScore(score: Int, selectedBox: Int)
    {
        eachRollScore[selectedBox-1] = score
    }
    
    // calculates the total scores of all 13 boxes for one player
    func calculateTotalScore()
    {
        totalScore = 0
        for index in eachRollScore
        {
            totalScore += index
        }
        if upperBoxBonus
        {
            totalScore += 35
        }
        if (yahtzeeBonus) {
            totalScore += 100
        }
    }
    // getter Method which returns the value of total score
    func getTotalScore() -> Int
    {
        return totalScore
    }
    
    // getter Method which returns the array of all boxes' scores
    func getEachRollScore() -> [Int]
    {
        return eachRollScore
    }
    
    // resets the total score to zero
    func resetTotalScore()
    {
        totalScore = 0
    }
    // getter methods which determines if player can get an upper box bonus
    func addYahtzeeBonus()
    {
            yahtzeeBonus = true

    }
    
    func addUpperBoxBonus()
    {
        if (eachRollScore[0] + eachRollScore[1] + eachRollScore[2] + eachRollScore[3] + eachRollScore[4] + eachRollScore[5] >= 63) //&& (gameView1.BonusLabel.text != "Bonus: 35" || gameView1.BonusLabel.text != "Bonus: 135"))
        {
            upperBoxBonus = true
        }
    }
    
    // getter methods which determines if player can yahtzee bonus
    
    func getUpperBoxBonus() -> Bool
    {
        return upperBoxBonus
    }
    func getYahtzeeBonus() -> Bool
    {
        return yahtzeeBonus
    }
    
    func getYahtzee() -> Bool
    {
        return Yahztee
    }
}
