func timeToPrepare(drinks: [String]) -> Double {
    var ans = 0.0
    for drink in drinks {
        if drink == "beer" || drink == "soda" || drink == "water" {
            ans += 0.5
        }else if drink == "shot" {
            ans += 1.0
        }else if drink == "mixed drink" {
            ans += 1.5
        }else if drink == "fancy drink" {
            ans += 2.5
        }else if drink == "frozen drink" {
            ans += 3.0
        }
    }
    return ans
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var ans = 0
    var aux = needed
    for lime in limes {
        if aux <= 0 {
            break
        }else{
            if lime == "small" {
                aux -= 6
                ans += 1
            }else if lime == "medium" {
                aux -= 8
                ans += 1
            }else {
                aux -= 10
                ans += 1
            }
        }
    }
    return ans
}


func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    guard minutesLeft>0 , remainingOrders.count>=0 else { return remainingOrders}
    var minutesLeftDouble = Double(minutesLeft)
    var newRemainingOrder = remainingOrders
    repeat {
        let order = newRemainingOrder.removeFirst()
        minutesLeftDouble -= timeToPrepare(drinks: order)
    } while minutesLeftDouble > 0.0 && !newRemainingOrder.isEmpty
    return newRemainingOrder
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    var beerOut: (first: String, last: String, total: Int)? = nil
    var sodaOut: (first: String, last: String, total: Int)? = nil
    
    for order in orders {
        if order.drink == "beer"{
            if var temp = beerOut {
                temp.last = order.time
                temp.total += 1
                beerOut = temp
            } else {
                beerOut = (first: order.time, last: order.time, total: 1)
            }
        } else if order.drink == "soda" {
            if var temp = sodaOut {
                temp.last = order.time
                temp.total += 1
                sodaOut = temp
            } else {
                sodaOut = (first: order.time, last: order.time, total: 1)
            }
        }
    }
    return (beerOut, sodaOut)
}

