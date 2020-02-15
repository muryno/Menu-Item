//
//  MenuOption.swift
//  Menu Item
//
//  Created by Muraino Yakubu on 2/15/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import Foundation
import UIKit


enum MenuOption : Int , CustomStringConvertible {

    
    case Proile
    case Inbox
    case Notifications
    case Settings
    
    var description: String{
        
        switch self {
        case .Proile:
            return "Proile"
        case .Inbox:
            return "Inbox"
        case .Notifications:
            return "Notifications"
        case .Settings:
            return "Settings"
        }
            
    }
    
        
        var images : UIImage{
            
            switch self {
              case .Proile:
                return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
              case .Inbox:
                  return UIImage(named: "ic_mail_outline_white_2x") ?? UIImage()
              case .Notifications:
                  return UIImage(named: "ic_menu_white_3x") ?? UIImage()
              case .Settings:
                  return UIImage(named: "baseline_settings_white_24dp") ?? UIImage()
            }
        }

    
    
}

