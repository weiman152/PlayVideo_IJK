//
//  VideoPlayView+Ext.swift
//  VideoPlay-swift
//
//  Created by iOS on 2018/4/2.
//  Copyright © 2018年 weiman. All rights reserved.
//

import Foundation

extension VideoPlayView {
    //添加观察者
    func installMovieNotificationObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(loadStateDidChange(noti:)), name: NSNotification.Name.IJKMPMoviePlayerLoadStateDidChange, object: ijkPlayer)
        
        NotificationCenter.default.addObserver(self, selector: #selector(playBackDidFinish(noti:)), name: NSNotification.Name.IJKMPMoviePlayerPlaybackDidFinish, object: ijkPlayer)
        
        NotificationCenter.default.addObserver(self, selector: #selector(playbackIsPreparedToPlayDidChange(noti:)), name: NSNotification.Name.IJKMPMediaPlaybackIsPreparedToPlayDidChange, object: ijkPlayer)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(playbackStateDidChange(noti:)), name: NSNotification.Name.IJKMPMoviePlayerPlaybackStateDidChange, object: ijkPlayer)
    }
    
    @objc private func loadStateDidChange(noti: NSNotification) {
        let currentPlayer = noti.object as! IJKMPMoviePlayerController
        print("---aaa---- \(currentPlayer.currentPlaybackTime)")
        let loadState = currentPlayer.loadState
        print("----aaaaaaa--------\(loadState)")
    }
    
    @objc private func playBackDidFinish(noti: NSNotification) {
        let currentPlayer = noti.object as! IJKMPMoviePlayerController
        print("---bbb---- \(currentPlayer.playbackState)")
        print("播放完成")
    }
    
    @objc private func playbackIsPreparedToPlayDidChange(noti: NSNotification) {
        let currentPlayer = noti.object as! IJKMPMoviePlayerController
        print("playbackIsPreparedToPlayDidChange")
        print("---ccc---- \(currentPlayer.playbackState)")
    }
    
    @objc private func playbackStateDidChange(noti: NSNotification) {
        let currentPlayer = noti.object as! IJKMPMoviePlayerController
        print("---ddd---- \(currentPlayer.playbackState)")
        print("playbackStateDidChange")
        let state = ijkPlayer.playbackState
        print("-----sss-------- \(state)")
    }
}
