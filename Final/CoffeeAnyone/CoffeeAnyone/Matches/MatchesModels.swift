//
//  MatchesModels.swift
//  CoffeeAnyone
//
//  Created by Eric Armstrong on 2/28/20.
//  Copyright © 2020 Dating App. All rights reserved.
//

import SwiftUI

struct Response: Codable {
    var results: [Results]
}

struct Results: Codable {
    var id:Int
    var statement:String
    var name: String
    var age:String
    var occupation: String
    var personalitytype: String
    var education:String
    var haskids:String
    var gender:String
    var height:String
    var bodytype:String
    var city:String
    var hobbies1:String
    var hobbies2:String
    var hobbies3:String
    var hobbies4:String
    var hobbies5:String
    var photo_url:String
    var userid:String
}

struct Users{
    let userid: String?
    let photo_url: String?
    let userName: String?

    init(userDetails:Dictionary<String, Any>){
        userid = userDetails["id"] as? String
        photo_url = userDetails["photo_url"] as? String
        userName = userDetails["name"] as? String
    }
    
    func getUserName()->String{
        return self.userName!
    }
}
