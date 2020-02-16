//
//  MenuViewController.swift
//  Menu Item
//
//  Created by Muraino Yakubu on 2/14/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit


private let dequeIdentifier = "menuOtionnCell"
class MenuViewController: UIViewController {

    
    var delegate : HomeControllerDelegate?

    
    
    var uiTableView : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        
        configureUiTableView()
    }
    
    func configureUiTableView(){
        uiTableView = UITableView()
        uiTableView.delegate = self
        uiTableView.dataSource = self
        
        
        uiTableView.register(MenuOptionCell.self, forCellReuseIdentifier: dequeIdentifier)
        
        
        uiTableView.separatorStyle = .none
        uiTableView.backgroundColor = .darkGray
        
        
        uiTableView.rowHeight = 60
        view.addSubview(uiTableView)
        
        
        uiTableView.translatesAutoresizingMaskIntoConstraints  = false
    
        uiTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        uiTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        uiTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        uiTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

    }
    



}

extension MenuViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: dequeIdentifier, for: indexPath) as! MenuOptionCell
        
        
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLable.text = menuOption?.description
        cell.iconImageView.image = menuOption?.images
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        
        delegate?.handleMenuToggle(formenuOption: menuOption)

    }
    
    
}
