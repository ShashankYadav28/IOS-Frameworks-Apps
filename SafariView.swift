//
//  SafariView.swift
//  Apple's Framework
//
//  Created by Shashank Yadav on 27/08/25.
//

import SwiftUI
import SafariServices
struct SafarView:UIViewControllerRepresentable {
    let url:URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafarView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
        
        
        
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}
