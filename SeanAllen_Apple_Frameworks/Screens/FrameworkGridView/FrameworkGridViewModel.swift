//
//  FrameworkGridViewModel.swift
//  SeanAllen_Apple_Frameworks
//
//  Created by Batson Seales on 6/11/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { detailViewIsShowing = true }
    }
    @Published var detailViewIsShowing = false
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
