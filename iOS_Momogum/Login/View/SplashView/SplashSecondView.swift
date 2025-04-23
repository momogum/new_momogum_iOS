//
//  SplashSecondView.swift
//  iOS_Momogum
//
//  Created by 서재민 on 4/24/25.
//

import SwiftUI

struct SplashSecondView: View {
    let showImage: Bool

    var body: some View {
        Image("SplashLogo")
            .resizable()
            .frame(width: 83, height: 73)
            .padding(.horizontal, 150)
            .padding(.top, 160)
            .padding(.bottom, 550)
            .opacity(showImage ? 1 : 0)
            .scaleEffect(showImage ? 1.0 : 0.5)
            .animation(.spring(response: 0.6, dampingFraction: 0.6), value: showImage)
    }
}

