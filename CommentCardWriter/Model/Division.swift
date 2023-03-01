//
//  Division.swift
//  CommentCardWriter
//
//  Created by Perkins, Alexander (ABH) on 01/03/2023.
//

import Foundation

class Division {
    let beak: String
    let code: String
    var comment: String
    var enjoyment: Double
    var understanding: Double
    
    init(_ beak:String,_ code:String){
        self.beak = beak
        self.code = code
        comment = "I think I am doing great!"
        enjoyment = 5.0
        understanding = 5.0
    }
    
    func rewrite() {
        comment = "I like this subject \(enjoyment)"
    }
    
}
