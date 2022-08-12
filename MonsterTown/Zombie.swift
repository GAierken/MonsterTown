//
//  Zombie.swift
//  MonsterTown
//
//  Created by Guligena Aierken on 8/12/22.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    private(set) var isFallingApart = false
    
    override class var spookyNoise: String {
        return "Brains..."
    }
    override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        town?.changePopulation(by: -10)
        super.terrorizeTown()
    }
}
