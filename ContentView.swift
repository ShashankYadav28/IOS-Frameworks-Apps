//
//  ContentView.swift
//  Apple's Framework
//
//  Created by Shashank Yadav on 26/08/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewmodel = FrameworkViewModel()
    
    let columns:[GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns:columns){
                    ForEach(MockData.frameworks,id: \.id){ framework in
                        FrameworkTitleView(framework:framework)
                            .onTapGesture {
                                viewmodel.selectedframework = framework
                            }
                    }
                    
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented:$viewmodel.ishowingDetailView){
                    DetailView(framework: viewmodel.selectedframework ?? MockData.sampleFramework,isShowingdetailView: $viewmodel.ishowingDetailView)
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}

struct FrameworkTitleView : View {
    let framework:Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
            
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:90 , height:90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

/*struct DetailView: View {
    let name:String
    let imageName:String
    let description:String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:90,height:90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
            Text(description)
                
        }
    }
    
    
}*/
    
        

