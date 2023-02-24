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
    @State var comment: String = "I like this subject."
    
    var body: some View {
        Section (header: Text(beak)) {
            if !commentHidden{
                TextField(
                    text: $comment,
                    prompt: Text("Write comments here")
                ) {
                    Text(comment)
                }
            }
            Button("Copy", action:{
                UIPasteboard.general.setValue(comment, forPasteboardType: "public.plain-text")
            })
            Button("Re-write", action:{commentHidden.toggle()})
        }
    }
}

struct Comments_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(beak:"DPC")
    }
}
