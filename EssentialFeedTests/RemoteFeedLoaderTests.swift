//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by SUNG HAO LIN on 2021/3/15.
//

import XCTest

class RemoteFeedLoader {

}

class HTTPClient {
  var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {

  func test_init_doesNotRequestDataFromURL() {
    let client = HTTPClient()
    _ = RemoteFeedLoader()

    XCTAssertNil(client.requestedURL)
  }
}
