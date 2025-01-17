//
//  SettingsScreen.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//  Modified by Arica Conrad on 4/30/21 and 5/1/21.
//  Modified by Arica Conrad on 5/15/21.
//  Modified by Arica Conrad on 5/20/21.
//  Modified by Natalman Nahm on 5/24/21
//  Modified by Arica Conrad on 6/6/21.
//  Modified by Arica Conrad on 10/10/21.
//


import SwiftUI
import AVFoundation

struct SettingsScreen: View {
    
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    
    var body: some View {
        
        /*
        
        Arica: This ZStack is for the background color to ignore the safe area and color the entire background.
         
        */
        
        ZStack {
            
            Color("White").ignoresSafeArea()
            
            VStack {
            
                /*
                 
                 Arica: This is the instructional text that describes what the user can do on this screen.
                 
                 */
                
                
                Text("Tap a button to see accessibility options or notifications.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    // Arica: This padding is necessary for the left and right sides of the instructional text.
                    .padding(10)
                    // Arica: This provides a bit more space above and below the instructional text.
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
            
                
                /*
                 
                 Arica: These buttons navigate to the Accessibility and Notifications screens.
                 
                 */
                
                NavigationLink(destination: Accessibility(), tag: 1, selection: $action) {
                    EmptyView()
                }
                .isDetailLink(false)
                    
                NavigationLink(destination: NotificationsScreen(), tag: 2, selection: $action) {
                    EmptyView()
                }
                .isDetailLink(false)
                
                NavigationLink(destination: HelpScreen(), tag: 3, selection: $action) {
                    EmptyView()
                }
                .isDetailLink(false)
                
                CustomButton(icon: "figure.stand", label: "Accessibility")
                .onTapGesture {
                    self.action = 1
                    //speakButtonText(textToSpeak: "Accessibility")
                }
                .padding()
                
                CustomButton(icon: "bell", label: "Notifications")
                .onTapGesture {
                    self.action = 2
                    //speakButtonText(textToSpeak: "Notifications")
                }
                .padding()
                
                Spacer()
                
                // Arica: The Help button.
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
                            NavigationLink(destination: HelpScreen(), tag: 3, selection: $action) {  EmptyView()
                            }
                            .isDetailLink(false)
                        }
                        .padding(10)
                        
                        Spacer()
                        
                        Button(action: {self.action = 3}, label: {
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
            .navigationBarTitle("Settings", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.appState.moveToDashboard = true
            }) {
                
                Text_to_SpeechButton(speech: "Tap a button to see accessibility options or notifications.")
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
                        
                        // Arica: It seems you actually can customize the font size, but it loses that bold look that is automatically applied to links in the navigation bar.
                        //.font(.title3)
                }
                // Arica: This was @Mackenzie's original code.
                //Text("Home")
            }
            .padding(.trailing, 3.0))
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
