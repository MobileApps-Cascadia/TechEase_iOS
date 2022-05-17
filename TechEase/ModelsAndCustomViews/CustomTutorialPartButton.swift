//
//  CustomTutorialPartButton.swift
//  TechEase
//
//  Created by Arica Conrad on 5/4/22.
//

import SwiftUI

struct CustomTutorialPartButton: View {
    
    var icon: String
    var label: String
    
    var body: some View {
        
        HStack{

            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .foregroundColor(Color("Black"))
            
            Spacer()
            Spacer()
            
            Text(label)
                .font(.title3)
                .foregroundColor(Color("Black"))
            
            Spacer()
            Spacer()
            Spacer()
        }
        .padding()
        .frame(width: 150, height: 50)
        .background(RoundedRectangle(cornerRadius: 10).stroke(Color("DarkBlue"), lineWidth: 2).background(Color("LightBlue").cornerRadius(10)))
        .foregroundColor(Color("Black"))
    }
}

struct CustomTutorialPartButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomTutorialPartButton(icon: "book", label: "Read")
    }
}
