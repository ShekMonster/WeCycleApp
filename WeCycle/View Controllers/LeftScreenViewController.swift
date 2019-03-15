//
//  LeftScreenViewController.swift
//  WeCycle
//
//  Created by Abhishek More on 2/20/19.
//  Copyright © 2019 Abhishek More. All rights reserved.
//

import UIKit

class LeftScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var friendsCard: UIImageView!
    @IBOutlet var profileCard: UIImageView!
    @IBOutlet var rankText: UILabel!
    @IBOutlet var profileText: UILabel!
    @IBOutlet var topRect: UIImageView!
    @IBOutlet var profileHolder: UIView!
    @IBOutlet weak var containerView: UIView!
    
    var profileCenter: CGFloat = 0
    var friendsCenter: CGFloat = 0
    var topRectCenter: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileCenter = profileHolder.center.y
        friendsCenter = containerView.center.y
        topRectCenter = topRect.center.y
        
    }
    
    
    
    func swipeReaction(num: Double) {
        
        rankText.alpha = CGFloat(abs(1 - num / 125))
        profileText.alpha = CGFloat(abs(1 - num / 125))
        profileHolder.center.y = profileCenter - CGFloat(500 * abs((num / 375)))
        containerView.center.y = friendsCenter + CGFloat(500 * abs((num / 375)))
        topRect.center.y = topRectCenter - CGFloat(75 * abs((num / 375)))

    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // MARK: UITableView stuffs
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "default")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }

}

