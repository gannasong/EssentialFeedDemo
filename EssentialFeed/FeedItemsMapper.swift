//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by SUNG HAO LIN on 2021/4/1.
//

import Foundation

internal final class FeedItemsMapper {

  private static var OK_200: Int { return 200 }

  private struct Root: Decodable {
    let items: [Item]
  }

  // 符合 JSON 的 model
  private struct Item: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL

    var item: FeedItem {
      return FeedItem(id: id,
                      description: description,
                      location: location,
                      imageURL: image)
    }
  }

  internal static func map(_ data: Data, _ response: HTTPURLResponse) throws -> [FeedItem] {
    guard response.statusCode == OK_200 else {
      throw RemoteFeedLoader.Error.invalidData
    }

    let root = try JSONDecoder().decode(Root.self, from: data)
    return root.items.map { $0.item }
  }
}
