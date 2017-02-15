//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Mac on 2/13/17.
//  Copyright © 2017 naveen. All rights reserved.
//

import UIKit

class MainVc: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var partyrocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        let p1 = PartyRock(imageUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg",
                           videoTitle: "Lights Out",
                           videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>")
        
        let p2 = PartyRock(imageUrl: "http://www.croshalgroup.com/wp-content/uploads/2015/05/Redfoo-Website.jpg", videoTitle: "Let's Get Ridiculous",videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1w9DiGlZksU\" frameborder=\"0\" allowfullscreen></iframe>")
        let p3 = PartyRock(imageUrl: "https://i.ytimg.com/vi/2wUxw6GH3IM/hqdefault.jpg", videoTitle: "Juicy Wiggle Lesson", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vg_nvEGryA4\" frameborder=\"0\" allowfullscreen></iframe>")
        let p4 = PartyRock(imageUrl: "http://www.billboard.com/files/styles/article_main_image/public/media/lmfao-party-rock-anthem-2011-billboard-650.jpg", videoTitle: "Party Rock Commercial", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gZIqW92GaTQ\" frameborder=\"0\" allowfullscreen></iframe>")
        let p5 = PartyRock(imageUrl: "http://direct-ns.rhap.com/imageserver/v2/albums/Alb.219913217/images/600x600.jpg", videoTitle: "Juicy Wiggle", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>")
        
        partyrocks.append(p1)
        partyrocks.append(p2)
        partyrocks.append(p3)
        partyrocks.append(p4)
        partyrocks.append(p5)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "partyCell", for: indexPath) as? PartyCell
        tableViewCell?.updateView(partyRock: partyrocks[indexPath.row])
        return tableViewCell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyrocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyrocks[indexPath.row]
        performSegue(withIdentifier: "videoVc", sender: partyRock)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let videoVc = segue.destination as? VideoVc{
            if let partyRock = sender as? PartyRock {
                videoVc.partyRock = partyRock
            }
        }
    }
}

