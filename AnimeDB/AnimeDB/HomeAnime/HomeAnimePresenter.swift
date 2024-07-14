//
//  HomeAnimePresenter.swift
//  AnimeDB
//
//  Created by Erinson Andres Romero Terry on 14/07/24.
//

import Foundation

protocol HomeAnimePresenterProtocol {
    
}

class HomeAnimePresenter {
    var view: HomeAnimeViewProtocol?
    var interactor: HomeAnimeInteractorProtocol?
    var router: HomeAnimeRouterProtocol?
}

extension HomeAnimePresenter: HomeAnimePresenterProtocol {
    
}
