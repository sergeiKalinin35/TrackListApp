//
//  TrackDetailsViewController.swift
//  TrackListApp
//
//  Created by Sergey on 02.08.2021.
//

import UIKit

class TrackDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var artCoverImageView: UIImageView!
    @IBOutlet weak var trackLabel: UILabel!
    
    var track: Track!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        artCoverImageView.image =  UIImage(named: track.track)
        trackLabel.text = track.track
    
    }
  

}
