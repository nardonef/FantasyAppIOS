//
//  GetPlayers.swift
//  Fantasy
//
//  Created by Frank Nardone on 1/29/19.
//  Copyright © 2019 FrankNardone. All rights reserved.
//

import Foundation

public class GetPlayersNetwork: RequestType {
    public var path = "https://api.fantasydata.net/v3/nfl/projections/JSON/PlayerSeasonProjectionStats/2018REG"
    public var headers = ["Ocp-Apim-Subscription-Key" : "private"]
    public var data: Request
    public typealias ResponseType = [Player]
    
    init() {
        self.data = Request(path: path, method: .get, headers: headers)
    }
}
