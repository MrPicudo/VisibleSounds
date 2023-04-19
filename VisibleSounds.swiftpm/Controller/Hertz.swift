/* Hertz.swift --> VisibleSounds. Created by Miguel Torres on 18/04/23. */

import SwiftUI

public func hertzvalue(name: String) -> String {
    
    var hz: String
    
    switch name.first {
    case "A":
        hz = "345Hz"
    case "B":
        hz = "1033Hz"
    case "C":
        hz = "1820Hz"
    case "D":
        hz = "2041Hz"
    case "E":
        hz = "3240Hz"
    case "F":
        hz = "3825Hz"
    case "G":
        hz = "3975Hz"
    case "H":
        hz = "4049Hz"
    case "I":
        hz = "4129Hz"
    case "J":
        hz = "4173Hz"
    case "K":
        hz = "4221Hz"
    case "L":
        hz = "4280Hz"
    case "M":
        hz = "4444Hz"
    case "N":
        hz = "4671Hz"
    case "O":
        hz = "4840Hz"
    case "P":
        hz = "5201Hz"
    case "Q":
        hz = "5284Hz"
    default:
        hz = "0Hz"
    }
    
    return hz
}
