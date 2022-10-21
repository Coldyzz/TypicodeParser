//
//  AlbumListRepository.swift
//  TypicodeParser
//
//  Created by Дима Холод on 21.10.2022.
//

import Foundation
import Alamofire
// id = albumID(т.е. в детейлсах айди это альбом айди
struct AlbumList: Codable {
    let id: Int
    let title: String
}

class AlbumListRepository {
    func loadAlbumList(completion: @escaping ([AlbumList]) -> Void) {
        let request = AF.request("https://jsonplaceholder.typicode.com/albums")
        request.responseDecodable(of: [AlbumList].self) {response in
            completion(response.value ?? [])
        }
    }
}
