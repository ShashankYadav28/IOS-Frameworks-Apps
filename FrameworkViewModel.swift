//
//  FrameworkViewModel.swift
//  Apple's Framework
//
//  Created by Shashank Yadav on 27/08/25.
//

import SwiftUI

class FrameworkViewModel:ObservableObject {
    var selectedframework : Framework?{
        didSet {
            ishowingDetailView = true
            
        }
    }
    @Published var ishowingDetailView = false
}
