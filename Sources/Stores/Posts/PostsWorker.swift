//
//  PostsStoreInterfaces.swift
//  SwiftPress
//
//  Created by Basem Emara on 2018-05-29.
//

import ZamzamKit

struct PostsWorker: PostsWorkerType {
    private let store: PostsStore
    
    public init(store: PostsStore) {
        self.store = store
    }
}

extension PostsWorker {
    
    func fetch(completion: @escaping (Result<[PostType], DataError>) -> Void) {
        store.fetch(completion: completion)
    }
    
    func fetch(id: Int, completion: @escaping (Result<PostType, DataError>) -> Void) {
        store.fetch(id: id, completion: completion)
    }
}

extension PostsWorker {
    
    func fetch(byCategoryIDs ids: Set<Int>, completion: @escaping (Result<[PostType], DataError>) -> Void) {
        store.fetch(byCategoryIDs: ids, completion: completion)
    }
    
    func fetch(byTagIDs ids: Set<Int>, completion: @escaping (Result<[PostType], DataError>) -> Void) {
        store.fetch(byTagIDs: ids, completion: completion)
    }
}

extension PostsWorker {
    
    func fetchPopular(completion: @escaping (Result<[PostType], DataError>) -> Void) {
        store.fetchPopular(completion: completion)
    }
    
    func fetchFavorites(completion: @escaping (Result<[PostType], DataError>) -> Void) {
        store.fetchFavorites(completion: completion)
    }
    
    func search(with request: PostsModels.SearchRequest, completion: @escaping (Result<[PostType], DataError>) -> Void) {
        store.search(with: request, completion: completion)
    }
}
