//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Mac on 2/15/17.
//  Copyright © 2017 naveen. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imageUrl:String
    private var _videoTitle:String
    private var _videoUrl:String
    
    init(imageUrl:String, videoTitle:String, videoUrl:String) {
        _imageUrl = imageUrl
        _videoTitle = videoTitle
        _videoUrl = videoUrl
    }
    
    var imageUrl:String {
        get{
            return _imageUrl
        }
        set{
            _imageUrl = newValue
        }
    }
    
    var videoTitle:String {
        get{
            return _videoTitle
        }
        set{
            _videoTitle = newValue
        }
    }
    var videoUrl:String {
        get{
            return _videoUrl
        }
        set{
            _videoUrl = newValue
        }
    }
}
