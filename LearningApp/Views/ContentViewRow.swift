//
//  ContentViewRow.swift
//  LearningApp
//
//  Created by Daniel Moradi Kahlou on 04.07.21.
//

import SwiftUI

struct ContentViewRow: View {
    
    var index: Int
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        
        ZStack (alignment: .leading) {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)
            
            HStack (spacing: 30) {
                
                Text(String(index + 1))
                    .bold()
                
                VStack (alignment: .leading) {
                    Text(model.currentModule!.content.lessons[index].title)
                        .bold()
                    Text(model.currentModule!.content.lessons[index].duration)
                    
                }
                
            }
            .padding()
        }
        .padding(.bottom, 5)
        
    }
}
