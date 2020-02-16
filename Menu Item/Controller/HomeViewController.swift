//
//  HomeViewController.swift
//  Menu Item
//
//  Created by Muraino Yakubu on 2/14/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    var delegate : HomeControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        ConfiguredNavigationnBasr()
    }
    


    func ConfiguredNavigationnBasr()  {
        navigationController?.navigationBar.barTintColor = .gray
        
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Menu Item"
        
        //the menu item
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:
            UIImage(named: "ic_menu_white_3x")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    
    @objc func handleMenuToggle(){
        print("toggle")
        delegate?.handleMenuToggle(formenuOption : nil)
    }
}
