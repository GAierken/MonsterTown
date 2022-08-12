//
//  Town.swift
//  MonsterTown
//
//  Created by Guligena Aierken on 8/12/22.
//

import Foundation

struct Town {
    static let world = "Galaxy"
    var region: String
    var population: Int
    var numberOfStoplights: Int
    init(region: String, population: Int = 5422, numberOfSpotLights: Int = 10) {
        self.region = region
        self.population = population
        self.numberOfStoplights = numberOfSpotLights
    }

    
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
