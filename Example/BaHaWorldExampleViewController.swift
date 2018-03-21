//
//  BaHaWorldViewController.swift
//  Example
//
//  Created by Apple on 2018/3/21.
//  Copyright © 2018年 Xmartlabs. All rights reserved.
//

import UIKit
import XLActionController

class BaHaWorldExampleViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    @IBAction func backButtonDidTouch(_ sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tapGestureDidRecognize(_ sender: UITapGestureRecognizer) {
        let actionController = BaHaActionController()
        
        actionController.addAction(Action(ActionData(title: "Add to Watch Later", image: UIImage(named: "yt-add-to-watch-later-icon")!), style: .default, handler: { action in
        }))
        actionController.addAction(Action(ActionData(title: "Add to Playlist...", image: UIImage(named: "yt-add-to-playlist-icon")!), style: .default, handler: { action in
        }))
        actionController.addAction(Action(ActionData(title: "Share...", image: UIImage(named: "yt-share-icon")!), style: .default, handler: { action in
        }))
        actionController.addAction(Action(ActionData(title: "Cancel", image: UIImage(named: "yt-cancel-icon")!), style: .cancel, handler: nil))
        
        present(actionController, animated: true, completion: nil)
    }
}
