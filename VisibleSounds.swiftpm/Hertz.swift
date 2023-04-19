/* Hertz.swift --> VisibleSounds. Created by Miguel Torres on 18/04/23. */

import SwiftUI

public func hertzvalue(name: String) -> String {
    
    var hz: String
    
    switch name.first {
    case "A":
        hz = "345 Hz"
    case "B":
        hz = "1033 Hz"
    case "C":
        hz = "1820 Hz"
    case "D":
        hz = "2041 Hz"
    case "E":
        hz = "3240 Hz"
    case "F":
        hz = "3825 Hz"
    case "G":
        hz = "3975 Hz"
    case "H":
        hz = "4049 Hz"
    case "I":
        hz = "4129 Hz"
    case "J":
        hz = "4173 Hz"
    case "K":
        hz = "4221 Hz"
    case "L":
        hz = "4280 Hz"
    case "M":
        hz = "4444 Hz"
    case "N":
        hz = "4671 Hz"
    case "O":
        hz = "4840 Hz"
    case "P":
        hz = "5201 Hz"
    case "Q":
        hz = "5284 Hz"
    default:
        hz = "0 Hz"
    }
    
    return hz
}
