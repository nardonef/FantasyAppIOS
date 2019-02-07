//
//  RequestType.swift
//  Fantasy
//
//  Created by Frank Nardone on 1/29/19.
//  Copyright © 2019 FrankNardone. All rights reserved.
//

import Foundation

public protocol RequestType {
    associatedtype ResponseType: Codable
    var data: Request { get }
}
