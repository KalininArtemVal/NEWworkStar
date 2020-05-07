//
//  GamePlay.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

class GamePlay {
    
    //MARK: - Properties
    
    private let space = Space()
    
    func play() {
        print("Давным давно в далекой галактике")
        
        let deathStarPoint = Point.generate()
        let deathStar = DeathStar(coordinate: deathStarPoint)
        deathStar.shootHandler = space
        space.add(object: deathStar)
        
        let xWingPoint = Point.generate()
        let xWing = XWing(coordinate: xWingPoint)
        xWing.shootHandler = space
                
        space.add(object: xWing)
        
        // добавляем в игру Генерала Акбара
        
        let generalAkbarPoint = Point.generate()
        let generalAkbar = GeneralAkbar(coordinate: generalAkbarPoint)
        generalAkbar.shootHandler = space
        space.add(object: generalAkbar)
        
        // добавляем в игру Скайуокера и Звездный разрушитель
        
        let starDestroyerPoint = Point.generate()
        let starDestroyer = StarDestroyer(coordinate: starDestroyerPoint)
        starDestroyer.shootHandler = space
        space.add(object: starDestroyer)
        
        let LukeSkywalkerPoint = Point.generate()
        let lukeSkywalker = LukeSkywalker(coordinate: LukeSkywalkerPoint)
        lukeSkywalker.shootHandler = space
        space.add(object: lukeSkywalker)
        
        let radarPoint = Point.generate()
        let radar = Radar(coordinate: radarPoint)
                
        radar.datasource = space
        radar.observer = xWing
        radar.observer = lukeSkywalker
        radar.toggle()        
        space.add(object: radar)
    }
    
    deinit {
        print("Game Over")
    }
}
