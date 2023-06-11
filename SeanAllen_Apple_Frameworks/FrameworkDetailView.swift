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
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    detailViewIsShowing = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton("Learn More")
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, detailViewIsShowing: .constant(true))
    }
}
