/* MyForm.swift --> VisibleSounds. Created by Miguel Torres on 19/04/23. */

import SwiftUI

let form = Form(questions: [
    Question("A30",
        choices: [
            Choice(hertz: "345Hz", result: true),
            Choice(hertz: "1820Hz", result: false),
            Choice(hertz: "1033Hz", result: false),
            Choice(hertz: "255Hz", result: false)
        ]
    ),
    Question("G30",
        choices: [
            Choice(hertz: "3240Hz", result: false),
            Choice(hertz: "4049Hz", result: false),
            Choice(hertz: "3975Hz", result: true),
            Choice(hertz: "4129Hz", result: false)
        ]
    ),
    Question("N30",
        choices: [
            Choice(hertz: "4671Hz", result: true),
            Choice(hertz: "4280Hz", result: false),
            Choice(hertz: "5201Hz", result: false),
            Choice(hertz: "3825Hz", result: false)
        ]
    ),
    Question("D30",
        choices: [
            Choice(hertz: "4444Hz", result: false),
            Choice(hertz: "2041Hz", result: true),
            Choice(hertz: "4840Hz", result: false),
            Choice(hertz: "5284Hz", result: false)
        ]
    ),
    Question("J30",
        choices: [
            Choice(hertz: "3240Hz", result: false),
            Choice(hertz: "4173Hz", result: true),
            Choice(hertz: "4444Hz", result: false),
            Choice(hertz: "5201Hz", result: false)
        ]
    ),
    Question("Q30",
        choices: [
            Choice(hertz: "5284Hz", result: true),
            Choice(hertz: "2041Hz", result: false),
            Choice(hertz: "4671Hz", result: false),
            Choice(hertz: "3825Hz", result: false)
        ]
    ),
    Question("K30",
        choices: [
            Choice(hertz: "4221Hz", result: true),
            Choice(hertz: "4840Hz", result: false),
            Choice(hertz: "3975Hz", result: false),
            Choice(hertz: "4049Hz", result: false)
        ]
    ),
    Question("E30",
        choices: [
            Choice(hertz: "3240Hz", result: true),
            Choice(hertz: "345Hz", result: false),
            Choice(hertz: "4129Hz", result: false),
            Choice(hertz: "4671Hz", result: false)
        ]
    ),
    Question("M30",
        choices: [
            Choice(hertz: "2041Hz", result: false),
            Choice(hertz: "4444Hz", result: true),
            Choice(hertz: "3975Hz", result: false),
            Choice(hertz: "5284Hz", result: false)
        ]
    ),
    Question("P30",
        choices: [
            Choice(hertz: "5201Hz", result: true),
            Choice(hertz: "4173Hz", result: false),
            Choice(hertz: "4221Hz", result: false),
            Choice(hertz: "4671Hz", result: false)
        ]
    ),
    Question("H30",
        choices: [
            Choice(hertz: "3240Hz", result: false),
            Choice(hertz: "4049Hz", result: true),
            Choice(hertz: "4444Hz", result: false),
            Choice(hertz: "4840Hz", result: false)
             ]
            ),
    Question("O30",
        choices: [
            Choice(hertz: "4840Hz", result: true),
            Choice(hertz: "3825Hz", result: false),
            Choice(hertz: "4221Hz", result: false),
            Choice(hertz: "5201Hz", result: false)
        ]
    ),
    Question("B30",
        choices: [
            Choice(hertz: "4840Hz", result: false),
            Choice(hertz: "1033Hz", result: true),
            Choice(hertz: "4671Hz", result: false),
            Choice(hertz: "4444Hz", result: false)
        ]
    ),
    Question("C30",
        choices: [
            Choice(hertz: "5201Hz", result: false),
            Choice(hertz: "3975Hz", result: false),
            Choice(hertz: "2041Hz", result: false),
            Choice(hertz: "1820Hz", result: true)
        ]
    ),
    Question("F30",
        choices: [
            Choice(hertz: "3240Hz", result: false),
            Choice(hertz: "3825Hz", result: true),
            Choice(hertz: "4049Hz", result: false),
            Choice(hertz: "5284Hz", result: false)
        ]
    ),
    Question("I30",
        choices: [
            Choice(hertz: "345Hz", result: false),
            Choice(hertz: "4221Hz", result: false),
            Choice(hertz: "4129Hz", result: true),
            Choice(hertz: "4173Hz", result: false)
        ]
    ),
    Question("L30",
        choices: [
            Choice(hertz: "4280Hz", result: true),
            Choice(hertz: "2041Hz", result: false),
            Choice(hertz: "4840Hz", result: false),
            Choice(hertz: "5201Hz", result: false)
        ]
    )
])
