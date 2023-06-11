//
//  AFButton.swift
//  SeanAllen_Apple_Frameworks
//
//  Created by Batson Seales on 6/11/23.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton("Preview Title")
    }
}
