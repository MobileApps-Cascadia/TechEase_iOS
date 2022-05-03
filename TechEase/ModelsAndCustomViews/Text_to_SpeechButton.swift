//
//  SpeechButton.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/22/21.
//  Modified by Arica Conrad on 6/6/21.
//

import SwiftUI
import AVFoundation

struct Text_to_SpeechButton: View {
    
    var speech: String
    var audioContent: Array<String>?
    var otherAudio: String?
    var body: some View {
        Button(action: {
            
            var playAudio = ""
            var utterance = AVSpeechUtterance()
            
            for content in audioContent ?? [String]() {
                playAudio = playAudio + content + " "
            }
            
            
            if playAudio == "" && otherAudio == nil {
                utterance = AVSpeechUtterance(string: speech)

            } else {
                utterance = AVSpeechUtterance(string: (speech + " " + playAudio + " " + otherAudio!))
            }
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            
            utterance.rate = 0.5
            
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(utterance)
            
        }) {
            VStack {
                
                // Arica: Important note! You can use the icons "speaker.1" or "speaker.2," but "speaker.3" cuts off the text for some reason. The text shows up with a "..." at the end of it. I have not been able to figure out how to fix this, so I left the icon as "speaker.2" to make sure the text is not cut off.
                
                // Arica: The original color for the image and text was Color("Black"). However, with the new green top navigation menu bar design, the image and text needs to be black in both light and dark mode. That is why the color has been changed to Color("NavigationMenuBlack").
                
                Image(systemName: "speaker.2")
                    .foregroundColor(Color("NavigationMenuBlack"))
                Text("Listen")
                    .foregroundColor(Color("NavigationMenuBlack"))
            }
        }
    }
}

struct SpeechButton_Previews: PreviewProvider {
    static var previews: some View {
        Text_to_SpeechButton(speech: "Welcome! Tap a button to access the tutorials or the settings. If you need help, tap the help button in the bottom right corner.")
    }
}
