//
//  SceneDelegate.swift
//  iOS_Momogum
//
//  Created by 서재민 on 3/27/25.
//
import UIKit
import Foundation
import KakaoSDKAuth

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
        func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let url = URLContexts.first?.url {
            if (AuthApi.isKakaoTalkLoginUrl(url)) {
                _ = AuthController.handleOpenUrl(url: url)
            }
        }
    }
}
