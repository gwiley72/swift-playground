import Cocoa

func tipPercentageForRating(rating: Int) -> Double? {
    guard rating >= 1 && rating <= 5 else {
        return nil
    }
    
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

//func calculateTipOnTotal(totalBill: Double, withRating rating: Int) -> Double {
//    guard let tipPercentage = tipPercentageForRating(rating) else {
//        return totalBill
//    }
//    
//    return totalBill
//}