//
//  main.swift
//  MonsterTown
//
//  Created by Guligena Aierken on 8/12/22.
//

import Foundation

var myTown = Town()
myTown.changePopulation(by: 500)
//myTown.printDescription()
//
//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
