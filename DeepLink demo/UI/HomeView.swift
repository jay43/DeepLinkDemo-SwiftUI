//
//  HomeView.swift
//  DeepLink demo
//
//  Created by Jay Khunt on 21/12/22.
//

import SwiftUI

struct HomeView: View {
    var withDeepLink: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: withDeepLink ? "rhombus.fill" :  "rhombus")
                .resizable()
                .frame(width: 50, height: 70)
            Text("With Deep Link: \(withDeepLink.description)")
                .bold()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
