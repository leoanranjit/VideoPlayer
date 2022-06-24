//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Leoan Ranjit on 6/21/22.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    // MARK: - Initialization
    
    // MARK: - Constants and variables
    var playerContainerView: UIView!
    private var playerView: PlayerView!
    private let videoURL = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
    
    // MARK: - ViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPlayerContainerView()
        setUpPlayerView()
        playVideo()
    }
    override func viewWillAppear(_ animated: Bool) {
    }
    
    // MARK: - IBAction Functions
    
    // MARK: - Additional Functions
    private func setUpPlayerContainerView() {
        playerContainerView = UIView()
        playerContainerView.backgroundColor = .black
        view.addSubview(playerContainerView)
        playerContainerView.translatesAutoresizingMaskIntoConstraints = false
        playerContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        playerContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        playerContainerView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5625).isActive = true
        
        if #available(iOS 11.0, *) {
            playerContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        } else {
            playerContainerView.topAnchor.constraint(equalTo: topLayoutGuide.topAnchor).isActive = true
        }
    }
    private func setUpPlayerView() {
        playerView = PlayerView()
        playerContainerView.addSubview(playerView)
        
        playerView.translatesAutoresizingMaskIntoConstraints = false
        playerView.leadingAnchor.constraint(equalTo: playerContainerView.leadingAnchor).isActive = true
        playerView.trailingAnchor.constraint(equalTo: playerContainerView.trailingAnchor).isActive = true
        playerView.heightAnchor.constraint(equalTo: playerContainerView.widthAnchor, multiplier: 16/9).isActive = true
        playerView.centerYAnchor.constraint(equalTo: playerContainerView.centerYAnchor).isActive = true
    }
    func playVideo() {
        guard let url = URL(string: videoURL) else { return }
        playerView.play(with: url)
    }
    
}


