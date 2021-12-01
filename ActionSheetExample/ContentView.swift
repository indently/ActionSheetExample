//
//  ContentView.swift
//  ActionSheetExample
//
//  Created by Federico on 01/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    @State private var text = "..."
    @State private var color = Color.black
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Rate us!") {
                isShowing.toggle()  
            }
            .font(.system(size: 30))
            .confirmationDialog("How did we do?", isPresented: $isShowing, titleVisibility: .visible) {
                Button("Good") {
                    text = "Good"
                    color = .green
                }
                Button("Average") {
                    text = "Average"
                    color = .yellow
                }
                Button("Bad") {
                    text = "Bad"
                    color = .red
                }
            }
            Text(text)
                .foregroundColor(color)
                .font(.system(size: 30))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
