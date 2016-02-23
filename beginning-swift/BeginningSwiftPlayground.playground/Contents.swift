import Cocoa

struct RestaurantBill {
    let restaurantName: String
    var totalBill: Double
    var rating: Int
    
    func tipPercentage() -> Double? {
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
    
    func calculateTip() -> Double {
        guard let tipPercentage = tipPercentage() else {
            return totalBill
        }
        
        return totalBill * tipPercentage
    }
}

let chickenCafeBill = RestaurantBill(restaurantName: "Chicken Cafe", totalBill: 85, rating: 5)



chickenCafeBill.calculateTip()