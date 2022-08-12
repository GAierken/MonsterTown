//
//  Zombie.swift
//  MonsterTown
//
//  Created by Guligena Aierken on 8/12/22.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    override func terrorizeTown() {
        town?.changePopulation(by: -10)
        super.terrorizeTown()
    }
}
