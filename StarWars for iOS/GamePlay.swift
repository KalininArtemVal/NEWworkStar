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
        print("""
        Давным-давно... в далекой галактике...
        Star Wars

        """)
        
        let deathStarPoint = Point.generate()
        let deathStar = DeathStar(coordinate: deathStarPoint)
        deathStar.shootHandler = space
        space.add(object: deathStar)
        
        let xWingPoint = Point.generate()
        let xWing = XWing(coordinate: xWingPoint)
        xWing.shootHandler = space
                
        space.add(object: xWing)
        
        // добавляем в игру Генерала Акбара
        
        let admiralAkbarPoint = Point.generate()
        let admiralAkbar = AdmiralAkbar(coordinate: admiralAkbarPoint)
        admiralAkbar.shootHandler = space
        space.add(object: admiralAkbar)
        
        // добавляем в игру Скайуокера и Звездный разрушитель
        
        let starDestroyerPoint = Point.generate()
        let starDestroyer = StarDestroyer(coordinate: starDestroyerPoint)
        starDestroyer.shootHandler = space
        space.add(object: starDestroyer)
        
        let LukeSkywalkerPoint = Point.generate()
        let lukeSkywalker = LukeSkywalker(coordinate: LukeSkywalkerPoint)
        lukeSkywalker.forceSpirit = space
        lukeSkywalker.shootHandler = space
        space.add(object: lukeSkywalker)
        
        //Призываем Люка на тёмную сторону
        
        deathStar.doPermition()
        
        //Люк отвечает на призыв перейти на тёмную сторону
        
        lukeSkywalker.sayNever()
        
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
