//
//  Comments.swift
//  CommentCardWriter
//
//  Created by Perkins, Alexander (ABH) on 04/02/2023.
//

import SwiftUI

struct CommentItem: View {
    @ObservedObject var division: Division
    
    var body: some View {
        Section (header: Text("\(division.beak) - \(division.code)")) {
            TextField(
                division.comment,
                text: $division.comment,
                prompt: Text("Write comments here"),
                axis: .vertical
            )
            Button("Copy", action:{
                UIPasteboard.general.setValue(division.comment, forPasteboardType: "public.plain-text")
            })
            Button("Re-write", action:{
                division.rewrite()
            })
            HStack {
                Text("Enjoyment")
                Slider(
                    value: $division.enjoyment,
                    in: 0...10,
                    onEditingChanged: { _ in
                        print("editingEnjoyment")
                    }
                )
            }
            HStack {
                Text("Understanding")
                Slider(
                    value: $division.understanding,
                    in: 0...10,
                    onEditingChanged: { _ in
                        print("editingUnderstanding")
                    }
                )
            }
        }
    }
}

struct Comments_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(division: Division("MC","CComX-1","Comp-sci"))
    }
}
