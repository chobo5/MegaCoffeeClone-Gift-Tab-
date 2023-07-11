//
//  MainContainerViewController.swift
//  MegaCoffeeClone
//
//  Created by 준연 on 2022/11/01.
//

import UIKit

class GiftMainContainerViewController: ViewController {
    
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    let mainImagesArray:[String] = ["Image1", "Image2"]
    
    var recommendMenus: [Menu1.MenuModel1] = []
    
    var bestMenus: [Menu1.MenuModel1] = []
    
    var MegaCardMenus: [Menu1.MenuModel1] = []
    
    let giftMenuDataManager = GiftMenuDataManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCollectionView.collectionViewLayout = getLayout()
        
        self.mainCollectionView.register(UINib(nibName: "GiftMainCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mainProductCell")
        
        self.mainCollectionView.register(UINib(nibName: "GiftNewEventCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mainImageCell")
        
        self.mainCollectionView.register(UINib(nibName: "GiftCollectionReusableView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
        
        recommendMenus = giftMenuDataManager.getRecommendedMenus()
        bestMenus = giftMenuDataManager.getBestMenus()
    }
    
    
    
    
    func getLayout() -> UICollectionViewCompositionalLayout {
            UICollectionViewCompositionalLayout { (section , env) -> NSCollectionLayoutSection in
                switch section {
                case 0:
                    return self.firstSection()
                case 1:
                    return self.secondSection()
                case 2:
                    return self.fourthSection()

                default:
                    return self.firstSection()
                }
            }
        }
    
    func firstSection() -> NSCollectionLayoutSection {
        
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(260))
        
            let item = NSCollectionLayoutItem(layoutSize: itemSize)

            item.edgeSpacing = NSCollectionLayoutEdgeSpacing(leading: .fixed(0), top: .fixed(0), trailing: .fixed(0), bottom: .fixed(0))
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(2.0), heightDimension: .absolute(260))
        
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: mainImagesArray.count)
            
            let section = NSCollectionLayoutSection(group: group)
        
            section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
            
            section.orthogonalScrollingBehavior = .paging
            

          
            return section
        }
        
    
        func secondSection() -> NSCollectionLayoutSection {
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.4), heightDimension: .absolute(220))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0)

            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(5.2), heightDimension: .absolute(220))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: recommendMenus.count)
            
            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 0)
            section.orthogonalScrollingBehavior = .continuous
        
            return section
        }
        
    
        func fourthSection() -> NSCollectionLayoutSection {
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.3), heightDimension: .absolute(200))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            item.contentInsets = NSDirectionalEdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 8)

            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(5.1), heightDimension: .absolute(200))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: bestMenus.count)
            
            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        
            let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(44))
            let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)

            section.boundarySupplementaryItems = [header]
            section.orthogonalScrollingBehavior = .continuous
            
            return section
        }
    
}

extension GiftMainContainerViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section == 0 {
            return mainImagesArray.count
        } else if section == 1 {
            return recommendMenus.count
        }else {
            return bestMenus.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainImageCell", for: indexPath) as! GiftNewEventCollectionViewCell
            cell.mainImageView.image = UIImage(named: mainImagesArray[indexPath.row])
            return cell
            
        } else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainProductCell", for: indexPath) as! GiftMainCollectionViewCell
            let imageName = recommendMenus[indexPath.row].image
            cell.menuImageView.image = UIImage(named: imageName ?? "homeRecommend2") ?? UIImage()
            cell.menuNameLabel.text = recommendMenus[indexPath.row].name
            cell.menuPriceLabel.text = String(describing: recommendMenus[indexPath.row].price ?? 0) + "원"
            return cell
            
        }else  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainProductCell", for: indexPath) as! GiftMainCollectionViewCell
            let imageName = bestMenus[indexPath.row].image
            cell.menuImageView.image = UIImage(named: imageName ?? "homeRecommend2") ?? UIImage()
            cell.menuNameLabel.text = bestMenus[indexPath.row].name
            cell.menuPriceLabel.text = String(describing: bestMenus[indexPath.row].price ?? 0) + "원"
            return cell
        }
    }
}

extension GiftMainContainerViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! GiftCollectionReusableView
        if indexPath.section == 2 {
            headerView.headerLabel.text = "BEST"
            return headerView
        } 
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc =  storyboard?.instantiateViewController(identifier: "DetailView") as? GiftDetailViewController else { return }
        
        
        //이 프로퍼티에 접근해서 데이터를 저장했다고 그대로 저장되는것이 아니라, 정확한 데이터의 전달은 이후 push하면서 일어나게 된다
        if indexPath.section == 1  {
            vc.selectedProduct = recommendMenus[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else if indexPath.section == 2 {
            vc.selectedProduct = bestMenus[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            return
        }
    }
    
   

    
}
