//
//  DetailPopupView.swift
//  MegaCoffeeClone
//
//  Created by 준연 on 2022/11/01.
//

import UIKit

class GiftDetailPopupViewController: ViewController {
    
    @IBOutlet weak var fullView: UIView!
    
    @IBOutlet weak var detailPopupView: UIView!
    
    @IBOutlet weak var standardLabel: UILabel!
    
    @IBOutlet weak var calorieLabel: UILabel!
    
    @IBOutlet weak var naLabel: UILabel!
    
    @IBOutlet weak var sugarLabel: UILabel!
    
    @IBOutlet weak var saturatedFatLabel: UILabel!
    
    @IBOutlet weak var proteinLabel: UILabel!
    
    @IBOutlet weak var caffeineLabel: UILabel!
    
    var selectedMenuDetailInfo: Menu1.MenuModel1.NutritionModel1?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailPopupView.clipsToBounds = true
        detailPopupView.layer.cornerRadius = 15
        
        let concernGesture: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedFullView(_:)))
        fullView.addGestureRecognizer(concernGesture)
        updateUI()
    }
    
    @objc func tappedFullView(_ gesture: UITapGestureRecognizer) {
        self.dismiss(animated: false)
    }
    
    func updateUI() {
        
        if let selectedMenuDetailInfo = selectedMenuDetailInfo {
            standardLabel.text = "(oz / g)기준"
            calorieLabel.text = String(describing: selectedMenuDetailInfo.calorie ?? 0)
            naLabel.text = String(describing:selectedMenuDetailInfo.natrium ?? 0)
            sugarLabel.text = String(describing:selectedMenuDetailInfo.sugars ?? 0)
            saturatedFatLabel.text = String(describing:selectedMenuDetailInfo.saturatedFat ?? 0)
            proteinLabel.text = String(describing:selectedMenuDetailInfo.protein ?? 0)
            caffeineLabel.text = String(describing:selectedMenuDetailInfo.caffeine ?? 0)
        }
        
    }
    
}
