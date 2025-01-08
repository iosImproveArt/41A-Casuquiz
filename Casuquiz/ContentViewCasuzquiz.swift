
import SwiftUI

struct ContentViewCasuzquiz: View {
    @AppStorage("notificationsAvalible") var notificationsAvalible = true
    @State var showLoading = true
    @State var selectedTab: Tabs = .quiz
    
    var wtgv = 14143514514
    var wtgwvtgv = "wtgvwtgv"
    func wtgcetghvbtwvwtg() -> Float { return 14514.1454 }
    func wrfcete() { print("wrcfrfccr") }
    private struct wrfccwrRFC {}
    
    var body: some View {
        ZStack {
            NavigationView {
                ZStack(alignment: .bottom) {
                    VStack {
                        topBar
                        
                        switch selectedTab {
                        case .quiz:
                            QuestionPickViewCasuzquiz()
                        case .profile:
                            ProfileViewCasuzquiz()
                        case .facts:
                            FactsViewCasuzquiz()
                        case .questions:
                            QuestionsViewCasuzquiz()
                        }
                        tapBar
                    }.background(2, padding: 0)
                }
            }
            
            LoadingViewSQ(showView: $showLoading)
                .opacity(showLoading ? 1: 0)
                .onChange(of: showLoading) { newValue in
                    AppDelegate.orientationLock = .portrait
                }
        }
    }
    
    private var topBar: some View {
        HStack {
            NavigationLink {
                PrivacyViewCasuzquiz(showLoading: .constant(true), fromMainView: true)
            } label: {
                Text("Privacy policy")
                    .withFont(size: 16, weight: .light, color: .hex("FFFFFF"))
            }
            
            Spacer()
            
            Button {
                notificationsAvalible.toggle()
                if notificationsAvalible {
                    NotificationManagerCasuzquiz.shared.createDailyNotification()
                } else {
                    NotificationManagerCasuzquiz.shared.removePendingNotifications()
                }
            } label: {
                Image("notification.label")
                    .grayscale(notificationsAvalible ? 0: 1)
            }
        }.padding(.horizontal)
    }
    
    private var tapBar: some View {
        HStack {
            Button {
                selectedTab = .quiz
            } label: {
                Image("tab 1")
                    .opacity(selectedTab == .quiz ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .profile
            } label: {
                Image("tab 2")
                    .opacity(selectedTab == .profile ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .facts
            } label: {
                Image("tab 3")
                    .opacity(selectedTab == .facts ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .questions
            } label: {
                Image("tab 4")
                    .opacity(selectedTab == .questions ? 1: 0.6)
            }
        }.padding(.horizontal, 40)
            .padding(.vertical)
            .padding(.bottom, 50)
            .background {
                Color.hex("4A1986")
                .edgesIgnoringSafeArea(.all)
            }
            .cornerRadius(41)
            .padding(.bottom, isSE ? -50: -60)
    }
}

#Preview {
    ContentViewCasuzquiz(showLoading: false)
}


enum Tabs {
    case quiz
    case profile
    case facts
    case questions
}


