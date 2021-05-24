//
//  SpeechButton.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/22/21.
//

import SwiftUI
import AVFoundation

struct SpeechButton: View {
    
    var speech: String
    var body: some View {
        Button(action: {
            let utterance = AVSpeechUtterance(string: speech)
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            
            utterance.rate = 0.5
            
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(utterance)
            
        }) {
            Image(systemName: "mic.circle").imageScale(.large)
            Text("Speak")
            
        }
    }
}

struct SpeechButton_Previews: PreviewProvider {
    static var previews: some View {
        SpeechButton(speech: "Welcome! Tap a button to access the tutorials or the settings. If you need help, tap the help button in the bottom right corner.")
    }
}
