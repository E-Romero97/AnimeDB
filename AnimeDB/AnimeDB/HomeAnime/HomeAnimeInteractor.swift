//
//  HomeAnimeInteractor.swift
//  AnimeDB
//
//  Created by Erinson Andres Romero Terry on 14/07/24.
//

import Foundation

protocol HomeAnimeInteractorProtocol {
    
}

class HomeAnimeInteractor {
    var presenter: HomeAnimePresenterProtocol?
    var router: HomeAnimeRouterProtocol?

}
extension HomeAnimeInteractor: HomeAnimeInteractorProtocol {
    
}
