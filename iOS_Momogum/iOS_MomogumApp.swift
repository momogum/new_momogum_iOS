//
//  iOS_MomogumApp.swift
//  iOS_Momogum
//
//  Created by 서재민 on 2/25/25.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth
@main
struct iOS_MomogumApp: App {
   
    
    @UIApplicationDelegateAdaptor var appDelegate: AppDelegate
//    init() {
//        let kakaoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
//            // Kakao SDK 초기화
//        KakaoSDK.initSDK(appKey: kakaoAppKey as! String)
//        }
//    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
