//
//  CompassTutorialPart1.swift
//  TechEase
//
//  Created by Arica Conrad on 5/8/22.
//

import SwiftUI
import Foundation

struct CompassTutorialPart1: View {
    
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    
    func FileIO() -> [String] {
        
        let str2 = ["default", "text"]
        

        if let filepath = Bundle.main.path(forResource: "CompassTutorialPart1", ofType: "txt") {
            do {

                let contents = try String(contentsOfFile: filepath)
                return contents.components(separatedBy: "\n")

            } catch {
                print("Contents could not be loaded.")
                return str2
            }
        }
        else {
            print("Text not found.")
            return str2
        }
    }
    
    func textByLine(int1: Int) -> String {
        
        let textArray: [String] = FileIO()
        let str1 = textArray[int1]
        return str1
    }
    
    var body: some View {
        
        ZStack {
            
            Color("White").ignoresSafeArea()
            
            VStack {
                
                ScrollView {
                    
                    VStack {
                        
                        // Arica: Groups are necessary because there is a max of 10 views per one container.
                        
                        Group {
                            
                            // Arica: The tutorial title.
                            Text(textByLine(int1: 0))
                                .padding(.top, 30)
                                .font(.title)
                                .foregroundColor(Color("DarkBlue"))
                                .multilineTextAlignment(.center)
                                .fixedSize(horizontal: false, vertical: true)
                             
                            // Arica: The tutorial icon.
                            Image(systemName: "location.north.line")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .padding(.bottom, 20)
                                .foregroundColor(Color("Black"))
                            
                            // Arica: The tutorial subheading.
                            Text(textByLine(int1: 1))
                                .font(.title2)
                                .foregroundColor(Color("DarkBlue"))
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 2))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 3))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: A tutorial screenshot.
                            Image("CompassTutorialPart1Screenshot1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: A tutorial screenshot caption.
                            Text(textByLine(int1: 4))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 5))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 6))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                        }
                        
                        Group {
                            
                            // Arica: A tutorial screenshot.
                            Image("CompassTutorialPart1Screenshot2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: A tutorial screenshot caption.
                            Text(textByLine(int1: 7))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 8))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 9))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 10))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 11))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 12))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 13))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 14))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 15))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                        }
                        
                        Group {
                            
                            // Arica: The tutorial text.
                            Text(textByLine(int1: 16))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: End of tutorial text.
                            Text(textByLine(int1: 17))
                                .font(.title2)
                                .foregroundColor(Color("DarkBlue"))
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                    }
                    
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
        }
        // Arica: Top navigation bar.
        .navigationBarTitle("Compass", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.appState.moveToDashboard = true
        }) {
            
            Text_to_SpeechButton(speech: "This is Part 1 of the Compass Tutorial.")
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

struct CompassTutorialPart1_Previews: PreviewProvider {
    static var previews: some View {
        CompassTutorialPart1()
    }
}
