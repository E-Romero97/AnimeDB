//
//  HomeAnimeViewController.swift
//  AnimeDB
//
//  Created by Erinson Andres Romero Terry on 14/07/24.
//

import UIKit

protocol HomeAnimeViewProtocol {
    
}

class HomeAnimeViewController: UIViewController {
    
    var presenter: HomeAnimePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeAnimeViewController: HomeAnimeViewProtocol {
    
}
