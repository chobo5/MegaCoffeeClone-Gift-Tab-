//
//  GiftMenuDataManager.swift
//  MegaCoffeeClone
//
//  Created by 원준연 on 2023/04/06.
//

import UIKit

final class GiftMenuDataManager {
    
    static let shared = GiftMenuDataManager()
    
    private init() { }
    
    //MARK: - json데이터 그대로 받아오기
    func getAllMenuData() -> [Menu1] {
           guard let path = Bundle.main.path(forResource: "MenuData", ofType: "json") else { return [] }
           
           guard let jsonString = try? String(contentsOfFile: path) else { return [] }
           
           guard let data = jsonString.data(using: .utf8) else { return [] }
           
           let decoder = JSONDecoder()
           
           do {
               let menuData = try decoder.decode([Menu1].self, from: data)
               return menuData
           } catch {
               print(error)
               return []
           }
       }
    
    //MARK: - main화면의 추천메뉴 배열 만들기
    func getRecommendedMenus() -> [Menu1.MenuModel1] {
        let recommendMenuNames = ["딸기바나나주스", "레드오렌지자몽주스", "그릭요거딸기놀라", "그릭요거망고놀라", "한컵망고놀라", "(ICE)딸기라뗴", "딸기쿠키프라페", "딸기주스"]
        
        guard let path = Bundle.main.path(forResource: "MenuData", ofType: "json") else { return [] }
        
        guard let jsonString = try? String(contentsOfFile: path) else { return [] }
        
        guard let data = jsonString.data(using: .utf8) else { return [] }
        
        let decoder = JSONDecoder()
        
        do {
            let menuData = try decoder.decode([Menu1].self, from: data)
            let allMenus = menuData.flatMap { $0.menus }
            let recommendedMenus = allMenus.filter { recommendMenuNames.contains($0.name ?? "") }
            return recommendedMenus
        } catch {
            print(error)
            return []
        }
    }
    
    //MARK: - main화면의 Best메뉴 만들기
    func getBestMenus() -> [Menu1.MenuModel1] {
        let bestMenuNames = ["딸기주스", "딸기바나나주스", "레드오렌지자몽주스", "크리미생딸기도넛", "크로크무슈", "생딸기크로플", "(ICE)딸기라뗴", "딸기쿠키프라페", "경산대추과즐", "허니버터피자", "마르게리타피자", "잠봉버터블랙소금빵"]
        
        guard let path = Bundle.main.path(forResource: "MenuData", ofType: "json") else { return [] }
        
        guard let jsonString = try? String(contentsOfFile: path) else { return [] }
        
        guard let data = jsonString.data(using: .utf8) else { return [] }
        
        let decoder = JSONDecoder()
        
        do {
            let menuData = try decoder.decode([Menu1].self, from: data)
            let allMenus = menuData.flatMap { $0.menus }
            let bestMenus = allMenus.filter { bestMenuNames.contains($0.name ?? "") }
            return bestMenus
        } catch {
            print(error)
            return []
        }
    }
    
    //MARK: - 1차원배열로 받기(search에서 사용)
    func getAllFirstDimensionMenuData() -> [Menu1.MenuModel1] {
        guard let path = Bundle.main.path(forResource: "MenuData", ofType: "json") else { return [] }
        
        guard let jsonString = try? String(contentsOfFile: path) else { return [] }
        
        guard let data = jsonString.data(using: .utf8) else { return [] }
        
        let decoder = JSONDecoder()
        
        do {
            let menuData = try decoder.decode([Menu1].self, from: data)
            let allMenus = menuData.flatMap { $0.menus }
            return allMenus
        } catch {
            print(error)
            return []
        }
    }
    
}
