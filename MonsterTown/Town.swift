//
//  Town.swift
//  MonsterTown
//
//  Created by Guligena Aierken on 8/12/22.
//

import Foundation

struct Town {
    var population = 5422
    var numberOfStoplights = 4
    
    func printDescription() {
        print("population: \(population) stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        guard population >= 0 else {
            print("People are all zombies!")
            return
        }
        
        population += amount
    }
}
