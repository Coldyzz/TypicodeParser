//
//  AlbumVC.swift
//  TypicodeParser
//
//  Created by Дима Холод on 20.10.2022.
//

import UIKit

class AlbumVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    @IBOutlet weak var albumListView: UICollectionView!
    let albumListRepo = AlbumListRepository()
    var albums: [AlbumList] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ALBUMS"
        let cellNib = UINib(nibName: "AlbumListCell", bundle: nil)
        albumListView.dataSource = self
        albumListView.delegate = self
        albumListView.register(cellNib, forCellWithReuseIdentifier: "AlbumListCell")
        getList()
    }
    func getList () {
        albumListRepo.loadAlbumList { list in
            self.albums = list
            self.albumListView.reloadData()
        }
    }
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return albums.count
    }
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = albumListView.dequeueReusableCell(withReuseIdentifier:"AlbumListCell",for: indexPath) as? AlbumListCell else {
            fatalError("Cell is not expected type")
        }
        cell.data = albums[indexPath.row]
        cell.albumCell = albumListRepo
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let index = indexPath.item
        navigationController?.pushViewController(DetailsAlbumVC, animated: true)
    }
}

