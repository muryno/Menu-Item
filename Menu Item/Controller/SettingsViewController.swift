//
//  SettingsViewController.swift
//  Menu Item
//
//  Created by Muraino Yakubu on 2/16/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    // MARK: - Properties

   var titles: String?
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configuredUi()
    }
    
    func configuredUi(){
        

        navigationController?.navigationBar.barTintColor = .darkGray
         
         navigationController?.navigationBar.barStyle = .black

        
       navigationController?.navigationBar.prefersLargeTitles = true
        
        if titles == titles{
            navigationItem.title = titles
        }
      // navigationItem.title = "Settings"
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "baseline_clear_white_36pt_3x")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(closePage))
    }

    
    // MARK: - Handler

 
    @objc func closePage (){
        dismiss(animated: true, completion: nil)
    }

}
