//
//  HomeAnimeTableViewCell.swift
//  AnimeDB
//
//  Created by Erinson Andres Romero Terry on 21/07/24.
//

import UIKit

class HomeAnimeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var sectionName: UILabel!
    @IBOutlet weak var HomeAnimeCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.HomeAnimeCollectionView.delegate = self
        self.HomeAnimeCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension HomeAnimeTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeAnimeCollectionViewCell", for: indexPath) as! HomeAnimeCollectionViewCell
        return cell
    }
}

