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
        let p1 = PartyRock(imageUrl: "", videoTitle: "Song 1", videoUrl: "")
        let p2 = PartyRock(imageUrl: "", videoTitle: "Song 2", videoUrl: "")
        let p3 = PartyRock(imageUrl: "", videoTitle: "Song 3", videoUrl: "")
        let p4 = PartyRock(imageUrl: "", videoTitle: "Song 4", videoUrl: "")
        let p5 = PartyRock(imageUrl: "", videoTitle: "Song 5", videoUrl: "")
        let p6 = PartyRock(imageUrl: "", videoTitle: "Song 6", videoUrl: "")
        
        partyrocks.append(p1)
        partyrocks.append(p2)
        partyrocks.append(p3)
        partyrocks.append(p4)
        partyrocks.append(p5)
        partyrocks.append(p6)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "partyCell", for: indexPath) as? PartyCell
        tableViewCell?.updateView(partyRock: partyrocks[indexPath.row])
        return tableViewCell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyrocks.count
    }

}

