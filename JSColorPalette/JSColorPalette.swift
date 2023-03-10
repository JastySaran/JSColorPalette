//
//  JSColorPalette.swift
//  JSColorPalette
//
//   Created by JastySaran on 18/06/22.
//

import Foundation

import Foundation
import UIKit

enum Theme: String {
    case system = "Hydra"
    case earth = "Earth"
    case aura = "Aura"
    case leo = "Leo"
    case twilight = "Twilight"
    case heart = "Heart"
    
  
    var actionColor:UIColor?{
        switch self {
        case .system:
         return UIColor.init(red: 40.0/255.0, green: 57.0/255.0, blue: 135.0/255.0, alpha: 1.0)
        case .earth:
            return UIColor(red: 198/255.0, green: 107.0/255.0, blue: 61.0/255.0, alpha: 1.0)
        case .aura:
            return UIColor.init(red: 222.0/255.0, green: 49.0/255.0, blue: 97.0/255.0, alpha: 1.0)
        case .leo:
         return UIColor.orange
        case .twilight:
         return UIColor.init(red: 255.0/255.0, green:105.0/255.0, blue: 97.0/255.0, alpha: 1.0)
        case .heart:
         return UIColor.init(red:255.0/255.0, green: 105.0/255.0, blue: 97.0/255.0, alpha: 1.0)
        }
    }
    
    var headingColor:UIColor?{
        switch self {
        case .system:
            if #available(iOS 12.0, *) {
                let interfaceStyle = UIUserInterfaceStyle.init(rawValue: ThemeManager.getAppMode()) ?? .light
            if interfaceStyle == .dark{
                return UIColor.white
            }
            else{
                return UIColor.black
            }
            } else {
                print("Dark Mode doesn't work on ios 11")
                return UIColor.black
            }
            
        case .earth:
            return UIColor(red: 38.0/255.0, green: 73.0/255.0, blue: 92.0/255.0, alpha: 1.0)
        case .aura:
            return UIColor(red: 16.0/255.0, green: 85.0/255.0, blue: 154.0/255.0, alpha: 1.0)
        case .leo:
            return UIColor.init(red: 143.0/255.0, green: 0.0/255.0, blue: 225.0/255.0, alpha: 1.0)
        case .twilight:
            return UIColor.init(red: 0.0/255.0, green: 128.0/255.0, blue: 128.0/255.0, alpha: 1.0)
        case .heart:
            return UIColor.init(red: 0.0/255.0, green: 128.0/255.0, blue: 128.0/255.0, alpha: 1.0)
        }
    }
    
}

struct ThemeManager {
  
    static func getAppMode() -> Int {
        let string =
        UserDefaults.standard.integer(forKey: "userInterfaceStyle")
        return string
    }
    
    // CurrentTheme() Stores the current theme selected by user and return Theme
    static func currentTheme(theme:Theme) -> Theme {
       return theme
    }
    
    static func applyTheme(theme:Theme) {
        JSButtonWithIndexing.appearance().backgroundColor = theme.actionColor
        JSHeaderLabel.appearance().textColor = theme.headingColor
        JSActionLabel.appearance().textColor = theme.actionColor
        UISwitch.appearance().thumbTintColor = theme.actionColor
        if #available(iOS 13.0, *) {
            UISegmentedControl.appearance().selectedSegmentTintColor = theme.actionColor
            let appearance = UINavigationBarAppearance()
            let textAttributes = [NSAttributedString.Key.foregroundColor:theme.headingColor]
            appearance.titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
            UINavigationBar.appearance().standardAppearance = appearance
        }else{
            print("Doesn't support earlier version of iOS 13.0")
        }
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.white], for: .selected)
        UISwitch.appearance().onTintColor = theme.headingColor
        JSButtonWithoutIndexing.appearance().tintColor = theme.headingColor
      
        
    }
    
    static func applyFont(){
        //HeaderLabel.appearance().font = UIFont.init(name: "Montserrat-Medium", size: 16.0)
        UILabel.appearance().font = UIFont.init(name: "Montserrat-Medium", size: 8.0)
    }
}

class JSButtonWithoutIndexing: UIButton{ }
class JSHeaderLabel: UILabel{ }
class JSSolidView: UIView { }
class JSButtonWithIndexing: UIButton{
    var indexPath:IndexPath?
}
class JSActionLabel: UILabel{
    
}

 
