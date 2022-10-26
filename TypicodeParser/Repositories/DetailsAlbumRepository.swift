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
let requestString = "https://jsonplaceholder.typicode.com/photos?albumId=2"
class DetailListRepository {
    func loadDetailAlbumList(completion: @escaping ([DetailAlbumList]) -> Void) {
        let request = AF.request(requestString)
    request.responseDecodable(of: [DetailAlbumList].self) {response in
        completion(response.value ?? [])
    }
    }
}

// id = albumID(т.е. в детейлсах айди это альбом айди
