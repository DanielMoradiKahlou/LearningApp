//
//  HomeViewRow.swift
//  LearningApp
//
//  Created by Daniel Moradi Kahlou on 04.07.21.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                .cornerRadius(10)
                .foregroundColor(.white)
                .shadow(radius: 5)
            
            HStack {
                
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                VStack (alignment: .leading, spacing: 10) {
                    
                    Text(title)
                    
                    Text(description)
                        .padding(.bottom, 20)
                        .font(.caption)
                    
                    HStack {
                        
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text(count)
                            .font(Font.system(size: 10))
                        
                        Spacer()
                        
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text(time)
                            .font(Font.system(size: 10))
                        
                        
                    }
                    
                }
                .padding(.leading, 20)
                
            }
            .padding(.horizontal, 20)
            
            
            
            
        }
        
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "test", title: "test", description: "test", count: "test", time: "test")
    }
}
