//
//  DetailsAlbumVC.swift
//  TypicodeParser
//
//  Created by Дима Холод on 20.10.2022.
//

import UIKit

class DetailsAlbumVC: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
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
}
