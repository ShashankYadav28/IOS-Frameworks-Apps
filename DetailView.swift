//
//  DetailView.swift
//  Apple's Framework
//
//  Created by Shashank Yadav on 27/08/25.
//

import SwiftUI


struct DetailView: View {
    let framework:Framework
    @Binding var isShowingdetailView:Bool
    @State private var ishowingsafariView = false

    var body: some View {
      
            VStack {
                
                
                HStack {
                    Spacer()
                    Button {
                        isShowingdetailView=false
                        ishowingsafariView=false
                        
                    }label:{
                        Image(systemName:"xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width:40,height:40)
                        
                        
                    }
                    .padding(.init(top: 10, leading: 0, bottom: 30, trailing: 15))
                    // Spacer()
                }
                
                FrameworkTitleView(framework: framework)
                Text(framework.description)
                    .font(.body)
                    .padding()
                
                //Spacer()
                Button{
                    ishowingsafariView = true
                }
                label:{
                    AppleButtonFramework(title: "Learn More")
                    
                }
                .padding(.top,120)
            }
            .fullScreenCover(isPresented: $ishowingsafariView ){
                SafarView(url: URL(string:framework.urlString) ?? URL(string:"www.apple.com")!)
            }
           // .padding()
            
        }
    }
#Preview {
    DetailView(framework:MockData.sampleFramework,isShowingdetailView: .constant(false))
}
