//
//  ViewController.swift
//  MyArtist
//
//  Created by Nishant Sood on 2/17/17.
//  Copyright © 2017 Nishant Sood. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var artistData = [MyArtistModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let video1 = MyArtistModel(imageURL: "https://upload.wikimedia.org/wikipedia/en/3/3d/Coldplay_-_A_Head_Full_of_Dreams.png",
                                   videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vGZMvV9KBp8\" frameborder=\"0\" allowfullscreen></iframe>",
                                   videoTitle: "A Head Full Of Dreams")
        
        
        let video2 = MyArtistModel(imageURL: "https://i0.wp.com/cliffordstumme.com/wp-content/uploads/2015/12/Screen-Shot-2015-12-05-at-9.21.02-AM.png",
                                   videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YykjpeuMNEk\" frameborder=\"0\" allowfullscreen></iframe>",
                                   videoTitle: "Hymn for The Weekend")
        
        let video3 = MyArtistModel(imageURL: "https://upload.wikimedia.org/wikipedia/en/8/8d/Coldplay_-_A_Sky_Full_of_Stars_%28Single%29.png",
                                   videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VPRjCeoBqr\" frameborder=\"0\" allowfullscreen></iframe>",
                                   videoTitle: "A Sky Full Of Stars")
        
        let video4 = MyArtistModel(imageURL: "https://upload.wikimedia.org/wikipedia/en/thumb/9/93/Coldplay_Fix_You.svg/500px-Coldplay_Fix_You.svg.png",
                                   videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/k4V3Mo61fJM\" frameborder=\"0\" allowfullscreen></iframe>",
                                   videoTitle: "Fix You")
        
        let video5 = MyArtistModel(imageURL: "https://upload.wikimedia.org/wikipedia/en/a/a8/In_My_Place.jpg",
                                   videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gnIZ7RMuLpU\" frameborder=\"0\" allowfullscreen></iframe>",
                                   videoTitle: "In My Place")
        
        
        artistData.append(video1)
        artistData.append(video2)
        artistData.append(video3)
        artistData.append(video4)
        artistData.append(video5)
        
        //Important to add these protocols in order to trigger the event
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Override Functions
    
    //Returns the cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistCell", for: indexPath) as? ViewCell
        {
            let artistCell = artistData[indexPath.row]
            
            cell.updateUI(artistData: artistCell)
            
            return cell
        }else
        {
            return UITableViewCell()
        }
       
    }
    
    //Returns the number of items in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return artistData.count
    }


}

