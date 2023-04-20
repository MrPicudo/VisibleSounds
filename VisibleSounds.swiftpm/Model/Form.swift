/* Form.swift --> VisibleSounds. Created by Miguel Torres on 19/04/23. */

import Foundation

struct Form {
    let questions: [Question]
    subscript(_ questionIndex: Int) -> Question {
        return questions[questionIndex]
    }
}

struct Question {
    let name: String
    let choices: [Choice]
    init(_ name: String, choices: [Choice]) {
        self.name = name
        self.choices = choices
    }
}

struct Choice {
    let hertz: String
    let result: Bool
}
