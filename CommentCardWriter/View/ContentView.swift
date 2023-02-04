//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Perkins, Alexander (ABH) on 04/02/2023.
//

import SwiftUI


struct ContentView: View {
    @State private var commentHidden: Bool = true
    
    var body: some View {
        VStack {
            if !commentHidden {
                CommentItem().padding()
            }
            Button("Write Comment", action: {
                commentHidden.toggle()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}