//
//  tab1Controler.swift
//  Fantasy
//
//  Created by Frank Nardone on 8/20/18.
//  Copyright © 2018 FrankNardone. All rights reserved.
//

import Foundation
import UIKit
import SearchTextField

class comparePlayersController: UIViewController {
    
    @IBOutlet weak var searchBar2: SearchTextField!
    @IBOutlet weak var searchBar: SearchTextField!
    var players = Array<Player>()
    var overlay : UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //overlay
        overlay = UIView(frame: view.frame)
        overlay!.backgroundColor = UIColor.black
        overlay!.alpha = 0.8
        view.addSubview(overlay!)
        
        //searchbar hiding
        searchBar.isHidden = true
        searchBar2.isHidden = true

        //getting players data from api
        getPlayers()
    }
    
    func getPlayers(){
        let getPlayers = GetPlayersNetwork();
        
        getPlayers.execute(onSuccess: getPlayersSuccess, onError: { (error: Error) in
            print(error)
            exit(0)
        })
    }
    
    //what to do when we successufully get data back from api
    func getPlayersSuccess(response: [Player]) {
        //get array of player names
        var playerNames = Array<String>()
        for x in response{
            playerNames.append(x.name!)
        }
        
        //add players to dropdown and show
        self.searchBar.filterStrings(playerNames)
        self.searchBar.isHidden = false
        self.searchBar2.filterStrings(playerNames)
        self.searchBar2.isHidden = false
        
        //remove overlay
        overlay?.removeFromSuperview()
    }
}
