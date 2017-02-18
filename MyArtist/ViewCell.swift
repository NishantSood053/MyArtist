//
//  ViewCell.swift
//  MyArtist
//
//  Created by Nishant Sood on 2/17/17.
//  Copyright © 2017 Nishant Sood. All rights reserved.
//

import UIKit

class ViewCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    
    func updateUI(artistData:  MyArtistModel)
    {
        videoTitle.text = artistData.videoTitle
        //Set image from URL
        let url = URL(string: artistData.imageURL)! //Unwrap
        
        //Closure
        //this can do operations on a spearate thread but cannot update the ui
        DispatchQueue.global().async {
            do{
            
                let data = try Data(contentsOf: url)
                
                //Grab the UI thread by using sync and update the data
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                    }
                }catch
                {
                    //Handle the error
                }
                
            }
        
    }
        
        
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
