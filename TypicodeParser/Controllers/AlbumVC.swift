//
//  AlbumVC.swift
//  TypicodeParser
//
//  Created by Дима Холод on 20.10.2022.
//

import UIKit

class AlbumVC: UIViewController, UICollectionViewDelegate {
    @IBOutlet weak var albumListView: UICollectionView!
    let albumListRepo = AlbumListRepository()
    var albums: [AlbumList] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let cellNib = UINib(nibName: "AlbumListCell", bundle: nil)
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
}

