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
    @State var enjoyment = 5.0
    
    var body: some View {
        Section (header: Text(beak)) {
            TextField(
                comment,
                text: $comment,
                prompt: Text("Write comments here")
            )
            Button("Copy", action:{
                UIPasteboard.general.setValue(comment, forPasteboardType: "public.plain-text")
            })
            Button("Re-write", action:{
                commentHidden.toggle()
            })
            HStack {
                Text("Enjoyment")
                Slider(
                    value: $enjoyment,
                    in: 0...10,
                    onEditingChanged: { _ in
                        print("editing")
                    }
                )
            }
        }
    }
}

struct Comments_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(beak:"DPC")
    }
}
