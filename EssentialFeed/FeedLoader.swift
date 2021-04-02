//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by SUNG HAO LIN on 2021/3/15.
//

import Foundation

public enum LoadFeedResult {
  case success([FeedItem])
  case failure(Error)
}

protocol FeedLoader {
  func load(completion: @escaping (LoadFeedResult) -> Void)
}
