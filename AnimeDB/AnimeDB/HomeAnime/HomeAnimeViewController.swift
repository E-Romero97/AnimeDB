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
    
    
    @IBOutlet weak var animeTable: UITableView!
    
    let titleSection = ["Top Animes", "Recomendations", "Random"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Animes"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass.circle"), style: .plain, target: self, action: #selector(searchTapButton))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "book.circle"), style: .plain, target: self, action: #selector(savedTapButton))
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        self.animeTable.delegate = self
        self.animeTable.dataSource = self
        
    }
    
    @objc private func searchTapButton() {
        
    }
    
    @objc private func savedTapButton() {
        
    }
    
    func setupTableViewcell(index: Int) -> String {
        return titleSection[index]
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

extension HomeAnimeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeAnimeTableViewCell", for: indexPath) as! HomeAnimeTableViewCell
        cell.sectionName.text = setupTableViewcell(index: indexPath.row)
        return cell
    }
    
    
}

extension HomeAnimeViewController: HomeAnimeViewProtocol {
    
}
