//
//  Town.swift
//  MonsterTown
//
//  Created by Guligena Aierken on 8/12/22.
//

import Foundation

struct Town {
    static let world = "Galaxy"
    let region = "Middle"
    var population = 5422 {
        didSet(oldPopulation) {
            if population < oldPopulation {
                print("the population changes to \(population) from \(oldPopulation)")
            }
            
        }
    }
    var numberOfStoplights = 4
    
    enum Size {
        case small
        case medium
        case large
    }
    
    lazy var townSize: Size = {
        switch population {
        case 0...10000:
            return Size.small
        case 10001...100000:
            return Size.medium
        default:
            return Size.large
        }
    }()
    
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
