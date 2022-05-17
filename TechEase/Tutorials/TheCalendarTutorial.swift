//
//  TheCalendarTutorial.swift
//  TechEase
//
//  Created by Arica Conrad on 4/29/22.
//

import SwiftUI

struct TheCalendarTutorial: View {
    
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
                    
                    // Arica: I added a Group here because there were more than 10 views when counting up all the NavigationLinks and HStacks. If more videos are added, the HStacks may need to be grouped together too.
                    Group {
                        
                        NavigationLink(
                            destination: CalendarTutorialPart1(), tag: 1, selection: $action){
                            EmptyView()
                        }
                        .isDetailLink(false)
                        
                        NavigationLink(
                            destination: CalendarTutorialPart2(), tag: 2, selection: $action){
                            EmptyView()
                        }
                        .isDetailLink(false)
                        
                        NavigationLink(
                            destination: CalendarTutorialPart3(), tag: 3, selection: $action){
                            EmptyView()
                        }
                        .isDetailLink(false)
                        
                        NavigationLink(
                            destination: CalendarTutorialPart4(), tag: 4, selection: $action){
                            EmptyView()
                        }
                        .isDetailLink(false)
                        
                        NavigationLink(
                            destination: CalendarVideoTutorial1(), tag: 5, selection: $action){
                            EmptyView()
                        }
                        .isDetailLink(false)
                        
                        NavigationLink(
                            destination: CalendarVideoTutorial2(), tag: 6, selection: $action){
                            EmptyView()
                        }
                        .isDetailLink(false)
                    }
                    
                    // Arica: Will continue to refine this design later.
                    
                    HStack {
                        
                        Text("Part 1: Opening the Calendar app and switching views")
                            .font(.title3)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                        
                        Spacer()
                        
                        CustomTutorialPartButton(icon: "book", label: "Read")
                            .onTapGesture {
                                self.action = 1
                            }
                            .padding()
                    }
                    
                    HStack {
                        
                        Text("Part 2: Adding a new event")
                            .font(.title3)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                        
                        Spacer()
                        
                        CustomTutorialPartButton(icon: "book", label: "Read")
                            .onTapGesture {
                                self.action = 2
                            }
                            .padding()
                    }
                    
                    HStack {
                        
                        Text("Part 3: Editing an event")
                            .font(.title3)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                        
                        Spacer()
                        
                        CustomTutorialPartButton(icon: "book", label: "Read")
                            .onTapGesture {
                                self.action = 3
                            }
                            .padding()
                    }
                    
                    HStack {
                        
                        Text("Part 4: Deleting an event")
                            .font(.title3)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                        
                        Spacer()
                        
                        CustomTutorialPartButton(icon: "book", label: "Read")
                            .onTapGesture {
                                self.action = 4
                            }
                            .padding()
                    }
                    
                    HStack {
                        
                        Text("Video 1: How to use the Calendar app")
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
                    
                    HStack {
                        
                        Text("Video 2: Using the Calendar app on your iPad")
                            .font(.title3)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                        
                        Spacer()
                        
                        CustomTutorialPartButton(icon: "play.rectangle", label: "Watch")
                            .onTapGesture {
                                self.action = 6
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
                            
                            NavigationLink(destination: HelpScreen(), tag: 7, selection: $action) {  EmptyView()
                            }
                            .isDetailLink(false)
                        }
                        .padding(10)
                        
                        Spacer()
                        
                        Button(action: {self.action = 7}, label: {
                            
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
            .navigationBarTitle("Calendar", displayMode: .inline)
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

struct TheCalendarTutorial_Previews: PreviewProvider {
    static var previews: some View {
        TheCalendarTutorial()
    }
}
