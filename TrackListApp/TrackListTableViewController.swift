//
//  TrackListTableViewController.swift
//  TrackListApp
//
//  Created by Sergey on 01.08.2021.
//

import UIKit

class TrackListTableViewController: UITableViewController {
    
    var trackList = Track.getTrackList()
    
    
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80
        
    }

  
    
    
    
    // MARK: - Table view data source
    
 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    trackList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "trackName", for: indexPath)
        let track = trackList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = track.song
        content.secondaryText = track.artist
        content.image = UIImage(named: track.track)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        
        
        
        
    //   cell.textLabel?.text = track.song
     //   cell.textLabel?.numberOfLines = 2
     //   cell.detailTextLabel?.text = track.artist
        //    cell.imageView?.image = UIImage(named: track.title)
   //     cell.imageView?.layer.cornerRadius = tableView.rowHeight / 2
   //     cell.imageView?.clipsToBounds = true
        

        return cell
    }
    
   
   //     override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      //      100
   //     }
    
  
    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trackDetailsVc = segue.destination as! TrackDetailsViewController
        // индекс выбранной ячейки
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        trackDetailsVc.track = trackList[indexPath.row]
        
    }
    

}
