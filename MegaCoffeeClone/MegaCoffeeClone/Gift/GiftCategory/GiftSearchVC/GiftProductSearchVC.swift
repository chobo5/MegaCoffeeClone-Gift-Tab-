//
//  ProductSearchViewController.swift
//  MegaCoffeeClone
//
//  Created by 원준연 on 2022/11/14.
//

import UIKit

class GiftProductSearchVC: UIViewController, ShowMoreDelegate, searchBarDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    
    let menuDataManager = GiftMenuDataManager.shared
    
    var loadedProducts = [Menu1.MenuModel1]() //모든 상품들이 있는 배열
    var pagingProducts = [Menu1.MenuModel1]() //10개씩 보여줄 배열
    var filteredProducts = [Menu1.MenuModel1]() //검색시 보여줄 배열
    var hasNextPage: Bool = true // 마지막 페이지 인지 체크 하는 flag
    var isFiltering: Bool = false // searchBar에 커서가 올라갔는지
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(systemName: "xmark")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(systemName: "xmark")
        
        tableView.register(UINib(nibName: "GiftCategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "tableCustomCell")
        self.loadedProducts = self.menuDataManager.getAllFirstDimensionMenuData()
        setFirstTableView()
        
    }
    
    
    func setFirstTableView() {
        for i in 0...9 {
            let data = loadedProducts[i]
            pagingProducts.append(data)
        }
    }
    
    func paging() {
        let fullIndex = loadedProducts.count
        let index = pagingProducts.count
        let diff = fullIndex - index
        
        if diff >= 10 {
        
            for i in index..<(index + 10) {
                let data = loadedProducts[i]
                pagingProducts.append(data)
            }
            self.tableView.reloadData()
            
        } else /*if diff < 10 && diff > 0*/ {
            
            for i in index..<(index + diff) {
                let data = loadedProducts[i]
                pagingProducts.append(data)
            }
            hasNextPage = false
            self.tableView.reloadData()
            
        }
    }
    
    func searchClicked(text: String) {
        if text == "" {
            filteredProducts = loadedProducts
        } else {
            for product in loadedProducts {
                guard let productName = product.name else { return }
                if productName.uppercased().contains(text.uppercased()) {
                    filteredProducts.append(product)
                } else {
                    
                }
            }
        }
        
        isFiltering = true
        tableView.reloadData()
    }
    
    func resetTable() {
        isFiltering = false
        filteredProducts.removeAll()
        self.tableView.reloadData()
    }
    
   
}

extension GiftProductSearchVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if isFiltering {
            return 2
        }else {
            return 3
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            
            if isFiltering {
                if filteredProducts.count == 0 {
                    //검색결과가 없을때
                    return 1
                }else {
                    return filteredProducts.count
                }
            }else {
                return pagingProducts.count
            }
            
        } else if section == 2 && hasNextPage {
            return 1
        }
        
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "searchProdcutCell", for: indexPath) as! GiftSearchBarTableViewCell
            cell.searchBarDelegate = self
            return cell
        } else if indexPath.section == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCustomCell", for: indexPath) as! GiftCategoryTableViewCell
            if isFiltering {
                //search중일떄
                if filteredProducts.count == 0 {
                    //검색 결과가 없을때
                    let cell = tableView.dequeueReusableCell(withIdentifier: "noProductCell", for: indexPath)
                    return cell
                    
                }else {
                    //검색 결과가 있을때
                    if let imageName = filteredProducts[indexPath.row].image {
                        cell.productImageView.image = UIImage(named: imageName)
                    }
                    
//                    let typeName = filteredProducts[indexPath.row].type
                    if let productName = filteredProducts[indexPath.row].name {
                        cell.prodcutNameLabel.text = String(describing: productName)
                    }
                    if let productPrice = filteredProducts[indexPath.row].price {
                        cell.productPriceLabel.text = String(describing: productPrice) + "원"
                    }
                    cell.selectionStyle = .none
                    return cell
                }
            }else {
                //search중이지 않을떄
                if let imageName = pagingProducts[indexPath.row].image {
                    cell.productImageView.image = UIImage(named: imageName)
                }
//                let typeName = pagingProducts[indexPath.row].type
                if let productName = pagingProducts[indexPath.row].name {
                    cell.prodcutNameLabel.text = String(describing: productName)
                }
                if let productPrice = pagingProducts[indexPath.row].price {
                    cell.productPriceLabel.text = String(describing: productPrice) + "원"
                }
                
                cell.selectionStyle = .none
                return cell
            }
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "moreButtonCell", for: indexPath) as! GiftPagingButtonTableViewCell
            cell.showMoreDelegate = self
            return cell
        }
    }
    
    
}



