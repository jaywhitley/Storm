//
//  Team.swift
//  Storm
//
//  Created by Jay Whitley jr on 8/24/15.
//  Copyright (c) 2015 Jay Whitley jr. All rights reserved.
//

import Foundation
import UIKit

// need to create a team object

class Team {
    
    
    
    var teamId = ""
    var title = ""
    var detail = ""
    var location = ""
    var featuredImage:PFFile?
    var player1Image:PFFile?
    var player2Image:PFFile?
    var player3Image:PFFile?
    var player4Image:PFFile?
    var player5Image:PFFile?
    var teamSize:Int = 0
    var teamFormed = false
    var feminineTeam = false
    

    
    
    init(teamId:String, title:String, detail:String, location:String, teamSize:Int, featuredImage:PFFile!, player1Image:PFFile!, player2Image:PFFile!, player3Image:PFFile!, player4Image:PFFile!, player5Image:PFFile!, teamFormed:Bool, feminineTeam:Bool) {
        self.teamId = teamId
        self.title = title
        self.detail = detail
        self.location = location
        self.teamSize = teamSize
        self.featuredImage = featuredImage
        self.player1Image = player1Image
        self.player2Image = player2Image
        self.player3Image = player3Image
        self.player4Image = player4Image
        self.player5Image = player5Image
        self.teamFormed = teamFormed
        self.feminineTeam = feminineTeam
    }
    
    init(pfObject:PFObject) {
        self.teamId = pfObject.objectId!
        self.title = pfObject["title"] as! String
        self.detail = pfObject["detail"] as! String
        self.location = pfObject["location"] as! String
        self.teamSize = pfObject["teamSize"] as! Int
        self.featuredImage = pfObject["featuredImage"] as? PFFile
        self.player1Image = pfObject["player1Image"] as? PFFile
        self.player2Image = pfObject["player2Image"] as? PFFile
        self.player3Image = pfObject["player3Image"] as? PFFile
        self.player4Image = pfObject["player4Image"] as? PFFile
        self.player5Image = pfObject["player5Image"] as? PFFile
        self.teamFormed = pfObject["teamFormed"] as! Bool
        self.feminineTeam = pfObject["feminineTeam"] as! Bool
    }
    
    func toPFObject() -> PFObject {
        
        let productObject = PFObject(className: "Team")
        productObject.objectId = teamId
        productObject["title"] = title
        productObject["teamSize"] = teamSize
        productObject["detail"] = detail
        productObject["location"] = location
        productObject["featuredImage"] = featuredImage
        productObject["player1Image"] = player1Image
        productObject["player2Image"] = player2Image
        productObject["player3Image"] = player3Image
        productObject["player4Image"] = player4Image
        productObject["player5Image"] = player5Image
        productObject["teamFormed"] = teamFormed
        productObject["feminineTeam"] = feminineTeam
        
        return productObject
    }
    
    

   
    
    
    
    
    
}
