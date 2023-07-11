//
//  MoreEventAndRankingEventTVC.swift
//  MegaCoffeeClone
//
//  Created by 김성호 on 2022/11/22.
//


import Foundation
import UIKit

class MoreEventAndRankingEventTVC: UITableViewCell {
    static var identifier: String { return String(describing: self) }
    
    lazy var imgView: UIImageView = {
       let imgView = UIImageView()
        
        imgView.backgroundColor = .systemGray5
        imgView.layer.cornerRadius = 6
        
        return imgView
    }()
    
    lazy var titleLabel: UILabel = {
       let title = UILabel()
        
        title.textColor = .label
        title.font = .boldSystemFont(ofSize: 18)
        
        return title
    }()
    
    lazy var subTitleLabel: UILabel = {
       let sub = UILabel()
        
        sub.textColor = .label
        sub.font = .systemFont(ofSize: 15)
        
        return sub
    }()
    
    lazy var stackView: UIStackView = {
       let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        
        
        addSubView()
        layout()
    }
    
    required init?(coder: NSCoder) {
          fatalError("")
      }
    
    
    
    func addSubView() {
        self.contentView.addSubview(self.imgView)
        self.contentView.addSubview(self.stackView)
        
        self.stackView.addArrangedSubview(self.titleLabel)
        self.stackView.addArrangedSubview(self.subTitleLabel)
        
    }
    
    
    func layout() {
        layoutImgView()
        layoutStackView()
    }
    
    
    
    
    
    func layoutImgView() {
        self.imgView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            self.imgView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.imgView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.imgView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.imgView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7)
           
        ])
    }
    
    
    
    func layoutStackView() {
        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            self.stackView.topAnchor.constraint(equalTo: self.imgView.bottomAnchor),
            self.stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
           
        ])
        
        
        
    }
    
}

