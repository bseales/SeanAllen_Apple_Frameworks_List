//
//  ContentView.swift
//  SeanAllen_Apple_Frameworks
//
//  Created by Batson Seales on 6/10/23.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.detailViewIsShowing) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, detailViewIsShowing: $viewModel.detailViewIsShowing)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
