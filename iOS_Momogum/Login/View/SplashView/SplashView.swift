import SwiftUI

struct SplashView: View {
    @StateObject private var viewModel = SplashViewModel()

    var body: some View {
        ZStack {
            SplashBackgroundView(animateGradient: viewModel.animateGradient)
            splashContent
        }
        .onAppear {
            viewModel.startSequence()
        }
    }


    @ViewBuilder
    private var splashContent: some View {
        switch viewModel.currentStage {
        case .first:
            SplashFirstView()
        case .second:
            SplashSecondView(showImage: viewModel.showImage)
        case .login:
            LoginView()
        }
    }
}
