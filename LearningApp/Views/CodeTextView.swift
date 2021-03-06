//
//  CodeTextView.swift
//  LearningApp
//
//  Created by Daniel Moradi Kahlou on 11.07.21.
//

import SwiftUI

struct CodeTextView: UIViewRepresentable {
    
    @EnvironmentObject var model:ContentModel
    
    func makeUIView(context: Self.Context) -> UITextView {
        
        let textView = UITextView()
        textView.isEditable = false
        
        return textView
        
    }
    
    func updateUIView(_ textView: UITextView, context: Self.Context) {
        
        // Set the attributed text for the lesson
        
        textView.attributedText = model.lessonDescription
        
        // Scroll back to the top
        textView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1), animated: false)
        
        
    }
    
}

struct CodeTextView_Previews: PreviewProvider {
    static var previews: some View {
        CodeTextView()
    }
}
