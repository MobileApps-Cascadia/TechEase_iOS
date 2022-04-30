//
//  FeaturedTutorialsScreen.swift
//  TechEase
//
//  Created by Arica Conrad on 4/29/22.
//

import SwiftUI

struct FeaturedTutorialsScreen: View {
    
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    
    var body: some View {
        
        ZStack {
            
            // Arica: Background color.
            Color("White").ignoresSafeArea()
            
            VStack {
                
                // Arica: Instructional text.
                Text("Tap a button below to learn more about that tutorial.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                NavigationLink(
                    destination: TheEmergencyInformationTutorial(), tag: 1, selection: $action){
                    EmptyView()
                }
                .isDetailLink(false)
                
                NavigationLink(
                    destination: TheCompassTutorial(), tag: 2, selection: $action){
                    EmptyView()
                }
                .isDetailLink(false)
                
                NavigationLink(
                    destination: TheCalendarTutorial(), tag: 3, selection: $action){
                    EmptyView()
                }
                .isDetailLink(false)
                
                // Arica: Emergency Information tutorial button.
                CustomButton(icon: "cross.circle", label: "Emergency Information")
                    .onTapGesture {
                        self.action = 1
                    }
                    .padding()
                
                // Arica: Compass tutorial button.
                CustomButton(icon: "location.north.line", label: "Compass")
                    .onTapGesture {
                        self.action = 2
                    }
                    .padding()
                
                // Arica: Calendar tutorial button.
                // I am getting this warning in the console log, so I should probably check this out in the future.
                // "SwiftUI encountered an issue when pushing aNavigationLink. Please file a bug."
                CustomButton(icon: "calendar", label: "Calendar")
                    .onTapGesture {
                        self.action = 3
                    }
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
            // Arica: Top navigation bar.
            .navigationBarTitle("Featured Tutorials", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.appState.moveToDashboard = true
            }) {
                
                Text_to_SpeechButton(speech: "Tap a button below to learn more about that tutorial.")
                    .padding(.trailing, 7.0)
                
                VStack {
                    Image(systemName: "house")
                        .foregroundColor(Color("Black"))
                    Text("Home")
                        .foregroundColor(Color("Black"))
                }
            }
            .padding(.trailing, 3.0))
        }
    }
}

struct FeaturedTutorialsScreen_Previews: PreviewProvider {
        static var previews: some View {
            FeaturedTutorialsScreen()
    }
}
