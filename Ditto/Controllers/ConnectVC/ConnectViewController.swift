//
//  ConnectVC.swift
//  Ditto
//
//  Created by Melanie Cooray on 3/16/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

class ConnectViewController: UIViewController, SPTAudioStreamingDelegate {
    
    var dummyLogButton: UIButton!
    var dummyProfileButton: UIButton!
    
    var connectButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        connectButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        connectButton.center = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        connectButton.setTitle("Connect", for: .normal)
        connectButton.addTarget(self, action: #selector(connectButtonPressed), for: .touchUpInside)
        connectButton.backgroundColor = .green
        view.addSubview(connectButton)
    }
    
    @objc func connectButtonPressed() {
        let appURL = SPTAuth.defaultInstance().spotifyAppAuthenticationURL()!
        let webURL = SPTAuth.defaultInstance().spotifyWebAuthenticationURL()!
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(receievedUrlFromSpotify(_:)),
                                               name: NSNotification.Name.Spotify.authURLOpened,
                                               object: nil)
        
        //Check to see if the user has Spotify installed
        if SPTAuth.supportsApplicationAuthentication() {
            //Open the Spotify app by opening its url
            UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
        } else {
            //Present a web browser in the app that lets the user sign in to Spotify
            UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
        }
    }
    
    @objc func receievedUrlFromSpotify(_ notification: Notification) {
        guard let url = notification.object as? URL else { return }
        
        //spotifyAuthWebView?.dismiss(animated: true, completion: nil)
        NotificationCenter.default.removeObserver(self,
                                                  name: NSNotification.Name.Spotify.authURLOpened,
                                                  object: nil)
        
        SPTAuth.defaultInstance().handleAuthCallback(withTriggeredAuthURL: url) { (error, session) in
            //Check if there is an error because then there won't be a session.
            if let error = error {
                self.displayErrorMessage(error: error)
                return
            }
            
            // Check if there is a session
            if let session = session {
                // If there is use it to login to the audio streaming controller where we can play music.
                SPTAudioStreamingController.sharedInstance().delegate = self
                SPTAudioStreamingController.sharedInstance().login(withAccessToken: session.accessToken)
            }
        }
    }
    
    func displayErrorMessage(error: Error) {
        // When changing the UI, all actions must be done on the main thread,
        // since this can be called from a notification which doesn't run on
        // the main thread, we must add this code to the main thread's queue
        
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: "Error",
                                                    message: error.localizedDescription,
                                                    preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertController.addAction(okAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    func successfulLogin() {
        // When changing the UI, all actions must be done on the main thread,
        // since this can be called from a notification which doesn't run on
        // the main thread, we must add this code to the main thread's queue
        
        DispatchQueue.main.async {
            // Present next view controller or use performSegue(withIdentifier:, sender:)
            self.performSegue(withIdentifier: "toTabBar", sender: self)
            //self.present(PlaylistsViewController(), animated: true, completion: nil)
        }
    }
    
    func audioStreamingDidLogin(_ audioStreaming: SPTAudioStreamingController!) {
        self.successfulLogin()
    }
    
    func audioStreaming(_ audioStreaming: SPTAudioStreamingController!, didReceiveError error: Error!) {
        displayErrorMessage(error: error)
    }
    
}
