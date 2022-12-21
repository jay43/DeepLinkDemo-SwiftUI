//
//  DeepLink_demoApp.swift
//  DeepLink demo
//
//  Created by Jay Khunt on 21/12/22.
//

import SwiftUI

@main
struct DeepLink_demoApp: App {
    @State var deeplinkTarget: DeeplinkManager.DeeplinkTarget?
    
    var body: some Scene {
        WindowGroup {
            Group {
                switch self.deeplinkTarget {
                case .home:
                    HomeView(withDeepLink: true)
                case .details(let queryInfo):
                    DetailView(id: queryInfo)
                case .none:
                    HomeView()
                }
            }
            .onOpenURL { url in
                let deeplinkManager = DeeplinkManager()
                let deeplink = deeplinkManager.manage(url: url)
                self.deeplinkTarget = deeplink
            }
        }
    }
}
