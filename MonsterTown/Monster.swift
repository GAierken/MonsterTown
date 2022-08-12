//
//  Monster.swift
//  MonsterTown
//
//  Created by Guligena Aierken on 8/12/22.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown() {
        guard town != nil else {
            print("\(name) has no monster")
            return
        }
        
        print("\(name) has a monster!")
    }
}
