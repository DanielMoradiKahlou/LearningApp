//
//  ContentView.swift
//  LearningApp
//
//  Created by Daniel Moradi Kahlou on 03.07.21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        NavigationView {
                
            VStack (alignment: .leading) {
                
                Text("What would you like to do today?")
                    .padding(.leading, 20)
                
                ScrollView {
                    
                    LazyVStack {
                        
                        ForEach (model.modules) {module in
                            
                            //content
                            VStack (spacing: 20){
                                
                                NavigationLink(
                                    destination:
                                        ContentView()
                                        .onAppear(perform: {
                                            model.beginModule(module.id)
                                        }),
                                    tag: module.id,
                                    selection: $model.currentContentSelected,
                                    label: {
                                        HomeViewRow(image: module.content.image, title: "Learn \(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                                    })
                                
                                //test
                                
                                NavigationLink(
                                    destination: TestView()
                                        .onAppear(perform: {
                                            model.beginTest(module.id)
                                        }),
                                    tag: module.id,
                                    selection: $model.currentTestSelected,
                                    label: {
                                        HomeViewRow(image: module.test.image, title: " \(module.category) Test", description: module.test.description, count: "\(module.test.questions.count) Lessons", time: module.test.time)
                                    })
                                
                                NavigationLink(destination: EmptyView()) {
                                    EmptyView()
                                }
                                
                            }
                            
                        }
                        
                    }
                    .accentColor(.black)
                    .padding()
                }
                
            }
            .navigationBarTitle("Get Started")

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
