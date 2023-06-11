//
//  FrameworkDetailView.swift
//  SeanAllen_Apple_Frameworks
//
//  Created by Batson Seales on 6/11/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var detailViewIsShowing: Bool
    @State var safariViewIsShowing: Bool = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                safariViewIsShowing = true
            } label: {
                AFButton("Learn More")
            }
        }
        .fullScreenCover(isPresented: $safariViewIsShowing) {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "apple.com"))!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, detailViewIsShowing: .constant(true), safariViewIsShowing: false)
    }
}
