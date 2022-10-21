//
//  AlbumListRepository.swift
//  TypicodeParser
//
//  Created by Дима Холод on 21.10.2022.
//

import Foundation
import Alamofire

struct AlbumList: Codable {
    let albumId: Int
}

class AlbumListRepository {
    func loadAlbumList(completion: @escaping ([AlbumList]) -> Void) {
        let request = AF.request("https://jsonplaceholder.typicode.com/photos")
        request.responseDecodable(of: [AlbumList].self) {response in
            completion(response.value ?? [])
        }
    }
}
