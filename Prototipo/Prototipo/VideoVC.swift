//
//  VideoVC.swift
//  Prototipo
//
//  Created by Luisa Beatriz Garcia Alva on 08/04/18.
//  Copyright © 2018 Luisa Beatriz Garcia Alva. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoVC: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ligaVideo = "https://onedrive.live.com/download?cid=4B22E2FD473DD380&resid=4B22E2FD473DD380%2160767&authkey=AIksBqxQz1bZvVE"
        //Video almacenado en mi cuenta de one drive personal, el proporcionado en el tema no estaba disponible
        
        let urlvideo = URL(string: ligaVideo)
        
        if let urlvideo = urlvideo {
            let asset = AVAsset(url: urlvideo)
            let item = AVPlayerItem(asset: asset)
            let miPlayer = AVPlayer(playerItem: item)
            
            self.player = miPlayer
            miPlayer.play()
        }
    }
    
}
