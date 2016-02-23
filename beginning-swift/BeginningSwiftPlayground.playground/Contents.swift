
import Cocoa

struct Restaurant {
    var name: String
}

struct RestaurantBill {
    var restaurant: Restaurant
    var totalBill: Double
    var rating: Int
    
    let tipPercentages: [Int: Double] = [5: 0.25, 4: 0.20, 3: 0.15, 2: 0.12, 1: 0.10]
    
    func printAllTipOptions() {
        for (rating, tipPercentage) in tipPercentages {
            let tip = totalBill * tipPercentage
            print("Leave a $\(tip) tip for a \(rating)-star rating")
        }
    }
    
    func calculateTip() -> Double {
        guard let tipPercentage = tipPercentages[rating] else {
            return totalBill
        }
        
        return totalBill * tipPercentage
    }
    
}

var chickenCafe = Restaurant(name: "Chicken Café")
var bill1 = RestaurantBill(restaurant: chickenCafe, totalBill: 85, rating: 2)
var bill2 = RestaurantBill(restaurant: chickenCafe, totalBill: 30, rating: 4)
