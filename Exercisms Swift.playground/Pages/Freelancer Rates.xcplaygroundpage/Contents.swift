func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate*8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    var answer: Double = 0.0
    answer = dailyRateFrom(hourlyRate: (hourlyRate)) * 22 * (100-discount)/100
    answer = answer.rounded()
  return answer
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  return (22 * budget / monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: discount)).rounded(.down)
}
