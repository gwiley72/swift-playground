
import Cocoa

struct Restaurant {
    let name: String
}

struct RestaurantBill {
    let restaurant: Restaurant
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

let chickenCafe = Restaurant(name: "Chicken Café")
let chickenCafeBill = RestaurantBill(restaurant: chickenCafe, totalBill: 85, rating: 5)
chickenCafeBill.calculateTip()

let tacoTavern = Restaurant(name: "Taco Tavern")
let tacoTavernBill = RestaurantBill(restaurant: tacoTavern, totalBill: 25, rating: 5)
tacoTavernBill.calculateTip()
