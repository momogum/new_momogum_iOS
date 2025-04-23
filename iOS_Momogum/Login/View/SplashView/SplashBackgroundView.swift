import SwiftUI

struct SplashBackgroundView: View {
    let animateGradient: Bool

    var body: some View {
        ZStack {
            Color.Red_2
            LinearGradient(colors: [.Red_2, .Red_6],
                           startPoint: .top,
                           endPoint: .bottom)
                .opacity(animateGradient ? 1 : 0)
                .animation(.easeInOut(duration: 3), value: animateGradient)
        }
        .ignoresSafeArea()
    }
}
