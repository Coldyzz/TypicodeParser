//
//  DetailsAlbumVC.swift
//  TypicodeParser
//
//  Created by Дима Холод on 20.10.2022.
//

import UIKit

class DetailsAlbumVC: UIViewController {
    @IBOutlet weak var detailsView: UICollectionView!
    let detailListRepo = DetailListRepository()
    var detailList: [DetailAlbumList] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
