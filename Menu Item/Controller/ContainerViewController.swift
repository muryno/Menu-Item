//
//  ContainerViewController.swift
//  Menu Item
//
//  Created by Muraino Yakubu on 2/14/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    //MARK:- properties
    var menuController : UIViewController!
    var centerController : UIViewController!
    
    var isExpandable : Bool = false
    //MARK:- Init
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
         ConfigureHomeController()
    }
    
    //status bar top text color
    override var preferredStatusBarStyle: UIStatusBarStyle{
     return  .lightContent
    }
    
    //MARK:- Handlers
    
    func ConfigureHomeController() {
        let homeController = HomeViewController()
        homeController.delegate = self
        
        centerController = UINavigationController(rootViewController: homeController)
        
        view.addSubview(centerController.view)
        addChild(centerController)
        
        centerController.didMove(toParent: self)
        
        

    }
    
    
    func showMenuController(shouldExpand : Bool){
        if shouldExpand{
            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            }, completion: nil)
        }else{
            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                        self.centerController.view.frame.origin.x = 0
                    }, completion: nil)
        }
    }
    
    
    
    func configureMenuController(){
        if menuController == nil{
            menuController = MenuViewController()
            
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController?.didMove(toParent: self)
            
            print("ddid have menu conntroller")
        }
    }
    
    
  
    
    


}

extension ContainerViewController : HomeControllerDelegate{
      func handleMenuToggle(){
        
        if !isExpandable{
            configureMenuController()
        }
        
        isExpandable = !isExpandable
        
        showMenuController(shouldExpand: isExpandable)

        
    }
  }

