//
//  DetailsAlbumVC.swift
//  TypicodeParser
//
//  Created by Дима Холод on 20.10.2022.
//

import UIKit

class DetailsAlbumVC: UIViewController, UICollectionViewDataSource {
    @IBOutlet weak var detailsView: UICollectionView!
    let detailListRepo = DetailListRepository()
    var detailList: [DetailAlbumList] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "DETAILS ALBUM"
        let cellNib = UINib(nibName: "DetailAlbumCell", bundle: nil)
        detailsView.dataSource = self
        detailsView.register(cellNib, forCellWithReuseIdentifier: "DetailAlbumCell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return detailList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = detailsView.dequeueReusableCell(withReuseIdentifier:"DetailAlbumCell",for: indexPath) as? DetailAlbumCell else {
            fatalError("Cell is not expected type")
        }
        cell.data = detailList[indexPath.row]
        cell.detailCell = detailListRepo
        return cell
    }
    
}
