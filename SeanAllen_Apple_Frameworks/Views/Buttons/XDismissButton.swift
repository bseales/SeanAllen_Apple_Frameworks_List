//
//  XDismissButton.swift
//  SeanAllen_Apple_Frameworks
//
//  Created by Batson Seales on 6/11/23.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var detailViewIsShowing: Bool
    
    var body: some View {
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
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(detailViewIsShowing: .constant(true))
    }
}
