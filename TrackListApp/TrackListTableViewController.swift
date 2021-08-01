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

        
    }

  
    
    
    
    // MARK: - Table view data source
    
 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    trackList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackName", for: indexPath)

        

        return cell
    }
    

  
    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        
    }
    

}
