//
//  DetailAlbumCell.swift
//  TypicodeParser
//
//  Created by Дима Холод on 21.10.2022.
//

import UIKit
import AlamofireImage

class DetailAlbumCell: UICollectionViewCell {
    
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    var data: DetailAlbumList! {
        didSet {
            prepareForReuse()
        }
    }
    var detailCell: DetailListRepository!
    override func prepareForReuse() {
        super.prepareForReuse()
        detailTitle.text = data.title
        guard let url = URL(string: data.thumbnailUrl) else {
            detailImage.image = nil
            return
        }
        detailImage.af.setImage(withURL: url)
    }
}
