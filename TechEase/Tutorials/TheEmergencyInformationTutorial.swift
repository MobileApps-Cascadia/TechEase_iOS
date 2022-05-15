//
//  TheEmergencyInformationTutorial.swift
//  TechEase
//
//  Created by Arica Conrad on 4/29/22.
//

import SwiftUI

struct TheEmergencyInformationTutorial: View {
    
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    
    var body: some View {
        
        ZStack {
            
            // Arica: Background color.
            Color("White").ignoresSafeArea()
            
            VStack {
                
                // Arica: Instructional text.
                Text("Tap a button below to learn more about that tutorial part.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                Divider()
                
                ScrollView {
                    
                    NavigationLink(
                        destination: EmergencyTutorialPart1(), tag: 1, selection: $action){
                        EmptyView()
                    }
                    .isDetailLink(false)
                    
                    NavigationLink(
                        destination: EmergencyTutorialPart2(), tag: 2, selection: $action){
                        EmptyView()
                    }
                    .isDetailLink(false)
                    
                    NavigationLink(
                        destination: EmergencyTutorialPart3(), tag: 3, selection: $action){
                        EmptyView()
                    }
                    .isDetailLink(false)
                    
                    NavigationLink(
                        destination: EmergencyTutorialPart4(), tag: 4, selection: $action){
                        EmptyView()
                    }
                    .isDetailLink(false)
                    
                    NavigationLink(
                        destination: EmergencyVideoTutorial1(), tag: 5, selection: $action){
                        EmptyView()
                    }
                    .isDetailLink(false)
                    
                    // Arica: Will continue to refine this design later.
                    
                    HStack {
                        
                        Text("Part 1: Understanding the Medical ID")
                            .font(.title3)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                        
                        Spacer()
                        
                        CustomTutorialPartButton(icon: "book", label: "Start Reading")
                            .onTapGesture {
                                self.action = 1
                            }
                            .padding()
                    }
                    
                    HStack {
                        
                        Text("Part 2: Initializing the Medical ID in the Settings")
                            .font(.title3)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                        
                        Spacer()
                        
                        CustomTutorialPartButton(icon: "book", label: "Start Reading")
                            .onTapGesture {
                                self.action = 2
                            }
                            .padding()
                    }
                    
                    HStack {
                        
                        Text("Part 3: Adding to and editing your Medical ID information")
                            .font(.title3)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                        
                        Spacer()
                        
                        CustomTutorialPartButton(icon: "book", label: "Start Reading")
                            .onTapGesture {
                                self.action = 3
                            }
                            .padding()
                    }
                    
                    HStack {
                        
                        Text("Part 4: Accessing the Medical ID from the lock screen")
                            .font(.title3)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                        
                        Spacer()
                        
                        CustomTutorialPartButton(icon: "book", label: "Start Reading")
                            .onTapGesture {
                                self.action = 4
                            }
                            .padding()
                    }
                    
                    HStack {
                        
                        Text("How to create your Medical ID")
                            .font(.title3)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                        
                        Spacer()
                        
                        CustomTutorialPartButton(icon: "play.rectangle", label: "Watch")
                            .onTapGesture {
                                self.action = 5
                            }
                            .padding()
                    }
                }
                
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
                            
                            NavigationLink(destination: HelpScreen(), tag: 6, selection: $action) {  EmptyView()
                            }
                            .isDetailLink(false)
                        }
                        .padding(10)
                        
                        Spacer()
                        
                        Button(action: {self.action = 6}, label: {
                            
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
            .navigationBarTitle("Emergency Information", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.appState.moveToDashboard = true
            }) {
                
                Text_to_SpeechButton(speech: "Tap a button below to learn more about that tutorial part.")
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

struct TheEmergencyInformationTutorial_Previews: PreviewProvider {
    static var previews: some View {
        TheEmergencyInformationTutorial()
    }
}
