//
//  ViewController.swift
//  AnimeDB
//
//  Created by Erinson Andres Romero Terry on 14/07/24.
//

import UIKit

class HomeAnimeModule {
    
    static func make() -> UIViewController {

        guard let view = AppStoryboard.homeAnime.viewController(HomeAnimeViewController.self) else {
            return UIViewController()
        }
        
        let presenter = HomeAnimePresenter()
        let interactor = HomeAnimeInteractor()
        let router = HomeAnimeRouter()
        
        router.view = view
        
        presenter.router = router
        presenter.interactor = interactor
        
        presenter.view = view
        
        interactor.presenter = presenter
        
        view.presenter = presenter
        
        return view
    }
    
}

