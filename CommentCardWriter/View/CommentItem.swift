//
//  Comments.swift
//  CommentCardWriter
//
//  Created by Perkins, Alexander (ABH) on 04/02/2023.
//

import SwiftUI

struct CommentItem: View {
    @State private var commentHidden: Bool = true
    let beak: String
    
    var body: some View {
        Section (header: Text(beak)) {
            if !commentHidden{
                Text("I'm the greatest to have ever taken this class. In fact, I should be teaching.")
            }
            Section {
                Button("Copy", action:{})
                Button("Re-write", action:{commentHidden.toggle()})
            }
            .padding()
        }
    }
}

struct Comments_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(beak:"DPC")
    }
}
