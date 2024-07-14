//
//  AppStoryboard.swift
//  AnimeDB
//
//  Created by Erinson Andres Romero Terry on 14/07/24.
//

import Foundation
import UIKit

enum AppStoryboard: String {
    case homeAnime = "HomeAnimeModule"
    
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
    
    func viewController<T>(_ viewController: T.Type) -> T? where T: UIViewController {
        let identifier = String(describing: T.self)
        return self.instance.instantiateViewController(withIdentifier: identifier) as? T
    }
    
}

