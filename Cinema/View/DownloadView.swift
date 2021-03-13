//
//  DownloadView.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        VStack {
            Color.white.opacity(0.5)
                .frame(width: 35, height: 5)
                .cornerRadius(9)
                .padding(.top, 12)
                .padding(.bottom, 32)
            
            Text("Bohemian Rhapsody")
                .font(.system(size: 23, weight: .semibold))
                .foregroundColor(Color("text_color"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 24)
                .padding(.leading, 16)
            
            Text("Quality")
                .font(.system(size: 20))
                .foregroundColor(Color.white.opacity(0.8))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
            
            VideoQualityView(vidoeQulaities: ["720p", "1080p", "1440p", "2k"])
            
            VoiceActingView(languages: ["Russian", "English", "Spanish"])
                .padding(.horizontal, 24)
                .padding(.vertical, 24)
            
            Button(action: {}) {
                VStack {
                    Text("Download movie")
                        .foregroundColor(Color("text_color"))
                    Text("946 Mb")
                        .font(.caption)
                        .foregroundColor(Color("text_color").opacity(0.8))
                }

            }
            .font(.system(size: 20, weight: .bold))
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity)
            .background(Color("primary"))
            .cornerRadius(17)
            .padding()
            .padding(.bottom, 32)
        }
        .background(Color("background1"))
        .cornerRadius(24, corners: [.topLeft, .topRight])
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadView()
    }
}
