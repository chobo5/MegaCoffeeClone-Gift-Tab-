//
//  DummyDatas.swift
//  MegaCoffeeClone
//
//  Created by PKW on 2022/10/05.
// 123

import Foundation
import UIKit

struct StoreModel {
    let name: String
    let address: String
    let distance: Int
    let bookMark: Bool
    let isOn: Bool
    let storeImage: UIImage
}

struct CategoryModel {
    let name: String
    var isSelected: Bool
}


let storeDatas = [
    StoreModel(name: "평택장당점1", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: true, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점2", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: true, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점3", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점4", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: true, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점5", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점6", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: true, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점7", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: true, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점8", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점9", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점10", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택이충점1", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택이충점2", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택이충점3", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택이충점4", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택이충점5", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택이충점6", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택이충점7", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택이충점8", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택이충점9", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택이충점10", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택송탄점1", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택송탄점2", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택송탄점3", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택송탄점4", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택송탄점5", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택송탄점6", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택송탄점7", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택송탄점8", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택송탄점9", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택송탄점10", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택고덕점1", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택고덕점2", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택고덕점3", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택고덕점4", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택고덕점5", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택고덕점6", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택고덕점7", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택고덕점8", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택고덕점9", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택고덕점10", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage())
]

let likeStoreDatas = [
    StoreModel(name: "평택장당점1", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: true, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점2", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: true, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점3", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점4", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: true, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage()),
    StoreModel(name: "평택장당점5", address: "경기도 평택시 송탄로40번길 79-21", distance: 345, bookMark: false, isOn: false, storeImage: UIImage(named: "MegaCoffeeStore") ?? UIImage())
]

var categorys = [
    CategoryModel(name: "세트메뉴", isSelected: false),
    CategoryModel(name: "신메뉴", isSelected: false),
    CategoryModel(name: "커피(HOT)", isSelected: false),
    CategoryModel(name: "커피(ICE)", isSelected: false),
    CategoryModel(name: "스무디&프라페", isSelected: false),
    CategoryModel(name: "에이드&주스", isSelected: false),
    CategoryModel(name: "AR손흥민 메뉴", isSelected: false),
    CategoryModel(name: "병음료", isSelected: false),
    CategoryModel(name: "Tea", isSelected: false),
    CategoryModel(name: "커피(콜드브루)", isSelected: false),
    CategoryModel(name: "디카페인", isSelected: false),
    CategoryModel(name: "BEVERAGE", isSelected: false),
    CategoryModel(name: "디저트", isSelected: false),
    CategoryModel(name: "MD상품", isSelected: false)
]


// MARK: 상품 데이터 모델
enum MenuType2: String {
    case set = "세트메뉴"
    case new = "신메뉴"
    case hot = "커피(HOT)"
    case ice = "커피(ICE)"
    case smoothieAndFrappe = "스무디&프라페"
    case aidAndJuice = "에이드&주스"
    case arSonMenu = "AR손흥민 메뉴"
    case bottle = "병음료"
    case tea = "Tea"
    case coldBrew = "커피(콜드브루)"
    case decaffeination = "디카페인"
    case beverage = "BEVERAGE"
    case dessert = "디저트"
    case md = "MD상품"
    case recommend = "추천메뉴"
    case best = "BEST"
}

struct MenusModel {
    let type: MenuType2
    var menus: [MenuModel2]
}

struct MenuModel2 {
    let imageName: String
    let name: String
    let description: String
    var option: [OptionModel]
    let nutrition: NutritionModel
    let allergys: AllergyModel
    let price: Int
    let soldOut: Bool
}

struct OptionModel {
    let essentialCount: Int
    let header: String
    var details: [DetailsModel]
}

struct DetailsModel: Codable {
    let name: String
    let price: Int
    var count: Int
    let soldOut: Bool
    var isSelect: Bool
}

struct NutritionModel {
    let calorie: Double?
    let saturatedFat: Double?
    let sugars: Double?
    let natrium: Double?
    let protein: Double?
    let caffeine: Double?
}

struct AllergyModel {
    let names: [String]?
}

struct SearchProductModel {
    let type: String
    let products: MenuModel2
}

struct RecommendMenuModel {
    let image: UIImage
    let name: String
    let price: Int
    var isSelect: Bool
}

//Gift- 상품검색 페이지 모델
struct GiftSearchProductModel {
    let type: String
    let products: SimpleMenuModel
}

struct SimpleMenuModel {
    let image: UIImage
    let name: String
    let price: Int
}

struct GiftCategoryModel {
    let categoryName: String
    var isClicked: Bool
}



let menuList = [
    MenusModel(type: .set,
               menus: [MenuModel2(imageName: "ICE-32oz Americano",
                                  name: "버터소금빵(프레지덩버터)세트",
                                  description: "버터소금빵 + 프레지덩 버터 + (HOT)아메리카노 = 4,700원",
                                  option: [OptionModel(essentialCount: 0,
                                                       header: "버터소금빵 선택",
                                                       details: [DetailsModel(name: "버터소금빵(프레지덩버터)",price: 0, count: 1, soldOut: false, isSelect: true)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "아메리카노 선택(HOT/ICE)",
                                                       details: [DetailsModel(name: "(HOT)아메리카노", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "(ICE)아메리카노 +500원", price: 500, count: 1, soldOut: false, isSelect: false)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "농도",
                                                       details: [DetailsModel(name: "선택안함", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "연하게", price: 0, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "샷 추가 +500원", price: 500, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "2샷 추가 +1000원", price: 1000, count: 1, soldOut: false, isSelect: false)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "프레지덩버터추가구매",
                                                       details: [DetailsModel(name: "선택안함", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "프레지덩버터 추가 +500원", price: 500, count: 1, soldOut: false, isSelect: false)])],
                                  nutrition: NutritionModel(calorie: nil,
                                                            saturatedFat: nil,
                                                            sugars: nil,
                                                            natrium: nil,
                                                            protein: nil,
                                                            caffeine: nil),
                                  allergys: AllergyModel(names: nil),
                                  price: 4700,
                                  soldOut: true),
                       MenuModel2(imageName: "ICE-Applecitron Tea",
                                  name: "크루아상(프레지덩버터)세트",
                                  description: "크루아상 + 프레지덩 버터 + (HOT)아메리카노 = 4,700원",
                                  option: [OptionModel(essentialCount: 0,
                                                       header: "크루아상 선택",
                                                       details: [DetailsModel(name: "크루아상(프레지덩버터)",price: 0, count: 1, soldOut: false, isSelect: true)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "아메리카노 선택(HOT/ICE)",
                                                       details: [DetailsModel(name: "(HOT)아메리카노", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "(ICE)아메리카노 +500원", price: 500, count: 1, soldOut: false, isSelect: false)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "농도",
                                                       details: [DetailsModel(name: "선택안함", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "연하게", price: 0, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "샷 추가 +500원", price: 500, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "2샷 추가 +1000원", price: 1000, count: 1, soldOut: false, isSelect: false)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "프레지덩버터추가구매",
                                                       details: [DetailsModel(name: "선택안함", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "프레지덩버터 추가 +500원", price: 500, count: 1, soldOut: false, isSelect: false)])],
                                  nutrition: NutritionModel(calorie: nil,
                                                            saturatedFat: nil,
                                                            sugars: nil,
                                                            natrium: nil,
                                                            protein: nil,
                                                            caffeine: nil),
                                  allergys: AllergyModel(names: nil),
                                  price: 4700,
                                  soldOut: false),
                       MenuModel2(imageName: "ICE-Lime Mojito",
                                  name: "잠봉버터블랙소금빵세트",
                                  description: "잠봉 버터 블랙소금빵 + 아메리카노",
                                  option: [OptionModel(essentialCount: 0,
                                                       header: "잠봉버터블랙소금빵 선택",
                                                       details: [DetailsModel(name: "잠봉버터블랙소금빵",price: 0, count: 1, soldOut: false, isSelect: true)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "아메리카노 선택(HOT/ICE)",
                                                       details: [DetailsModel(name: "(HOT)아메리카노", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "(ICE)아메리카노 +500원", price: 500, count: 1, soldOut: false, isSelect: false)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "농도",
                                                       details: [DetailsModel(name: "선택안함", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "연하게", price: 0, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "샷 추가 +500원", price: 500, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "2샷 추가 +1000원", price: 1000, count: 1, soldOut: false, isSelect: false)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "잼/버터 추가 구매",
                                                       details: [DetailsModel(name: "선택안함", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "쥬에그잼(딸기) +800원", price: 800, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "쥬에그잼(살구) +800원", price: 800, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "프레지덩버터 추가 +500원", price: 500, count: 1, soldOut: false, isSelect: false)])],
                                  nutrition: NutritionModel(calorie: nil,
                                                            saturatedFat: nil,
                                                            sugars: nil,
                                                            natrium: nil,
                                                            protein: nil,
                                                            caffeine: nil),
                                  allergys: AllergyModel(names: nil),
                                  price: 6900,
                                  soldOut: false),
                       MenuModel2(imageName: "ICE-MEGA Chocolate",
                                  name: "버터소금빵(쥬에그잼)세트",
                                  description: "버터소금빵 + 쥬에그잼 + (HOT)아메리카노 = 5,000원",
                                  option: [OptionModel(essentialCount: 0,
                                                       header: "버터소금빵 선택",
                                                       details: [DetailsModel(name: "버터소금빵(쥬에그잼)",price: 0, count: 1, soldOut: false, isSelect: true)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "아메리카노 선택(HOT/ICE)",
                                                       details: [DetailsModel(name: "(HOT)아메리카노", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "(ICE)아메리카노 +500원", price: 500, count: 1, soldOut: false, isSelect: false)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "농도",
                                                       details: [DetailsModel(name: "선택안함", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "연하게", price: 0, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "샷 추가 +500원", price: 500, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "2샷 추가 +1000원", price: 1000, count: 1, soldOut: false, isSelect: false)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "기본 제공 잼 선택",
                                                       details: [DetailsModel(name: "쥬에그잼(딸기)", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "쥬에그잼(살구)", price: 0, count: 1, soldOut: false, isSelect: false)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "잼 추가 구매",
                                                       details: [DetailsModel(name: "선택안함", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "쥬에그잼(딸기) +800원", price: 800, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "쥬에그잼(살구) +800원", price: 800, count: 1, soldOut: false, isSelect: false)])],
                                  nutrition: NutritionModel(calorie: nil,
                                                            saturatedFat: nil,
                                                            sugars: nil,
                                                            natrium: nil,
                                                            protein: nil,
                                                            caffeine: nil),
                                  allergys: AllergyModel(names: nil),
                                  price: 5000,
                                  soldOut: false),
                       MenuModel2(imageName: "HOT-Coldbrew",
                                  name: "달콤한마카롱세트",
                                  description: "쿠키프라페 마카롱 2종, 퐁크러쉬 마카롱 2종, 유니콘프라페 마카롱2종으로 구성됩니다.",
                                  option: [OptionModel(essentialCount: 6,
                                                       header: "마카롱세트 구성(필수 6개 선택)",
                                                       details: [DetailsModel(name: "유니콘프라페마카롱",price: 0, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "쿠키프라페마카롱",price: 0, count: 1, soldOut: true, isSelect: false),
                                                                 DetailsModel(name: "퐁크러쉬마카롱",price: 0, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "바닐라마카롱",price: 0, count: 1, soldOut: true, isSelect: false),
                                                                 DetailsModel(name: "메카초코마카롱",price: 0, count: 1, soldOut: false, isSelect: false),
                                                                 DetailsModel(name: "딸기요거트마카롱",price: 0, count: 1, soldOut: false, isSelect: false)]),
                                           OptionModel(essentialCount: 0,
                                                       header: "마카롱박스포장",
                                                       details: [DetailsModel(name: "선택안함", price: 0, count: 1, soldOut: false, isSelect: true),
                                                                 DetailsModel(name: "(포장)마카롱박스 +500원", price: 500, count: 1, soldOut: false, isSelect: false)])],
                                  nutrition: NutritionModel(calorie: nil,
                                                            saturatedFat: nil,
                                                            sugars: nil,
                                                            natrium: nil,
                                                            protein: nil,
                                                            caffeine: nil),
                                  allergys: AllergyModel(names: nil),
                                  price: 12600,
                                  soldOut: false)
                       
               ]),
    
    //MARK: - chobo5가 만듬(추후 수정필요)
    //MARK: - new
    MenusModel(type: .new,
               menus: [MenuModel2(imageName: "ICE-Taegeuk Warriors' Red Bull Energy", name: "태극전사레드불에너지", description: "우리나라 국기의 태극 문양을 표현한 트로피컬 맛의 에너지 드링크(With Red Bull Sugarfree)",
                                  
                                  option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                                  
                                  nutrition: NutritionModel(calorie: 184.1, saturatedFat: 0.0, sugars: 42.8, natrium: 52.9, protein: 0.8, caffeine: 32.2),
                                  
                                  allergys: AllergyModel(names: [""]),
                                  
                                  price: 4400,
                                  soldOut: false),
                       
                       //정보가 존재하지 않는 상품
                       MenuModel2(imageName: "ICE-The Red Devils' Red Bull Energy", name: "붉은악마레드불에너지", description: "월드컵의 상징 붉은악마를 표현한 새콤달콤한 체리콬 맛의 에너지 드링크(With Red Bull Sugarfree)",
                                  
                                          option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                                          
                                  nutrition: NutritionModel(calorie: 201.9, saturatedFat: 0.0, sugars: 47.4, natrium: 49.2, protein: 1.4, caffeine: 43.3),
                                          
                                          allergys: AllergyModel(names: [""]),
                                  
                                          price: 4400,
                                          soldOut: false),
                       
                       MenuModel2(imageName: "ICE-S'more Black Cookie Frappe", name: "스모어블랙쿠키프라페",
                                         description: "진한 초코스무디에 바삭한 쿠키를 넣어 퐁신퐁신한 마시멜로우 잼과 함께 달콤하게 즐기는 스무디.",
                                   
                                         option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                                   
                                  nutrition: NutritionModel(calorie: 596.1, saturatedFat: 8.2, sugars: 77.7, natrium: 402.9, protein: 9.8, caffeine: 37.0),
                                   
                                         allergys: AllergyModel(names: [""]),
                                   
                                         price: 4400, soldOut: false),
                       
                       
                       MenuModel2(imageName: "HOT-Red Orange Vin Chaud TEAPLEASURE", name: "(HOT)레드오렌지뱅쇼티플레저", description: "안토시아닌이 풍부하게 들어간 레드오렌지 뱅쇼베이스에 와인 티백을 활용한 티플레저.",
                                  
                                          option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                                          
                                  nutrition: NutritionModel(calorie: 151.8, saturatedFat: 0.0, sugars: 32.1, natrium: 23.9, protein: 0.6, caffeine: 0.0),
                                          
                                          allergys: AllergyModel(names: [""]),
                                  
                                          price: 3900,
                                          soldOut: false),
                       
                       MenuModel2(imageName: "ICE-Red Orange Vin Chaud TEAPLEASURE", name: "(ICE)레드오렌지뱅쇼티플레저", description: "안토시아닌이 풍부하게 들어간 레드오렌지 뱅쇼베이스에 와인 티백을 활용한 티플레저.",
                                  
                                          option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                                          
                                  nutrition: NutritionModel(calorie: 151.8, saturatedFat: 0.0, sugars: 32.1, natrium: 23.9, protein: 0.6, caffeine: 0.0),
                                          
                                          allergys: AllergyModel(names: [""]),
                                  
                                          price: 3900,
                                          soldOut: false)
               ]),
    
    //MARK: - 커피(ICE)
    MenusModel(type: .ice,
               menus: [MenuModel2(imageName: "ICE-Americano", name: "(ICE)아메리카노",
                                  description: "메가MGC커피 블렌드 원두로 추출한 에스프레소에 물을 더해, 풍부한 바디감을 느낄 수 있는 스탠다드 커피.",
                                  
                                  option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                                  
                                  nutrition: NutritionModel(calorie: 18, saturatedFat: 0.9, sugars: 0, natrium: 0.3, protein: 0.3, caffeine: 193.1),
                                  
                                  allergys: AllergyModel(names: [""]),
                                  
                                  price: 2000, soldOut: false),
                       
                       MenuModel2(imageName: "ICE-32oz Americano", name: "(ICE)메가리카노",
                                          description: "",
                                  
                                          option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                                  
                                          nutrition: NutritionModel(calorie: 18, saturatedFat: 0.9, sugars: 0, natrium: 0.3, protein: 0.3, caffeine: 193.1),
                                  
                                          allergys: AllergyModel(names: [""]),
                                  
                                  price: 3000, soldOut: false),
                       
                       MenuModel2(imageName: "ICE-Gelato Affogato", name: "젤라또 아포가토",
                                          description: "바닐라 젤라또에 진한 에스프레소를 부어 만든 이탈리아 디저트",
                                  
                                          option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                                  
                                  nutrition: NutritionModel(calorie: 0.0, saturatedFat: 0.0, sugars: 0.0, natrium: 0.0, protein: 0.0, caffeine: 0.0),
                                  
                                          allergys: AllergyModel(names: [""]),
                                  
                                  price: 3200, soldOut: false),
                       
               ]),
    
    //MARK: - 커피(HOT)
    MenusModel(type: .hot,
               menus:
                [MenuModel2(imageName: "HOT-Americano", name: "(HOT)아메리카노",
                                  description: "메가MGC커피 블렌드 원두로 추출한 에스프레소에 물을 더해, 풍부한 바디감을 느낄 수 있는 스탠다드 커피.",
                            
                                  option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                            
                                  nutrition: NutritionModel(calorie: 18, saturatedFat: 0.9, sugars: 0, natrium: 0.3, protein: 0.3, caffeine: 193.1),
                            
                                  allergys: AllergyModel(names: [""]),
                            
                                  price: 1500, soldOut: false),
                 
                 MenuModel2(imageName: "HOT-Espresso Doppio", name: "에스프레소 도피오",
                                   description: "메가MGC커피의 원두 향미를 온전히 즐길 수 있는 투샷 에스프레소",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 0.0, saturatedFat: 0.0, sugars: 0.0, natrium: 0.0, protein: 0.0, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 2000, soldOut: false),
                 
                 MenuModel2(imageName: "HOT-Espresso Pieno", name: "에스프레소 피에노",
                                   description: "에스프레소에 크림과 코코아 파우더를 올려 부드럽게 즐길 수 있는 음료.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 0.0, saturatedFat: 0.0, sugars: 0.0, natrium: 0.0, protein: 0.0, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 2400, soldOut: false),
                 
                 MenuModel2(imageName: "HOT-Espresso", name: "에스프레소",
                                   description: "메가MGC커피 블렌딩 원두의 향미를 온전히 즐길 수 있는 메뉴.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                                   nutrition: NutritionModel(calorie: 0.0, saturatedFat: 0.0, sugars: 0.0, natrium: 0.0, protein: 0.0, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 1500, soldOut: false),
                       
               ]),
    
    //MARK: - 스무디&프라페
    MenusModel(type: .smoothieAndFrappe,
               menus:
                
                [MenuModel2(imageName: "ICE-Green Tea Frappe", name: "녹차프라페",
                                  description: "향긋한 녹차 위에 우유와 휘핑크림을 더해 더 부드럽게 즐길 수 있는 프라페.",
                            
                                  option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                            
                            nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                            
                                  allergys: AllergyModel(names: [""]),
                            
                                  price: 3900, soldOut: false),
                       
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "ICE-Strawberry Cookie Frappe", name: "딸기쿠키프라페",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3900, soldOut: false),
                 
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "ICE-Strawberry Yogurt Smoothie", name: "딸기요거트스무디",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3900, soldOut: false),
                 
                 MenuModel2(imageName: "ICE-S'more Black Cookie Frappe", name: "스모어블랙쿠키프라페",
                                   description: "진한 초코스무디에 바삭한 쿠키를 넣어 퐁신퐁신한 마시멜로우 잼과 함께 달콤하게 즐기는 스무디.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 596.1, saturatedFat: 8.2, sugars: 77.7, natrium: 402.9, protein: 9.8, caffeine: 37.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 4400, soldOut: false),
                 
                 MenuModel2(imageName: "ICE-Unicorn Frappe", name: "유니콘프라페",
                                   description: "다채로운 비주얼로 보는 즐거움을 채우고, 달콤함과 상큼함 색깔마다 달라지는 유쾌한 맛까지 잡은 이색프라페.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 539, saturatedFat: 16.7, sugars: 64.3, natrium: 159.1, protein: 6.5, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 4800, soldOut: false),
                 
                 MenuModel2(imageName: "ICE-Cookie Frappe", name: "쿠키프라페",
                                   description: "바삭하고 달콤한 오레오와 고소한 우유, 부드러운 바닐라향의 조화를 느낄 수 있는 프라페.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 892.8, saturatedFat: 27.2, sugars: 77.3, natrium: 446.7, protein: 10.9, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3900, soldOut: false),
                 
                 MenuModel2(imageName: "ICE-Cookie Frappe", name: "플레인퐁크러쉬",
                                   description: "우유에 죠리퐁 씨리얼이 믹심 된 얼음을 갈아 만든 시원한 프라페음료.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 609.4, saturatedFat: 11.8, sugars: 66, natrium: 254.9, protein: 11.0, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3900, soldOut: false),
               ]),
    
            
    
    //MARK: - 에이드&주스
    MenusModel(type: .aidAndJuice,
               menus:
                
                [MenuModel2(imageName: "ICE-Lime Mojito", name: "라임모히또",
                                  description: "상큼한 라임과 달콤한 향기의 애플민트가 어우러진 상쾌함을 한잔에 가득 채운 모히또 음료.",
                            
                                  option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                            
                            nutrition: NutritionModel(calorie: 227.1, saturatedFat: 0, sugars: 53.5, natrium: 1.5, protein: 0.2, caffeine: 0),
                            
                                  allergys: AllergyModel(names: [""]),
                            
                                  price: 3800, soldOut: false),
                       
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "ICE-Lemon Ade", name: "레몬에이드",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3500, soldOut: false),
                 
                 MenuModel2(imageName: "ICE-MEGA Ade", name: "메가에이드",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 321.9, saturatedFat: 0.0, sugars: 75, natrium: 1.5, protein: 0.4, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3900, soldOut: false),
               ]),
    
    //MARK: - 음료
    MenusModel(type: .beverage,
               menus:
                
                [MenuModel2(imageName: "HOT-Sweet Potato Latte", name: "(HOT)고구마라떼",
                                  description: "달콤하고 고소한 고구마와 부드러운 우유가 만나 누구나 즐기기 좋은 든든한 라떼",
                            
                                  option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                            
                            nutrition: NutritionModel(calorie: 348.9, saturatedFat: 7.5, sugars: 44.9, natrium: 146.4, protein: 9.1, caffeine: 0),
                            
                                  allergys: AllergyModel(names: [""]),
                            
                                  price: 3500, soldOut: false),
                       
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "HOT-Grain Latte", name: "(HOT)곡물라떼",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3000, soldOut: false),
                 
                 MenuModel2(imageName: "HOT-MEGA Chocolate", name: "(HOT)메가초코",
                                   description: "부드러운 우유에 진한 초코소스, 달콤한 휘핑크림의 삼박자 조화로완성한 달콤 초코 음료.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 473.7, saturatedFat: 13.7, sugars: 56, natrium: 212.9, protein: 7.7, caffeine: 3.1),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3800, soldOut: false),
                 
                 MenuModel2(imageName: "ICE-MEGA Chocolate", name: "(ICE)메가초코",
                                   description: "부드러운 우유에 진한 초코소스, 달콤한 휘핑크림의 삼박자 조화로완성한 달콤 초코 음료.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 473.7, saturatedFat: 13.7, sugars: 56, natrium: 212.9, protein: 7.7, caffeine: 3.1),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3800, soldOut: false),
                 
                 
               ]),
    
    //MARK: - 티(TEA)
    MenusModel(type: .tea,
               menus:
                
                [MenuModel2(imageName: "HOT-Green Tea", name: "(HOT)녹차",
                                  description: "고소한 감칠맛과 부드러운 목넘김으로 산뜻하게 마음을 위로하는 국내산 녹차",
                            
                                  option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                            
                            nutrition: NutritionModel(calorie: 4.1, saturatedFat: 0.1, sugars: 0.4, natrium: 1.3, protein: 0.1, caffeine: 0.1),
                            
                                  allergys: AllergyModel(names: [""]),
                            
                                  price: 2500, soldOut: false),
                       
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "HOT-Applecitron Tea", name: "(HOT)사과유자차",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3500, soldOut: false),
                 
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "HOT-Earl Grey", name: "(HOT)얼그레이",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 2500, soldOut: false),
               ]),
    
    //MARK: - 디저트
    MenusModel(type: .dessert,
               menus:
                
                [MenuModel2(imageName: "Salty Butter Roll", name: "버터소금빵(프레지덩버터)",
                                  description: "고소한 프랑스산 버터를 품어, 더 부드럽고 짭쪼롬하게 즐길 수 있는 베이커리 메뉴.",
                            
                                  option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                            
                            nutrition: NutritionModel(calorie: 260.0, saturatedFat: 7.4, sugars: 2.3, natrium: 442.0, protein: 8.0, caffeine: 0),
                            
                                  allergys: AllergyModel(names: [""]),
                            
                                  price: 3200, soldOut: false),
                       
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "Croissant", name: "크루아상(프레지덩버터)",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3200, soldOut: false),
                 
                 MenuModel2(imageName: "Gyeongsan Jujube Gwajeul", name: "경산대추과즐",
                                   description: "경산 대추와 우리 밀을 넣은 달콤 쫀득한 피에 국내산 조청과 쌀 튀밥을 입혀 바삭하게 구운 한과",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 115.7, saturatedFat: 1.3, sugars: 5.4, natrium: 27.2, protein: 1.7, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 1900, soldOut: false),
                 
                 MenuModel2(imageName: "Margherita Pizza", name: "마르게리타피자",
                                   description: "이탈리아산 듀럼밀을 사용한 쫄깃한 도우에 토마토소스, 모짜렐라 치즈 바질을 더해 든든하게 만든 풍미가득 마르게리타 피자",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 360.0, saturatedFat: 4.5, sugars: 8.0, natrium: 630.0, protein: 14.0, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 5400, soldOut: false),
                 
                 MenuModel2(imageName: "Honey Butter Pizza", name: "허니버터피자",
                                   description: "이탈리아산 듀럼밀을 사용한 쫄깃한 도우에 버터, 모짜렐라 치즈, 꿀을 더해 든든하게 만든 단짠단짠 허니버터 피자",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 500.0, saturatedFat: 14.0, sugars: 9.0, natrium: 650.0, protein: 19.0, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 5100, soldOut: false),
                 
                 MenuModel2(imageName: "Jambon Salty Butter Black Roll", name: "잠봉버터블랙소금빵",
                                   description: "오징어 먹물로 검게 색을 낸 소금빵 안에 잠봉과 프랑스산 버터를 넣어 우아하고 든든하게 즐기는 베이커리 메뉴",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 405.0, saturatedFat: 13.4, sugars: 5.0, natrium: 523.0, protein: 15.0, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 5400, soldOut: false),
                 
                 MenuModel2(imageName: "Unicorn Frappe Macaron", name: "유니콘프라페마카롱",
                                   description: "메가커피 인기 음료인 유니콘 프라페를 모티브로 만든 메지컬 비주얼 마카롱.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 230.6, saturatedFat: 5.8, sugars: 19.4, natrium: 32.1, protein: 3.8, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 2100, soldOut: false),
                 
                 MenuModel2(imageName: "Cookie Frappe Macaron", name: "쿠키프라페마카롱",
                                   description: "메가커피 인기메뉴인 쿠키프라페를 모티브로 만든 달달한 마카롱",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 240.0, saturatedFat: 5.0, sugars: 21.0, natrium: 65.0, protein: 3.0, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 2100, soldOut: false),
                 
                 MenuModel2(imageName: "Pong Crush Macaron", name: "퐁크러쉬 마카롱",
                                   description: "메가커피 인기메뉴인 퐁크러쉬를 모티브로 만든 달콤바삭 마카롱.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 0.0, saturatedFat: 0.0, sugars: 0.0, natrium: 0.0, protein: 0.0, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 2100, soldOut: false),
                 
                 MenuModel2(imageName: "Mon Cher Cream Cake", name: "몽쉘케이크",
                                   description: "진하고 푹신한 초콜릿 스펀지 사이에 부드러운 생크림이 듬뿍 들어간 몽쉘 케이크.",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 383.6, saturatedFat: 14.2, sugars: 26, natrium: 210, protein: 5.3, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 5300, soldOut: false),
                 
                 



                
                 
               ]),
    //MARK: - 디카페인
    MenusModel(type: .decaffeination,
               menus:
                
                [MenuModel2(imageName: "ICE-Coldbrew", name: "(ICE)콜드브루디카페인",
                                  description: "카페인을 줄였지만, 원두 본연의 향미를 풍부하게 살려 맛을 잡은 디카페인 콜드브루.",
                            
                                  option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                            
                            nutrition: NutritionModel(calorie: 7.7, saturatedFat: 0, sugars: 0, natrium: 0.1, protein: 0.5, caffeine: 8.7),
                            
                                  allergys: AllergyModel(names: [""]),
                            
                                  price: 3500, soldOut: false),
                       
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "HOT-Coldbrew", name: "(HOT)콜드브루디카페인",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 3500, soldOut: false),
                 
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "ICE-Coldbrew Latte", name: "(ICE)콜드브루디카페인라떼",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 4000, soldOut: false),
               ]),
    
    //MARK: - MD
    MenusModel(type: .md,
               menus:
                //정보가 존재하지 않는 상품
                [MenuModel2(imageName: "MEGA MGC STICK ORIGINAL AMERICANO", name: "메가엠지씨스틱 오리지날 아메리카노",
                                  description: "",
                            
                                  option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                            
                            nutrition: NutritionModel(calorie: 7.7, saturatedFat: 0, sugars: 0, natrium: 0.1, protein: 0.5, caffeine: 8.7),
                            
                                  allergys: AllergyModel(names: [""]),
                            
                                  price: 4100, soldOut: false),
                       
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "MEGA MGC STICK DECAF AMERICANO", name: "메가엠지씨스틱 디카페인 아메리카노",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 4900, soldOut: false),
                 
                 //정보가 존재하지 않는 상품
                 MenuModel2(imageName: "MEGA MGC STICK STEVIA MIX COFFEE", name: "메가엠지씨스틱 스테비아 믹스커피",
                                   description: "",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                             nutrition: NutritionModel(calorie: 720.5, saturatedFat: 16.7, sugars: 97.5, natrium: 189.5, protein: 8.4, caffeine: 223.5),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 4800, soldOut: false),
                 
                 MenuModel2(imageName: "Stevia Case", name: "스테비아 케이스",
                                   description: "당류와 칼로리를 효과적으로 줄이는 천연 감미료(1g*40개입/case)",
                             
                                   option: [OptionModel(essentialCount: 0, header: "", details: [DetailsModel(name: "", price: 0, count: 0, soldOut: false, isSelect: false)])],
                             
                            nutrition: NutritionModel(calorie: 720.5, saturatedFat: 0.0, sugars: 0.0, natrium: 0.0, protein: 0.0, caffeine: 0.0),
                             
                                   allergys: AllergyModel(names: [""]),
                             
                                   price: 5900, soldOut: false),
               ]),
    
    
    
]

var recommendMenus = [
    RecommendMenuModel(image: UIImage(named: "HOT-Coldbrew")!, name: "떠먹는쿠키앤크림케이크", price: 3400, isSelect: false),
    RecommendMenuModel(image: UIImage(named: "HOT-Coldbrew")!, name: "몽쉘케이스", price: 5300, isSelect: false),
    RecommendMenuModel(image: UIImage(named: "HOT-Coldbrew")!, name: "말차스모어쿠키", price: 2900, isSelect: false),
]
