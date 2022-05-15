//
//  EmergencyVideoTutorial1.swift
//  TechEase
//
//  Created by Arica Conrad on 5/14/22.
//

import SwiftUI

struct EmergencyVideoTutorial1: View {
    
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    
    var body: some View {
        
        ZStack {
            
            // Arica: Background color.
            Color("White").ignoresSafeArea()
            
            VStack {
                
                // Arica: The video tutorial heading.
                Text("How to create your Medical ID")
                    .padding(.top, 30)
                    .font(.title)
                    .foregroundColor(Color("DarkBlue"))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                
                // Arica: Instructional text.
                Text("Tap the video below to start watching a tutorial about how to create your Medical ID. To exit full-screen mode, tap the video and then tap the \"X\" button in the top left corner.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                VideoView(videoId: "F3XIkl75Els")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                    .border(Color("DarkBlue"), width: 5)
                    .cornerRadius(10)
                    .padding()
                 
                Spacer()
                
                // Arica: Help button.
                ZStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        HStack {
                            
                            Image(systemName: "hand.draw")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .padding(10)
                                .foregroundColor(Color("Black"))
                            
                            Text("Swipe up or down to see more content.")
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                            
                            NavigationLink(destination: HelpScreen(), tag: 1, selection: $action) {  EmptyView()
                            }
                            .isDetailLink(false)
                        }
                        .padding(10)
                        
                        Spacer()
                        
                        Button(action: {self.action = 1}, label: {
                            
                            VStack {
                                Image(systemName: "questionmark")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color("Black"))
                                Text("Help")
                                    .font(.title2)
                                    .foregroundColor(Color("Black"))
                            }
                        })
                        .buttonStyle(HelpButton())
                    }
                }
                .background(RoundedRectangle(cornerRadius: 0).stroke(Color("LightGray"), lineWidth: 4).background(Color("White")))
            }
            // Arica: Top navigation bar.
            // Arica: If more than one video gets added to show how to use the Medical ID, then this navigation title should be changed to "Emergency Video 1." Since there is currently only one video, though, the title can stay as "Emergency Video."
            .navigationBarTitle("Emergency Video", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.appState.moveToDashboard = true
            }) {
                
                Text_to_SpeechButton(speech: "Tap the video below to start watching a tutorial about how to create your Medical ID. To exit full-screen mode, tap the video and then tap the X button in the top left corner.")
                    .padding(.trailing, 7.0)
                
                VStack {
                    Image(systemName: "house")
                        // Arica: This was the original code.
                        // .foregroundColor(Color("Black"))
                        // Arica: This is the new code to match the new light green top navigation menu.
                        .foregroundColor(Color("NavigationMenuBlack"))
                    Text("Home")
                        // Arica: This was the original code.
                        // .foregroundColor(Color("Black"))
                        // Arica: This is the new code to match the new light green top navigation menu.
                        .foregroundColor(Color("NavigationMenuBlack"))
                }
            }
            .padding(.trailing, 3.0))
        }
    }
}

struct EmergencyVideoTutorial1_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyVideoTutorial1()
    }
}
