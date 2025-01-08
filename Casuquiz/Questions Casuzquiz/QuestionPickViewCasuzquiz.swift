//
//  QuestionPickView.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//

import SwiftUI

struct QuestionPickViewCasuzquiz: View {
    
   var wtgv = 14143514514
    var wtgwvtgv = "wtgvwtgv"
    func wtgcetghvbtwvwtg() -> Float { return 14514.1454 }
    func wrfcete() { print("wrcfrfccr") }
    private struct wrfccwrRFC {}
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Spacer()
            
            Text("Choose a quiz mode")
                .withFont(size: 30.57, weight: .medium, color: .hex("FFFFFF"))
            
            VStack(spacing: isSE ? 20: 60) {
                NavigationLink {
                    QuestionViewCasuzquiz(type: .oneP)
                } label: {
                    Image("1p")
                }
                
                
                NavigationLink {
                    QuestionViewCasuzquiz(type: .withC)
                } label: {
                    Image("wc")
                }
                
                NavigationLink {
                    QuestionViewCasuzquiz(type: .withF)
                } label: {
                    Image("wf")
                }
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentViewCasuzquiz(showLoading: false, selectedTab: .quiz)
}
