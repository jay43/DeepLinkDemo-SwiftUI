//
//  DetailView.swift
//  DeepLink demo
//
//  Created by Jay Khunt on 21/12/22.
//

import SwiftUI

struct DetailView: View {
    var id: String? = nil
    
    var body: some View {
        VStack {
            Text("Detail View")
            if let id = id {
                Text("Detail View path: \(id)")
                    .bold()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
