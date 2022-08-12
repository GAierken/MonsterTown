//
//  Monster.swift
//  MonsterTown
//
//  Created by Guligena Aierken on 8/12/22.
//

import Foundation

class Monster {
    static let isTerrifying = true
    class var spookyNoise: String {
        return "Grrrrr"
    }
    
    var town: Town?
    var name: String
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    init(town: Town?, name: String) {
        self.town = town
        self.name = name
    }
    
//    required init(town: Town?, name: String){
//        self.town = town
//        self.name = name
//    }
    
    func terrorizeTown() {
        guard town != nil else {
            print("\(name) has no monster")
            return
        }
        
        print("\(name) has a monster!")
    }
}
