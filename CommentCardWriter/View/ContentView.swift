//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Perkins, Alexander (ABH) on 04/02/2023.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        List() {
            CommentItem(division: Division("DPC","CComX-1","Comp-sci"))
            CommentItem(division: Division("MC","CComX-1","Comp-sci"))
            CommentItem(division: Division("BJH","CMat2-1","Maths"))
        } 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
