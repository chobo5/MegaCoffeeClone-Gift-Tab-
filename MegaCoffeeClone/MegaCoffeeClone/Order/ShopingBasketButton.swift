//
//  ShopingBasketButton.swift
//  MegaCoffeeClone
//
//  Created by PKW on 2022/11/15.
//

import Foundation
import UIKit

class ShoppingBasketButton: UIButton {
    
    let coreDataManager = CoreDataManager.shared
    
    let countLabel = ShoppingBasketLabel()
    
    var basketNumber: Int32 = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        let imageConfig = UIImage.SymbolConfiguration(pointSize: 30)
        let cartImage = UIImage(systemName: "cart", withConfiguration: imageConfig)
        self.setImage(cartImage, for: .normal)

        self.basketNumber = 0
        coreDataManager.loadItem()
        coreDataManager.itemArray.forEach({ item in
            self.basketNumber += item.number
        })
        
        self.countLabel.translatesAutoresizingMaskIntoConstraints = false
        self.countLabel.textColor = .white
        self.countLabel.text = "\(basketNumber)"
        self.countLabel.backgroundColor = .systemPink
        
        self.addSubview(countLabel)
    }
    
    func updateBasketNumber() {
        
        self.basketNumber = 0
        coreDataManager.loadItem()
        coreDataManager.itemArray.forEach({ item in
            self.basketNumber += item.number
        })
        self.countLabel.text = "\(basketNumber)"
    }
}

class ShoppingBasketLabel: UILabel {
    var topInset: CGFloat = 0.0
    var bottomInset: CGFloat = 0.0
    var leftInset: CGFloat = 5.0
    var rightInset: CGFloat = 5.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        self.font = .systemFont(ofSize: 14, weight: .bold)
        self.clipsToBounds = true
        self.layer.cornerRadius = 8
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawText(in rect: CGRect) {
        let inset = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: inset))
    }
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + leftInset + rightInset,  height: size.height + topInset + bottomInset)
    }
        
    override var bounds: CGRect {
        didSet {
            preferredMaxLayoutWidth = bounds.width - (leftInset + rightInset)
        }
    }
}
