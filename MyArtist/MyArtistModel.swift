//
//  MyArtistModel.swift
//  MyArtist
//
//  Created by Nishant Sood on 2/17/17.
//  Copyright © 2017 Nishant Sood. All rights reserved.
//

import Foundation

class MyArtistModel
{
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
    
    var imageURL: String{
        return _imageURL
    }
    
    var videoURL: String{
        return _videoURL
    }
    
    var videoTitle: String{
        return _videoTitle
    }
}
