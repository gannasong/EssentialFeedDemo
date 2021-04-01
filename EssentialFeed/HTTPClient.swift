//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by SUNG HAO LIN on 2021/4/1.
//

import Foundation

public enum HTTPClientResult {
  case success(Data, HTTPURLResponse)
  case failure(Error)
}

public protocol HTTPClient {
  func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
