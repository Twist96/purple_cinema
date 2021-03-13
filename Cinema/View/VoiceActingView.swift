//
//  VoiceActingView.swift
//  Cinema
//
//  Created by Tochi on 23/02/2021.
//

import SwiftUI

struct VoiceActingView: View {
    let languages: [String]
    @State var activeIndex: Int = -1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Voice acting")
                .foregroundColor(Color("text_color").opacity(0.8))
                .font(.system(size: 20))
                .padding(.bottom, 8)
            ForEach(languages.indices, id: \.self) { index in
                VoiceActingRow(title: languages[index], isActive: activeIndex == index){
                    if activeIndex == index{
                        self.activeIndex = -1
                    }else{
                        self.activeIndex = index
                    }
                }
            }
        }
        .background(Color("background1"))
    }
}

struct VoiceActingView_Previews: PreviewProvider {
    static var previews: some View {
        VoiceActingView(languages: ["Russian", "English", "Spanish"])
    }
}
