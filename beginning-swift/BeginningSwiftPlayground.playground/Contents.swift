
import Cocoa

struct Restaurant {
    let name: String
}

struct RestaurantBill {
    let restaurant: Restaurant
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

let chickenCafe = Restaurant(name: "Chicken Café")
let chickenCafeBill = RestaurantBill(restaurant: chickenCafe, totalBill: 85, rating: 2)
chickenCafeBill.calculateTip()

let tacoTavern = Restaurant(name: "Taco Tavern")
let tacoTavernBill = RestaurantBill(restaurant: tacoTavern, totalBill: 25, rating: 5)
tacoTavernBill.calculateTip()

tacoTavernBill.printAllTipOptions()