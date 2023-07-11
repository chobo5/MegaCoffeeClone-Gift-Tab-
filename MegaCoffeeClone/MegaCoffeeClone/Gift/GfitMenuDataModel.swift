//
//  GfitMenuData.swift
//  MegaCoffeeClone
//
//  Created by 원준연 on 2023/04/06.
//

import Foundation

struct Menu1: Codable { 
    let type: String?
    let menus: [MenuModel1]
    
    struct MenuModel1: Codable {
        let isGift: Bool?
        let image: String?
        var name: String?
        let description: String?
        let option: [OptionModel1]?
        let nutrition: NutritionModel1?
        let allergys: [String]?
        let price: Int?
        let soldOut: Bool?
        
        struct OptionModel1: Codable {
            let essentialCount: Int?
            let header: String?
            let details: [DetailModel1]?
        
            struct DetailModel1: Codable {
                let name: String?
                let price: Int?
                let count: Int?
                let soldOut: Bool?
                let isSelect: Bool?
            }
        }
        
        struct NutritionModel1: Codable {
            let calorie: Float?
            let saturatedFat: Float?
            let sugars: Float?
            let natrium: Float?
            let protein: Float?
            let caffeine: Float?
        }
    }
    
}

struct categoryInfo {
    let categoryName: String
    var isClicked: Bool
}
