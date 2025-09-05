//
//  AppleButtonFramework.swift
//  Apple's Framework
//
//  Created by Shashank Yadav on 27/08/25.
//

import SwiftUI
struct AppleButtonFramework: View{
    var title:String
    
    var body:some View 
    {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width:280,height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        
        
    }
}
