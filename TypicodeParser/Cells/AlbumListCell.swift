//
//  AlbumListCell.swift
//  TypicodeParser
//
//  Created by Дима Холод on 21.10.2022.
//

import UIKit

class AlbumListCell: UICollectionViewCell {
    @IBOutlet weak var albumTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    var data: AlbumList! {
        didSet {
            prepareForReuse()
        }
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        albumTitle.text = data.title
    }
}

