import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    let newPoem = poem.components(separatedBy: "\n")
    return newPoem
}

func firstLetter(_ line: String) -> Character {
    return line.first ?? "_"
}

func capitalize(_ phrase: String) -> String {
    return phrase.capitalized
}

func trimFromEnd(_ line: String) -> String {
    return line.trimmingCharacters(in: .whitespaces)
}

func lastLetter(_ line: String) -> Character {
    return line.last ?? "_"
}

func backDoorPassword(_ phrase: String) -> String {
  return "\(capitalize(phrase)), please"
}


func ithLetter(_ line: String, i: Int) -> Character {
    guard line.count > i else { return " "}
    
    let index = line.index(line.startIndex, offsetBy: i)
    return line[index]
}

func secretRoomPassword(_ phrase: String) -> String {
    return phrase.uppercased() + "!"
}
