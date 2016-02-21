
import Cocoa

func calculateTipOnTotal(totalBill: Double, withRating rating: Int) -> Double {
    let tipPercentage: Double

    if rating == 5 {
        tipPercentage = 0.25
    } else if rating >= 3 {
        tipPercentage = 0.15
    } else {
        tipPercentage = 0.10
    }

    return totalBill * tipPercentage
}

let restaurantTotal = 95.00
let tip = calculateTipOnTotal(95.0, withRating: 3)
restaurantTotal + tip