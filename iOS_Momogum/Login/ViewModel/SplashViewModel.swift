import SwiftUI

class SplashViewModel: ObservableObject {
    @Published var currentStage: SplashStep = .first
    @Published var animateGradient: Bool = false
    @Published var showImage: Bool = false

    func startSequence() {
        // Splash 1 → Splash 2
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.currentStage = .second
            self.animateGradient = true

            // 이미지 등장
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.showImage = true
            }

            // Splash 2 → Login
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.currentStage = .login
            }
        }
    }
}
