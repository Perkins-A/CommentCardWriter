//
//  Division.swift
//  CommentCardWriter
//
//  Created by Perkins, Alexander (ABH) on 01/03/2023.
//

import Foundation

class Division: ObservableObject {
    let beak: String
    let code: String
    let subject: String
    @Published var comment: String
    var enjoyment: Double
    var understanding: Double
    private let enjoymentWords: [String] = ["really hating", "not enjoying", "pretty happy with", "enjoying", "loving"]
    private let understandingWords: [String] = ["none", "very little", "the majority", "most", "all"]
    
    init(_ beak:String,_ code:String, _ subject:String){
        self.beak = beak
        self.code = code
        self.subject = subject
        comment = "I'm \(enjoymentWords[3]) the \(self.subject) and I think I understand \(understandingWords[3]) of the content"
        enjoyment = 6.0
        understanding = 6.0
    }
    
    func rewrite() {
        comment = "I like this subject \(enjoyment)"
    }
    
    func findWord(sliderInput: Double, arrayOfWords: [String]) -> String {
        var wordIndex: Double = (sliderInput / 2.0)
        return arrayOfWords[wordIndex.rou]
    }
}
