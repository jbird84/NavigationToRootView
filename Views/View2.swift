//
//  View2.swift
//  NavigationToRootView
//
//  Created by Kinney Kare on 10/29/24.
//

import SwiftUI

struct View2: View {
    @Environment(RootViewModel.self) var rootViewModel
    @State var showFinishView = false
    var body: some View {
        VStack {
            Text("This is View 2")
            Spacer()
            Button {
                rootViewModel.finishProfileViewIsActive = true
                showFinishView.toggle()
            } label: {
                Text("Go to view 3 please")
            }

        }
        .padding(.vertical, 100)
        .navigationDestination(isPresented: $showFinishView, destination: { View3().environment(rootViewModel)
    })
    }
}

#Preview {
    View2()
}
