//
//  RootView.swift
//  NavigationToRootView
//
//  Created by Kinney Kare on 10/29/24.
//

import SwiftUI

struct RootView: View {
    @State var viewModel = RootViewModel()
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 100) {
                Text("This is the root view")
                Button {
                    viewModel.finishProfileViewIsActive = true
                } label: {
                    Text("Continue to View 2")
                }
                
            }
            .navigationDestination(isPresented: $viewModel.finishProfileViewIsActive, destination: { View2().environment(viewModel)
        })
        }
    }
}

#Preview {
    RootView()
}
