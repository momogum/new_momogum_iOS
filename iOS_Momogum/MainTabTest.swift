//import SwiftUI
//
//struct ContentView: View {
//    @State private var selectedTab: Tab = .home
//
//    enum Tab {
//        case home, search, register, favorites, profile
//    }
//
//    var body: some View {
//        ZStack {
//            // 메인 컨텐츠 영역
//            switch selectedTab {
//            case .home:
//                Text("홈 화면")
//            case .search:
//                Text("검색 화면")
//            case .register:
//                Text("밥일기 등록 화면")
//            case .favorites:
//                Text("맛집 화면")
//            case .profile:
//                Text("프로필 화면")
//            }
//
//            VStack {
//                Spacer()
//                CustomTabBar(selectedTab: $selectedTab)
//            }
//        }
//        .edgesIgnoringSafeArea(.bottom)
//    }
//}
//
//struct CustomTabBar: View {
//    @Binding var selectedTab: ContentView.Tab
//
//    var body: some View {
//        ZStack {
//            // 배경
//            RoundedRectangle(cornerRadius: 20)
//                .fill(Color.white)
//                .frame(height: 80)
//                .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: -2)
//
//            HStack {
//                TabBarButton(icon: "house", title: "홈", tab: .home, selectedTab: $selectedTab)
//                TabBarButton(icon: "magnifyingglass", title: "검색", tab: .search, selectedTab: $selectedTab)
//
//                Spacer()
//                    .frame(width: 60) // 플로팅 버튼 공간 확보
//
//                TabBarButton(icon: "fork.knife", title: "맛집", tab: .favorites, selectedTab: $selectedTab)
//                TabBarButton(icon: "person", title: "프로필", tab: .profile, selectedTab: $selectedTab)
//            }
//            .padding(.horizontal, 25)
//
//            // 가운데 플로팅 버튼
//            Button(action: {
//                selectedTab = .register
//            }) {
//                ZStack {
//                    Circle()
//                        .fill(Color(red: 220/255, green: 85/255, blue: 65/255)) // 예시 색상
//                        .frame(width: 60, height: 60)
//                    Image(systemName: "plus")
//                        .foregroundColor(.white)
//                        .font(.system(size: 30))
//                }
//            }
//            .offset(y: -30)
//        }
//    }
//}
//
//struct TabBarButton: View {
//    let icon: String
//    let title: String
//    let tab: ContentView.Tab
//    @Binding var selectedTab: ContentView.Tab
//
//    var body: some View {
//        Button(action: {
//            selectedTab = tab
//        }) {
//            VStack(spacing: 4) {
//                Image(systemName: icon)
//                    .font(.system(size: 20))
//                    .foregroundColor(selectedTab == tab ? Color(red: 220/255, green: 85/255, blue: 65/255) : .gray)
//                Text(title)
//                    .font(.caption)
//                    .foregroundColor(selectedTab == tab ? Color(red: 220/255, green: 85/255, blue: 65/255) : .gray)
//            }
//        }
//    }
//}
