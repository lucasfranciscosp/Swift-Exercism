func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String ...) -> Int {
    return layers.count * 2
}

func quantities(layers: String ...) -> (noodles: Int, sauce: Double) {
    var numNoodles = 0
    var numSauce = 0
    for layer in layers {
        if layer == "noodles" {
            numNoodles += 1
        } else if layer == "sauce" {
            numSauce += 1
        }
    }
    return (numNoodles * 3 , Double(numSauce) * 0.2)
}

func toOz(_ amount : inout(noodles: Int, sauce: Double)) {
    amount.sauce = amount.sauce * 33.814
}

func redWine(layers: String ...) -> Bool {
    var meatAndSauce = 0
    var moRiBe = 0
    for layer in layers{
        if layer == "mozzarella" || layer == "ricotta" || layer == "béchamel" {
            moRiBe += 1
        }else if layer == "meat" || layer == "sauce" {
            meatAndSauce += 1
        }
    }
    if moRiBe > meatAndSauce {
        return false
    }
    return true
}
