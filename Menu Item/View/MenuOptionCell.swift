//
//  MenuOptionCell.swift
//  Menu Item
//
//  Created by Muraino Yakubu on 2/14/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit

class MenuOptionCell: UITableViewCell {


    //MARK:- Property
    
    let iconImageView : UIImageView = {
        var iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = false

        return iv
    }()
    
    let descriptionLable : UILabel = {
        var dl = UILabel()
        dl.textColor = .white
        dl.font = UIFont.systemFont(ofSize: 14)
        dl.text = "Sample text"

        return dl
    }()
    
    //MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style : style, reuseIdentifier :reuseIdentifier)
        
        backgroundColor = .darkGray
        
        addSubview(iconImageView)
        selectionStyle = .none
        iconImageView .translatesAutoresizingMaskIntoConstraints = false
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive  = true
        iconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true

        addSubview(descriptionLable)
        descriptionLable .translatesAutoresizingMaskIntoConstraints = false
          descriptionLable.centerYAnchor.constraint(equalTo: centerYAnchor).isActive  = true
        descriptionLable.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 12).isActive = true

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Handler
    
}
