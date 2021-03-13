//
//  VideoQualityView.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct VideoQualityView: View {
    
    var vidoeQulaities: [String]
    @State var activeIndex: Int = 1
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 18) {
                ForEach(vidoeQulaities.indices, id: \.self) { index in
                    VideoQualityItem(name: vidoeQulaities[index],
                                     active: activeIndex == index){
                        self.activeIndex = index
                    }
                    .padding(.leading, index == 0 ? 16 : 0)
                    .padding(.trailing, index == vidoeQulaities.count - 1 ? 16 : 0)
                }
            }
            .padding(.vertical, 4)
        }
    }
}

struct VideoQualityView_Previews: PreviewProvider {
    static var previews: some View {
        VideoQualityView(vidoeQulaities: ["720p", "1080p", "1440p", "2k"])
            .previewLayout(.sizeThatFits)
    }
}
