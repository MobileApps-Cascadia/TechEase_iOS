//
//  Homepage.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/30/21.
//  Modified by Arica Conrad on 5/15/21.
//  Modified by Arica Conrad on 5/20/21.
//  Modified by Natalman Nahm on 5/22/21.
//  Modified by Arica Conrad on 6/6/21.
//  Modified by Arica Conrad on 10/10/21.
//  Modified by Arica Conrad on 10/17/21.
//

// Arica: Important note! All buttons across the app originally had text-to-speech applied to them, so the text on the button was read whenever a button was tapped. I commented out the code, because the functionality did not seem as useful and the user had no choice in it. I did not delete the code, though, just in case the code actually needs to be used later.

import SwiftUI
import AVFoundation

class AppState: ObservableObject {
    @Published var moveToDashboard: Bool = false
}

struct Homepage: View {
    
    // Arica: To store the dark mode switch's value.
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    @State var action: Int?
    @EnvironmentObject var appState: AppState
    @State var isView1Active: Bool = false
    
    init() {
        
        // Arica: Create a new UIColor to match our app's light green color in our prototype.
        
        let lightGreenColor = UIColor(red: 0.69412, green: 1.00000, blue: 0.61176, alpha: 1.0000)
        
        // Arica: Create a new version of the navigation bar that has a light green background, black text, and stretches all the way to the top.
        
        let appearence = UINavigationBarAppearance()
        appearence.configureWithOpaqueBackground()
        appearence.backgroundColor = lightGreenColor
        appearence.titleTextAttributes = [.foregroundColor: UIColor.black]
        appearence.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
            
        UINavigationBar.appearance().standardAppearance = appearence
        UINavigationBar.appearance().scrollEdgeAppearance = appearence
        UINavigationBar.appearance().compactAppearance = appearence
        
        // Arica: This code is probably not needed, but I thought I would leave it here anyway.
        // UINavigationBar.appearance().tintColor = UIColor.white
        
        // Arica: The code below works to change the background color of the navigation menu to the desired light green color, but the background does not stretch all the way to the top like the code above does. I thought I would leave this code commented out just in case I need it later.
        
        /*
        
         let lightGreenColor = UIColor(red: 0.69412, green: 1.00000, blue: 0.61176, alpha: 1.0000)
         UINavigationBar.appearance().backgroundColor = lightGreenColor
         
         let navBarAppearance = UINavigationBar.appearance()
         navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
         navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
         
        */
        
        // Arica: This was the original code.
        // UINavigationBar.appearance().backgroundColor = UIColor.green
    }
    
    var body: some View {
        
        NavigationView {
            
            /*
            
            Arica: This ZStack is for the background color to ignore the safe area and color the entire background.
             
            */
            
            ZStack {
                
                Color("White").ignoresSafeArea()
                
                VStack {
                    
                    /*
                     
                    Arica: This is the welcome title at the top of the screen.
                     
                     The reason the title text is in the HStack is because the Spacers seem to directly control the placement of the title. A VStack automatically centers the text, but I don't necessarily want to rely on that. Using the .multilineTextAlignment property has no effect on it, which is a bit concerning to me. That is why the title text is in an HStack (so we can directly control the placement of the title).
                     
                     If we want to change the placement of the title later, say, to the left, we can take out one Spacer and it works. Not doing it this way means we would not be able to do that.
                     
                     For any screen that does not use a title text like this, we do not need to use an HStack.
                     
                    */
                    
                    HStack {
                        Spacer()
                        Text("Welcome!")
                            .font(.title)
                            .foregroundColor(Color("DarkBlue"))
                        Spacer()
                    }
                    // Arica: This padding is necessary for the left and right sides of the instructional text.
                    .padding(10)
                    // Arica: This provides a bit more space above and below the instructional text.
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                        
                    /*
                    
                    Arica: This is the text that explains to the users what they can do on this screen.
                     
                    FUTURE NOTE TO MYSELF:
                    Body text on the screens should use the ".title3" font size. Captions for photos should use the ".body" font size.
                     
                    */
                    
                    
                    Text("Tap a button to access the tutorials or the settings. If you need help, tap the help button in the bottom right corner.")
                        .foregroundColor(Color("Black"))
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    /*
                    
                    Arica: These are the buttons that navigate to the tutorials and to the settings.
                     
                    */
                    
                    NavigationLink(
                        destination: TechEaseTutorialList(), tag: 1, selection: $action){
                        EmptyView()
                    }
                    .isDetailLink(false)
                    
                    NavigationLink(
                        destination: SettingsScreen(), tag: 2, selection: $action){
                        EmptyView()
                    }
                    .isDetailLink(false)
                    
                    CustomButton(icon: "book", label: "Start Tutorials")
                        .onTapGesture {
                            self.action = 1
                            //speakButtonText(textToSpeak: "Start Tutorials")
                        }
                        .padding()
                    
                    CustomButton(icon: "gearshape", label: "Settings")
                        .onTapGesture {
                            self.action = 2
                            //speakButtonText(textToSpeak: "Settings")
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
                .navigationBarItems(trailing: Text_to_SpeechButton(speech: "Welcome! Tap a button to access the tutorials or the settings. If you need help, tap the help button in the bottom right corner."))
                .listStyle(PlainListStyle())
                .navigationBarTitle("Home", displayMode: .inline)
                .onReceive(self.appState.$moveToDashboard) { moveToDashboard in
                    if moveToDashboard {
                        print("Move to dashboard: \(moveToDashboard)")
                        self.isView1Active = false
                        self.appState.moveToDashboard = false
                    }
                }
            }
        }
        // Arica: To switch between light mode and dark mode. This should apply to all screens since all screens direct back to this one (the home screen).
        .environment(\.colorScheme, isDarkMode ? .dark : .light)
        
        /*
        
        Arica: This changes the color of the back button in the navigation menu. Putting this code here affects all the screens.
         
        */
        // Arica: This was the original code:
        // .accentColor(Color("Black"))
        // Arica: This is the new code. Since the navigation menu currently does not transition in dark mode, the text needs to stay black in both light and dark mode. This "NavigationMenuBlack" color is black in both light and dark mode and will affect all the screens in the app.
        .accentColor(Color("NavigationMenuBlack"))
    }
}


struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
            .environmentObject(AppState())
    }
}
