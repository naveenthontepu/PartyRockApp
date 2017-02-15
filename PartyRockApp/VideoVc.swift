//
//  VideoVc.swift
//  PartyRockApp
//
//  Created by Mac on 2/14/17.
//  Copyright © 2017 naveen. All rights reserved.
//

import UIKit

class VideoVc: UIViewController {
    
    @IBOutlet weak var videoWebView: UIWebView!
    private var _partyRock:PartyRock!
    
    var partyRock:PartyRock{
        get{
            return _partyRock
        }
        set{
            _partyRock = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        videoWebView.loadHTMLString(partyRock.videoUrl, baseURL: nil)
    }
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
