//
//  VideoPlayView.swift
//  VideoPlay-swift
//
//  Created by iOS on 2018/4/2.
//  Copyright © 2018年 weiman. All rights reserved.
//

import UIKit

class VideoPlayView: UIView {

    var ijkPlayer: IJKMPMoviePlayerController = IJKMPMoviePlayerController.init()
    
    //这个swift的单利还没写呢
    class func shareInstance() -> VideoPlayView {
        
       return VideoPlayView()
    }
    
    func videoPlay(url: String, frame: CGRect) {
        guard let player = IJKMPMoviePlayerController.init(contentURLString: url) else {
            return
        }
        ijkPlayer = player
        ijkPlayer.view.frame = frame
        ijkPlayer.view.backgroundColor = .red
        self.addSubview(ijkPlayer.view)
        ijkPlayer.play()
    }
    
    func ijkAVPlay(url: String, frame: CGRect) {
        
        guard let player = IJKAVMoviePlayerController.init(contentURLString: url) else {
            return
        }
        player.view.frame = frame
        player.view.backgroundColor = .green
        self.addSubview(player.view)
        player.play()
    }


}

