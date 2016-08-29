//
//  PlaylistTableViewController.swift
//  Playlist
//
//  Created by Nathan on 8/23/16.
//  Copyright © 2016 FalconeDevelopment. All rights reserved.
//

import UIKit

class PlaylistTableViewController: UITableViewController {
    
    // MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {}
}

// MARK: - @IBActions

extension PlaylistTableViewController {
    
    @IBAction func createPlaylistTapped(sender: AnyObject) {}
    
    @IBAction func swipedDownOnMembers(sender: UISwipeGestureRecognizer) {}
    
    @IBAction func longPressOnPlaylistCell(sender: UILongPressGestureRecognizer) {}
}

// MARK: - Table view data source methods

extension PlaylistTableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("playlistCell", forIndexPath: indexPath) as! PlaylistTableViewCell
        
        // TODO: Setup cell
        
        return cell
    }
}

// MARK: - Table view delegate methods

extension PlaylistTableViewController {
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
}
