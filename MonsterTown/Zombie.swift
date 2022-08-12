//
//  Zombie.swift
//  MonsterTown
//
//  Created by Guligena Aierken on 8/12/22.
//

import Foundation

class Zombie: Monster {
    var walkWithLimp: Bool
    private var isFallingApart: Bool
    
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
    
    
    init(walkWithLimp: Bool = true, isFallingAprt: Bool = true, town: Town?, name: String){
        self.walkWithLimp = walkWithLimp
        self.isFallingApart = isFallingAprt
        super.init(town: town, name: name)
    }
    
}
