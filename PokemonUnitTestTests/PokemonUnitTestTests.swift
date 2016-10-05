//
//  PokemonUnitTestTests.swift
//  PokemonUnitTestTests
//
//  Created by Jero Brokaar on 05/10/16.
//  Copyright © 2016 ABNAmro. All rights reserved.
//

import XCTest
@testable import PokemonUnitTest

class PokemonUnitTestTests: XCTestCase {
    
    var squirtle:Pokemon!
    var charmander:Pokemon!
    var psyduck:Pokemon!

    override func setUp() {
        super.setUp()
        squirtle = Pokemon(type: .Water, attackType: .Water)
        charmander = Pokemon(type: .Fire, attackType: .Fire)
        psyduck = Pokemon(type: .Water, attackType: .Water)
    }
    
    override func tearDown() {
        super.tearDown()
        squirtle = nil
        charmander = nil
        psyduck = nil
    }
    
    func testThatAWaterPokemonDoesMoreDamageToAFirePokemon() {
        //1. Have Squirtle Attack Charmander
        squirtle.attack(charmander)
        //Ouch!
        //2. Now Have Squirtle Attack Psyduck
        squirtle.attack(psyduck)
        //Oooh. That had to hurt.
        
        //Who took more damage? Charmander or Psyduck?
        
        //If a Water Pokemon Does More Damage To A Fire Pokemon,
        //We would expect Charmander to have less health than Psyduck.
        
        //3. Test it
        XCTAssertTrue(charmander.health < psyduck.health)
    }
    
}

// sourcetree commit check
