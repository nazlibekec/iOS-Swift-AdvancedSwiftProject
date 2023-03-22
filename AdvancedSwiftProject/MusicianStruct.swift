//
//  MusicianStruct.swift
//  AdvancedSwiftProject
//
//  Created by Nazlı Bekeç on 21.03.2023.
//

import Foundation

struct MusicianStruct {
    var name : String
    var age : Int
    var instrument : String
    
    mutating func happyBirthday() {  //değişkeni değiştirebilmek için func u mutating olarak tanımlamak gerekiyor.
        self.age += 1
    }
}
