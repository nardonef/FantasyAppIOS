//
//  NetworkDispacher.swift
//  Fantasy
//
//  Created by Frank Nardone on 1/29/19.
//  Copyright © 2019 FrankNardone. All rights reserved.
//

import Foundation

public protocol NetworkDispatcher {
    func dispatch(request: Request, onSuccess: @escaping (Data) -> Void, onError: @escaping (Error) -> Void)
}
