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
    var menuController : MenuViewController!
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
    
    
    func didSelected(shouldExpand : Bool, menuOptions: MenuOption?){
        if shouldExpand{
            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            }, completion: nil)
        }else{
            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                        self.centerController.view.frame.origin.x = 0
                    }, completion: nil)
            
            
                UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                                    self.centerController.view.frame.origin.x = 0
                }) { (Bool) in
                    
                    guard let menuOption = menuOptions else{
                        return
                    }
                    self.didSelectMenuOption( menuOption: menuOption)
            }
        }
        
    }
    
    
    
    func configureMenuController(){
        if menuController == nil{
            menuController = MenuViewController()
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController?.didMove(toParent: self)
            
            print("ddid have menu conntroller")
        }
    }
    
    
  
    
    func didSelectMenuOption( menuOption: MenuOption){
        switch menuOption{
            
        case .Proile:
            print("this is profile")
        case .Inbox:
        print("this is inbox")

        case .Notifications:
          print("this is notification")

        case .Settings:
            print("this is settings")

            
    }
    }


}

extension ContainerViewController : HomeControllerDelegate{
  
    
    func handleMenuToggle(formenuOption menuOption: MenuOption?) {
              if !isExpandable{
              configureMenuController()
          }
       

          
          isExpandable = !isExpandable
          
        didSelected(shouldExpand: isExpandable,menuOptions : menuOption)

          
    }
    
 
  }


