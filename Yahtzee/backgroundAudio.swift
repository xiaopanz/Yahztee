

import Foundation
import AVFoundation

class backgroundAudio:NSObject,AVAudioPlayerDelegate { //this class controls all background music methods and initialization functions
    static let sharedHelper = backgroundAudio()
    var audioPlayer = AVAudioPlayer() //initialize
    
    override init() {
        super.init()
        
    }
    
    func play() { //function to play background music
        let audioPath = Bundle.main.path(forResource: "Background Music", ofType: "mp3")
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: NSURL (fileURLWithPath:audioPath!)as URL)
            audioPlayer.numberOfLoops = -1 //infinite loop
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        } catch let error {
            print(error.localizedDescription) //print error if audio player fails
        }
    }
    
    func stop() { //function to stop playing background music
    audioPlayer.stop()
    }
    func mute() { //function to mute background music
    if audioPlayer.url != nil{
        audioPlayer.setVolume(0, fadeDuration: 2)
    } else {
    }
    }
    func unMute() { //function to unmute background music
        audioPlayer.setVolume(1, fadeDuration: 2)
    }
}
