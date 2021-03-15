//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by SUNG HAO LIN on 2021/3/15.
//

import Foundation

enum LoadFeedResult {
  case success([FeedItem])
  case error(Error)
}

protocol FeedLoader {
  func load(completion: @escaping (LoadFeedResult) -> Void)
}
