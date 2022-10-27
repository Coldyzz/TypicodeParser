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
    func loadDetailAlbumList(albumId: Int, completion: @escaping ([DetailAlbumList]) -> Void) {
        let requestString = "https://jsonplaceholder.typicode.com/photos?albumId=\(albumId)"
        let request = AF.request(requestString)
    request.responseDecodable(of: [DetailAlbumList].self) {response in
        completion(response.value ?? [])
    }
    }
}

// id = albumID(т.е. в детейлсах айди это альбом айди

