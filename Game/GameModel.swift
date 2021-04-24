//
//  GameModel.swift
//  Game
//
//  Created by Afnan MacBook Pro on 21/04/2021.
//

import SwiftUI

class GameModel: ObservableObject {
    
    @Published var text1: String = "" {
        didSet {
            firstInput = text1 + text3 + text5
        }
    }
 
    @Published var text2: String = "" {
        didSet {
            secondInput = text2 + text3 + text4
        }
    }
  
    @Published var text3: String = "" {
        didSet {
            firstInput = text1 + text3 + text5
            secondInput = text2 + text3 + text4
        }
    }
    
    @Published var text4: String = "" {
        didSet {
            secondInput = text2 + text3 + text4
        }
    }
    
    @Published var text5: String = "" {
        didSet {
            firstInput = text1 + text3 + text5
        }
    }
   
    @Published var isFirstResultTrue = false
    @Published var isSecondResultTrue = false
    
    var firstResult = "Cat"
    var secondResult = "Car"
    
   private var firstInput = "" {
        didSet {
            isFirstResultTrue = isResultTrue(firstInput, firstResult)
            print(isFirstResultTrue)
        }
    }
    
    private var secondInput = "" {
        didSet {
            isSecondResultTrue = isResultTrue(secondInput, secondResult)
            print(isSecondResultTrue)
        }
    }

    func isResultTrue(_ input: String, _ result: String) -> Bool {
        if input.lowercased() == result.lowercased() {
            return true
        } else {
            return false
        }
    }
    
    
    func isAword() {
        
    }
    
}
