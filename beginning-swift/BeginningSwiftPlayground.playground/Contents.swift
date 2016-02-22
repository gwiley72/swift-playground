
import Cocoa

func tipPercentageForRating(rating: Int) -> Double {
    let tipPercentage: Double
    
    if rating == 5 {
        tipPercentage = 0.25
    } else if rating >= 3 {
        tipPercentage = 0.15
    } else {
        tipPercentage = 0.10
    }
    
    return tipPercentage
}

func calculateTipOnTotal(totalBill: Double, withRating rating: Int) -> Double {
    let tipPercentage = tipPercentageForRating(rating)
    
    return totalBill * tipPercentage
}

func showTipAdvice(restaurantTotal restaurantTotal: Double, rating: Int, restaurantName: String?) {
    let tip = calculateTipOnTotal(restaurantTotal, withRating: rating)
    
    if let restaurantName = restaurantName {
        print("You went out to eat at \(restaurantName)")
    }

    print("On a bill of $\(restaurantTotal), you should leave a tip of $\(tip)")
    print("That means a total of $\(restaurantTotal + tip)")
}

var restaurantName: String?

restaurantName = "Burger Barn"

showTipAdvice(restaurantTotal: 65, rating: 5, restaurantName: restaurantName)




