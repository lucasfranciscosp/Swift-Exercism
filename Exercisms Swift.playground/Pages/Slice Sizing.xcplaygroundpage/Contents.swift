func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let d = diameter, d >= 0, let s = slices, s > 0 else { return nil }
    let radius = d / 2
    return Double.pi * radius * radius / Double(s)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    if let a = areaA {
        if let b = areaB {
            if a > b {
                return "Slice A is bigger"
            }else if a < b {
                return "Slice B is bigger"
            }
            return "Neither slice is bigger"
        } else {
            return "Slice A is bigger"
        }
    } else if areaB != nil {
        return "Slice B is bigger"
    }
    return "Neither slice is bigger"
    
}
