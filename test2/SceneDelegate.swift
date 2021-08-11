//
//  SceneDelegate.swift
//  test2
//
//  Created by Kate Roberts on 11/08/2021.
//  Copyright © 2021 SaLT for my Squid. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
    class SceneDelegate: UIResponder, UIWindowSceneDelegate {
        
        var window: UIWindow?
        
        @available(iOS 13.0, *)
        func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            
            let windowScene = UIWindowScene(session: session, connectionOptions: connectionOptions)
            self.window = UIWindow(windowScene: windowScene)
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let initialViewController = storyboard.instantiateViewController(withIdentifier: "VC" )
            self.window?.rootViewController = initialViewController
            
            self.window?.makeKeyAndVisible()
        }
    }

