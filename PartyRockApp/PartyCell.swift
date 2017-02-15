//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Mac on 2/15/17.
//  Copyright © 2017 naveen. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateView(partyRock:PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //TODO download video and show it
    }

}
