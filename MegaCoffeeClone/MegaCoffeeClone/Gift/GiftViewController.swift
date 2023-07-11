//
//  GiftViewController.swift
//  MegaCoffeeClone
//
//  Created by 원준연 on 2022/10/12.
//https://ios-development.tistory.com/945 (Section > Group > Item)


import UIKit

class GiftViewController: ViewController {
    
    @IBOutlet weak var contentsView: UIView!
    
    var mainView: UIView!
    
    var categoryView: UIView!
    
    var giftboxView: UIView!
    
    var basketNumber: Int = 0
    
    var shoppingBasketButton = ShoppingBasketButton()
    
    @IBOutlet weak var findButton: UIBarButtonItem!
    
    @IBOutlet weak var segmentedControl: UnderlineSegmentedControl!
    
    let coreDataManager = CoreDataManager.shared
    
    let giftMenuDataManager = GiftMenuDataManager.shared 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.segmentedControl.setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: UIColor.black,
            .font: UIFont.systemFont(ofSize: 18, weight: .medium)],
            for: .normal)
        self.segmentedControl.setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: UIColor.black,
                .font: UIFont.systemFont(ofSize: 18, weight: .bold)],
            for: .selected
        )
        self.segmentedControl.selectedSegmentIndex = 0
        
        setSubViews()
        
        hideFindButton()
        
        coreDataManager.loadItem()

        configShoppingBasketButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //카트에 뱃지수 업데이트하기
        self.shoppingBasketButton.updateBasketNumber()
        self.shoppingBasketButton.tintColor = .black
    }
    
    func configShoppingBasketButton() {
        shoppingBasketButton.addTarget(self, action: #selector(shoppingBasketClicked(_:)), for: .touchUpInside)
        
        let barButtonItem = UIBarButtonItem(customView: shoppingBasketButton)
        barButtonItem.customView?.widthAnchor.constraint(equalToConstant: 35).isActive = true
        barButtonItem.customView?.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        self.navigationItem.rightBarButtonItems = [barButtonItem, findButton]
        
        if let countLabel = shoppingBasketButton.subviews.last as? ShoppingBasketLabel {
            NSLayoutConstraint.activate([
                countLabel.topAnchor.constraint(equalTo: shoppingBasketButton.topAnchor),
                countLabel.trailingAnchor.constraint(equalTo: shoppingBasketButton.trailingAnchor)
            ])
        }
    }
    
    func setSubViews() {
        guard  let mainVC =  self.storyboard?.instantiateViewController(identifier: "mainVC"),
               let categoryVC = self.storyboard?.instantiateViewController(withIdentifier: "categoryVC"),
               let giftboxVC = self.storyboard?.instantiateViewController(withIdentifier: "giftboxVC")
        else { return }
        
        self.addChild(mainVC)
        self.addChild(categoryVC)
        self.addChild(giftboxVC)

        self.contentsView.addSubview(mainVC.view) //최초 실행시 subView설정
        
        self.mainView = mainVC.view
        self.categoryView = categoryVC.view
        self.giftboxView = giftboxVC.view
        
    }
    
    
    @IBAction func segmentControlClicked(_ sender: UnderlineSegmentedControl) {
        
        if sender.selectedSegmentIndex == 0  {
            self.contentsView.addSubview(mainView)
            categoryView.removeFromSuperview()
            giftboxView.removeFromSuperview()
            hideFindButton()

            
        } else if sender.selectedSegmentIndex == 1 {
            self.contentsView.addSubview(categoryView)
            
            categoryView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                           categoryView.topAnchor.constraint(equalTo: contentsView.topAnchor),
                           categoryView.bottomAnchor.constraint(equalTo: contentsView.bottomAnchor),
                           categoryView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
                           categoryView.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor)
                       ])
            //AutoLayout으로 layout이 잡히지 않아 코드로 작성
            mainView.removeFromSuperview()
            giftboxView.removeFromSuperview()
            findButton.isEnabled = true
            findButton.tintColor = UIColor.black

        }else {
            self.contentsView.addSubview(giftboxView)
            mainView.removeFromSuperview()
            categoryView.removeFromSuperview()
            hideFindButton()

        }
    }
    
    func hideFindButton() {
        findButton.isEnabled = false
        findButton.tintColor = UIColor.white
    }
    
    
    @IBAction func exclamationmarkClicked(_ sender: UIBarButtonItem) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "PopUPView") as? GiftPopUpViewController else { return }
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: false)
    }
    
    @IBAction func findButtonClicked(_ sender: UIBarButtonItem) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ProductSearch") as? GiftProductSearchVC else { return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func shoppingBasketClicked(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "shoppingView") as? GiftShoppingBasketVC else { return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


