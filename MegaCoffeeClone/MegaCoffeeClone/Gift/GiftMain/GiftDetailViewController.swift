//
//  DetailViewController.swift
//  MegaCoffeeClone
//
//  Created by 준연 on 2022/10/27.
//


import UIKit
import CoreData

class GiftDetailViewController: ViewController, PopupDelegate {
    
    @IBOutlet weak var DetailMenuImageView: UIImageView!
    @IBOutlet weak var DetailMenuNameLabel: UILabel!
    @IBOutlet weak var DetailMenuExplanationLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    @IBOutlet weak var plusView: UIView!
    @IBOutlet weak var minusView: UIView!
    @IBOutlet weak var numberOf: UILabel!
   
    
    var selectedProduct: Menu1.MenuModel1?
    
    
    var badgeNumber = 0
    
    let shoppingBasketButton = ShoppingBasketButton()
    
    let coreDataManager = CoreDataManager.shared
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        plusView.layer.cornerRadius = plusView.frame.width / 2
        minusView.layer.cornerRadius = minusView.frame.width / 2
        numberOf.sizeToFit()
        
        updateUI()
        
        configShoppingBasketButton()
        
        let concernPlusGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedPlus(_:)))
        plusView.addGestureRecognizer(concernPlusGesture)
        
        let concernMinusGesture: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedMinus(_:)))
        minusView.addGestureRecognizer(concernMinusGesture)
        
        let concernDetailGesture: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedImage(_:)))
        DetailMenuImageView.isUserInteractionEnabled = true
        DetailMenuImageView.addGestureRecognizer(concernDetailGesture)
        
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.topItem?.title = ""
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        coreDataManager.loadItem()
        //카트에 뱃지수 업데이트하기
    }
    
    func configShoppingBasketButton() {
        shoppingBasketButton.addTarget(self, action: #selector(shoppingBasketClicked(_:)), for: .touchUpInside)
        
        let barButtonItem = UIBarButtonItem(customView: shoppingBasketButton)
        barButtonItem.customView?.widthAnchor.constraint(equalToConstant: 35).isActive = true
        barButtonItem.customView?.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        self.navigationItem.rightBarButtonItem = barButtonItem
        
        if let countLabel = shoppingBasketButton.subviews.last as? ShoppingBasketLabel {
            NSLayoutConstraint.activate([
                countLabel.topAnchor.constraint(equalTo: shoppingBasketButton.topAnchor),
                countLabel.trailingAnchor.constraint(equalTo: shoppingBasketButton.trailingAnchor)
            ])
        }
    }
    
    var number = 1
    
    func makeDecimal(integer: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        guard let result = numberFormatter.string(from: NSNumber(value: integer)) else { return "" }
        return "\(String(describing: result))원"
    }
    
    @objc func tappedPlus(_ gesture: UITapGestureRecognizer) {
        number += 1
        if number > 20 {
            number = 20
        }
        
        numberOf.text = "\(number)"
        
        let intPrice = selectedProduct?.price ?? 0
        let totalPirce = intPrice * number
        let strPrice = makeDecimal(integer: totalPirce)
        totalPrice.text = strPrice
    }
    
    @objc func tappedMinus(_ gesture: UITapGestureRecognizer) {
        number -= 1
        
        if number < 1 {
            number = 1
        }
        
        numberOf.text = "\(number)"
        
        let intPrice = selectedProduct?.price ?? 0
        let totalPirce = intPrice * number
        let strPrice = makeDecimal(integer: totalPirce)
        totalPrice.text = strPrice
    }
    
    @objc func tappedImage(_ gesture: UITapGestureRecognizer) {
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "detailPopupView") as? GiftDetailPopupViewController else { return }
        vc.modalPresentationStyle = .overFullScreen
        vc.selectedMenuDetailInfo = selectedProduct?.nutrition
        self.present(vc, animated: false)
        
    }
    
    func updateUI() {
        if let selectedProduct = selectedProduct {
            if let imageName = selectedProduct.image {
                DetailMenuImageView.image = UIImage(named: imageName)
            }
            DetailMenuNameLabel.text = selectedProduct.name
            DetailMenuExplanationLabel.text = selectedProduct.description
            priceLabel.text = String(describing: selectedProduct.price ?? 0) + "원"
            totalPrice.text = String(describing: selectedProduct.price ?? 0) + "원"
        }
    }
    
    @IBAction func shoppingBasketClicked(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "shoppingView") as? GiftShoppingBasketVC else { return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func addButtonClicked(_ sender: UIButton) {
        
        //팝업뷰를 띄운후 장바구니로 이동버튼에 delegate지정
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "movePopupView") as? GiftMovePopupVC else { return }
        vc.modalPresentationStyle = .overFullScreen
        //        vc.vcRef = self
        self.present(vc, animated: false)
        vc.PopupDelegate = self
        
        
        //MARK: - 담기버튼클릭시 코어데이터에 데이터를 저장
        // 1. 코어데이터에서 데이터 로드
        coreDataManager.loadItem()
        guard let selectedProduct = selectedProduct else { return }
        guard let name = selectedProduct.name else { return }
        guard let price = selectedProduct.price else { return }
        guard let image = selectedProduct.image else { return }
        guard let number = numberOf.text else { return }
        self.shoppingBasketButton.updateBasketNumber()
        self.shoppingBasketButton.reloadInputViews()
        
        for item in coreDataManager.itemArray {
            if item.name == name {
                
                let totalNumber = item.number + (Int32(number) ?? 0)
                // 수량
                item.setValue(totalNumber, forKey: "number")
                item.setValue((Int32(price) ) * totalNumber, forKey: "total")
                //CoreData에서 이름이같은 Item의 개수, 총계값을 변경해준다
            }
        }
        
        if coreDataManager.itemArray.contains(where: {$0.name == name}) == false {
            let newItem = Item(context: self.coreDataManager.context)
            
            //새로운 값을 코어데이터에 추가해준다
            newItem.name = name
            newItem.price = Int32(price)
            newItem.image = selectedProduct.image
            
            let stringNumber = number
            let intNumber = Int32(stringNumber)!
            newItem.number = intNumber
            newItem.total = newItem.price * newItem.number
        }
        
        coreDataManager.saveItem()
        //loadItem은 GiftShoppingBasketVC이 load되면 함
        
    }
    
    
    //MARK: - Popup Delegate methods
    func goShoppingButtonClicked() {
        
        guard let ShoppingVC = storyboard?.instantiateViewController(withIdentifier: "shoppingView") as? GiftShoppingBasketVC else { return }
        self.navigationController?.pushViewController(ShoppingVC, animated: true)
        
    }
    
    
}

extension GiftDetailViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if navigationController.viewControllers.count > 1 {
            // 이전 뷰 컨트롤러에서 추가한 모든 UIBarButtonItem을 가져옵니다.
            let rightBarButtonItems = navigationController.viewControllers[navigationController.viewControllers.count - 2].navigationItem.rightBarButtonItems
            
            // 첫 번째 UIBarButtonItem을 가져옵니다.
            if let shoppingCartBarButtonItem = rightBarButtonItems?[1] {
                viewController.navigationItem.rightBarButtonItem = shoppingCartBarButtonItem
            }
        }
    }
}

