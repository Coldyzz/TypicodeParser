//
//  DetailsAlbumRepository.swift
//  TypicodeParser
//
//  Created by Дима Холод on 21.10.2022.
//

import Foundation
import Alamofire

struct DetailAlbumList: Codable {
    let title: String
    let thumbnailUrl: String
}

class DetailListRepository {
    func loadAlbumList(completion: @escaping ([DetailAlbumList]) -> Void) {
        let request = AF.request("https://jsonplaceholder.typicode.com/photos?albumId=\(<#Any.Type#>)")
        request.responseDecodable(of: [DetailAlbumList].self) {response in
            completion(response.value ?? [])
        }
    }
}
