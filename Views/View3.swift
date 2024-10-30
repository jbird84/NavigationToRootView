//
//  View3.swift
//  NavigationToRootView
//
//  Created by Kinney Kare on 10/29/24.
//

import SwiftUI

struct View3: View {
    @Environment(RootViewModel.self) var rootViewModel
    var body: some View {
        VStack {
            Text("This is the Last View")
            
            Button {
                rootViewModel.finishProfileViewIsActive = false 
            } label: {
                Text("Go Home To Root View")
            }

        }
    }
}

#Preview {
    View3()
}
