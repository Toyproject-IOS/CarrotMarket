//
//  SceneDelegate.swift
//  CarrotMarket
//
//  Created by 장일규 on 2022/03/14.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = CarrotViewController()
        self.window = window
        
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(
        _ scene: UIScene
    ) {
    }

    func sceneDidBecomeActive(
        _ scene: UIScene
    ) {
    }

    func sceneWillResignActive(
        _ scene: UIScene
    ) {
    }

    func sceneWillEnterForeground(
        _ scene: UIScene
    ) {
    }

    func sceneDidEnterBackground(
        _ scene: UIScene
    ) {
    }
}
