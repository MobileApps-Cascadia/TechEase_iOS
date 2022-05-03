//
//  OverviewScreen.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/13/21.
//  Modified By Natalman Nahm on 06/05/21
//  Modified by Arica Conrad on 6/6/21.
//  Modified by Arica Conrad on 10/10/21.
//

import SwiftUI

struct OverviewScreen: View {
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    var tutorial: Tutorial
    var index: Int
    var tutId: Int
    
    
    var body: some View {
        
        /*
        
        Arica: This ZStack is for the background color to ignore the safe area and color the entire background.
         
        */
        
        ZStack {
         
            Color("White").ignoresSafeArea()
            
            VStack {
                
                Text("The " + tutorial.TutorialName + " Tutorial will teach you the following:")
                    .font(.title)
                    .foregroundColor(Color("DarkBlue"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                /*
                
                Arica: I added the ScrollView in case the screen size is small and the list is long. The "Start Tutorial" button is within the ScrollView as well. This also prevents the text from being cut off on smaller screen sizes.
                 
                */
                
                ScrollView {

                    VStack {
                        /*
                        
                        Arica: Natalman's original code had + "\n" at the end of the Text in the foreach loop. I am leaving this as a reminder in case we need to use it again.
                         
                        */

                        ForEach(getOverViewContent(index: index, tutId: tutId).indices) {
                            i in
                            
                            HStack {
                                Text("- " + (self.getOverViewContent(index: index, tutId: tutId)[i]))
                                    .font(.title2)
                                    .foregroundColor(Color("Black"))
                                    .padding(.leading, 20)
                                Spacer()
                            }
                            .padding(.bottom, 3)
                        }
                    }
                    .padding(.bottom, 20)
                    
                    NavigationLink(
                        destination: ContentView(), tag: 1, selection: $action){
                        EmptyView()
                    }
                    .isDetailLink(false)
                    
                    NavigationLink(
                        destination: HelpScreen(), tag: 10, selection: $action){
                        EmptyView()
                    }
                    .isDetailLink(false)
                    
                    CustomButton(icon: "play", label: "Start Tutorial")
                    .onTapGesture {
                        self.action = 1
                        //speakButtonText(textToSpeak: "Start Tutorial")
                    }
                    .padding()
                    Spacer()
                    
                }
                
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
            .padding(.top, 0)
            .listStyle(PlainListStyle())
            .navigationBarTitle("Overview", displayMode: .inline)
            .navigationBarItems( trailing:
                                    
                HStack {
                    Text_to_SpeechButton(speech: "The " + tutorial.TutorialName + " Tutorial will teach you the following:", audioContent: getOverViewContent(index: index, tutId: tutId), otherAudio: "Tap the Start tutorial Button to begin the tutorial.")
                        .padding(.trailing, 7.0)
                    
                    Button(action: {
                    
                    self.appState.moveToDashboard = true
                    
                    }) {
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
            }
            .padding(.trailing, 3.0))
        }
    }
    
    func getOverViewContent (index: Int, tutId: Int) -> Array<String> {
        
        var overview = [[""]]
        var content = [""]
        
        if tutId == 0 {
            overview = phoneFeaturesOverview
            content = getIndexContent(index: index, contents: overview)
        } else if tutId == 1{
            overview = appsOverview
            return getIndexContent(index: index, contents: overview)
        } else if tutId == 2 {
            overview = internetOverview
            return getIndexContent(index: index, contents: overview)
        } else if tutId == 3 {
            overview = socialMediaOverview
            return getIndexContent(index: index, contents: overview)
        }
        
        return content
    }
    
    func getIndexContent(index: Int, contents: Array<Array<String>>) -> Array<String>{
        
        var contentOverview = [""]
        
        for content in contents {
            if contents.firstIndex(of: content) == index {
                contentOverview = content
            }
        }
        return contentOverview
    }
}

struct OverviewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OverviewScreen(tutorial: Tutorial(TutorialName: "Texting", Icon: "globe"), index: 1, tutId: 1)
    }
}
