//
//  ContentView.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct HomeView: View {
    
    @State var dvPosition = CGSize.zero
    
    var body: some View {
        ZStack {
            ScrollView() {
                MovieView()
                VStack(spacing: 16) {
                    RatingsView()
                    DateView()
                    PosterView()
                    MovieDetailsView()
                    AppriciationView()
                    SimilarFilmsView()
                }
                .padding(.horizontal)
                
            }
            .padding(.bottom, 32)
            .background(Color("background1"))
            .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                DownloadView()
                    .shadow(color: Color.white.opacity(0.06), radius: 20, x: 0, y: -10)
            }
            .offset(y:screen.height/1.3)
            .offset(y: dvPosition.height)
            .gesture(
                DragGesture().onChanged{ value in
                    print(value.translation.height)
                    self.dvPosition = value.translation
                }
                .onEnded{ value in
                    print(value.translation.height)
                    if value.translation.height < -60{
                        dvPosition.height = -610
                    }else{
                        dvPosition.height = 0
                    }
                }
            )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
