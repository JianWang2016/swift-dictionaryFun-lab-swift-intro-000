//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = ["Joe": "Peanut Butter and Chocolate",
                                     "Tim": "Natural Vanilla",
                                     "Sophie": "Mexican Chocolate",
                                     "Deniz": "Natural Vanilla",
                                     "Tom": "Mexican Chocolate",
                                     "Jim": "Natural Vanilla",
                                     "Susan": "Cookies 'N' Cream"]
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var nameList: [String] = []
        
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                nameList.append(key)
            }
        }
        return nameList
        
    }
    
    
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var nameList: Array<String> = []
        
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                nameList.append(key)
            }
        }
        return nameList.count
        
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person) == nil {
            return false
        } else {
            return true
        }
        
    }
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream.removeValue(forKey: person) == nil {
            return false
        } else {
            return true
        }
    }
    
    
    
    
    
    
    // 7.
    
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            return true
        } else {
            return false
        }
    }
    

    
    
    
    
    
    
    // 9.
    
    func attendeeList() {
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()

        for key in allNames {
            
            print("\(key) likes \(favoriteFlavorsOfIceCream[key])")
   
            
        }
    }
    
    
    
    
    
    

}
