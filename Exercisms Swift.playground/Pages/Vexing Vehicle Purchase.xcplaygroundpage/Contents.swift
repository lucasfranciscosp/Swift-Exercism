func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    if monthlyBudget * 12 * 5 >= price{
        return "Yes! I'm getting a \(vehicle)"
    } else if (price <= monthlyBudget * 12 * 5 * 1.1){
        return "I'll have to be frugal if I want a \(vehicle)"
    } else {
        return "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    if wheels == 2 || wheels == 3 {
        return "You will need a motorcycle license for your vehicle"
    } else if  wheels == 4 || wheels == 6 {
        return "You will need an automobile license for your vehicle"
    } else if wheels == 18 {
        return "You will need a commercial trucking license for your vehicle"
    } else {
        return "We do not issue licenses for those types of vehicles"
    }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    if yearsOld>=10 {
        return 25
    }else {
        let maximo = max(msrp,25000)
        var novo_preco = maximo
        novo_preco -= maximo/10*yearsOld
        return novo_preco/100
    }
  }
