//
//  CateogryViewController.swift
//  MegaCoffeeClone
//
//  Created by 원준연 on 2022/10/26.
//

import UIKit

class GiftCategoryContainerViewController: ViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    
    @IBOutlet weak var categoryTableView: UITableView!
    
    let giftMenuDataManager = GiftMenuDataManager.shared
    
    var allMenu:[Menu1]?
    
    var menuInSelectedCategory:[Menu1.MenuModel1]?
    
    var giftCategory = [
        categoryInfo(categoryName: "세트메뉴", isClicked: false),
        categoryInfo(categoryName: "신메뉴", isClicked: false),
        categoryInfo(categoryName: "커피(HOT)", isClicked: false),
        categoryInfo(categoryName: "커피(ICE)", isClicked: false),
        categoryInfo(categoryName: "디카페인", isClicked: false),
        categoryInfo(categoryName: "스무디&프라페", isClicked: false),
        categoryInfo(categoryName: "에이드&주스", isClicked: false),
        categoryInfo(categoryName: "병음료", isClicked: false),
        categoryInfo(categoryName: "Tea", isClicked: false),
        categoryInfo(categoryName: "커피(콜드브루)", isClicked: false),
        categoryInfo(categoryName: "BEVERAGE", isClicked: false),
        categoryInfo(categoryName: "디저트", isClicked: false),
        categoryInfo(categoryName: "MD상품", isClicked: false),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allMenu = giftMenuDataManager.getAllMenuData()
        giftCategory[0].isClicked = true
        menuInSelectedCategory = allMenu?.filter({$0.type == "세트메뉴"}).flatMap({$0.menus}) //타입이 세트메뉴인 메뉴들을 1차원배열로 만듬
        
        self.categoryTableView.register(UINib(nibName: "GiftCategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "tableCustomCell")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        for (index,_) in giftCategory.enumerated() {
            giftCategory[index].isClicked = false
        }
    }
}

extension GiftCategoryContainerViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return giftCategory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! GiftCategoryCollectionViewCell
        cell.categoryLabel.text = giftCategory[indexPath.row].categoryName
        cell.tag = indexPath.row
        
        if giftCategory[indexPath.row].isClicked {
            cell.categoryView.layer.cornerRadius = 22
            cell.categoryView.layer.borderWidth = 0
            cell.categoryView.layer.borderColor = UIColor.lightGray.cgColor
            cell.categoryView.backgroundColor = UIColor.black
            cell.categoryLabel.font = .boldSystemFont(ofSize: 18)
            cell.categoryLabel.textColor = UIColor.white
            
        } else {
            cell.categoryView.layer.cornerRadius = 22
            cell.categoryView.layer.borderWidth = 1
            cell.categoryView.layer.borderColor = UIColor.lightGray.cgColor
            cell.categoryView.backgroundColor = UIColor.white
            cell.categoryLabel.font = .boldSystemFont(ofSize: 18)
            cell.categoryLabel.textColor = UIColor.lightGray
        }
        
        return cell
    }
    
}

extension GiftCategoryContainerViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //선택된 아이템에 대한 셀을 가져옴
        if let cell = collectionView.cellForItem(at: indexPath) {
            
            menuInSelectedCategory = allMenu?.filter({$0.type == giftCategory[indexPath.row].categoryName}).flatMap({$0.menus})
            //모든메뉴를 가지고있는 배열에서 type이 선택된 카테고리와 같은 상품을 일차원배열로 만든 뒤 menuInSelectedCategory에 할당
            categoryTableView.reloadSections(IndexSet(integer: 0), with: .automatic)
            
            for (index,_) in giftCategory.enumerated() {
                giftCategory[index].isClicked = index == cell.tag ? true : false
                //giftCategory의 아이템중 현재 index와 현재 셀의 태그가 일치하면 isClicked 프로퍼티를 true로 그렇지 않으면 false로 설정
                menuInSelectedCategory = allMenu?.filter({$0.type == giftCategory[indexPath.row].categoryName}).flatMap({$0.menus})
                
                categoryCollectionView.reloadData()
                
            }
            
        }
    }
}

extension GiftCategoryContainerViewController: UITableViewDelegate {
    

    
}

extension GiftCategoryContainerViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let menuInSelectedCategory = menuInSelectedCategory {
            return menuInSelectedCategory.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCustomCell", for: indexPath) as! GiftCategoryTableViewCell
        if let menuInSelectedCategory = menuInSelectedCategory {
            if let imageName = menuInSelectedCategory[indexPath.row].image {
                cell.productImageView.image = UIImage(named: imageName)
            }
            cell.prodcutNameLabel.text = menuInSelectedCategory[indexPath.row].name
            cell.productPriceLabel.text = String(describing: menuInSelectedCategory[indexPath.row].price ?? 0) + "원"
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.sizeToFit()
            return cell
        } else {
            cell.productImageView.image = UIImage()
            cell.prodcutNameLabel.text = ""
            cell.productPriceLabel.text = ""
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc =  storyboard?.instantiateViewController(identifier: "DetailView") as? GiftDetailViewController else { return }
        if let menuInSelectedCategory = menuInSelectedCategory {
            vc.selectedProduct = menuInSelectedCategory[indexPath.row]
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
