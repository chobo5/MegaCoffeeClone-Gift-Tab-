



import UIKit

class HomeCategoryViewController: ViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    
    @IBOutlet weak var categoryTableView: UITableView!
    
    
    let giftMenuDataManager = GiftMenuDataManager.shared
    
    var allMenu:[Menu1]?
    
    var menuByCategory:[Menu1.MenuModel1]?
    
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
        menuByCategory = allMenu?.filter({$0.type == "세트메뉴"}).flatMap({$0.menus}) //타입이 세트메뉴인 메뉴들을 1차원배열로 만듬
        
        self.categoryTableView.register(UINib(nibName: "GiftCategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "tableCustomCell")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        for (index,_) in giftCategory.enumerated() {
            giftCategory[index].isClicked = false
        }
    }
}

extension HomeCategoryViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
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

extension HomeCategoryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let cell = collectionView.cellForItem(at: indexPath) {
            
            menuByCategory = allMenu?.filter({$0.type == giftCategory[indexPath.row].categoryName}).flatMap({$0.menus})
            
            categoryTableView.reloadSections(IndexSet(integer: 0), with: .automatic)
            
            for (index,_) in giftCategory.enumerated() {
                giftCategory[index].isClicked = index == cell.tag ? true : false
                
                menuByCategory = allMenu?.filter({$0.type == giftCategory[indexPath.row].categoryName}).flatMap({$0.menus})
                
                categoryCollectionView.reloadData()
                
            }
            
        }
    }
}

extension HomeCategoryViewController: UITableViewDelegate {
    

    
}

extension HomeCategoryViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let menuByCategory = menuByCategory {
            return menuByCategory.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCustomCell", for: indexPath) as! GiftCategoryTableViewCell
        if let menuByCategory = menuByCategory {
            if let imageName = menuByCategory[indexPath.row].image {
                cell.productImageView.image = UIImage(named: imageName)
            }
            cell.prodcutNameLabel.text = menuByCategory[indexPath.row].name
            cell.productPriceLabel.text = "\(menuByCategory[indexPath.row].price)원"
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
        if let menuByCategory = menuByCategory {
            vc.selectedProduct = menuByCategory[indexPath.row]
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
