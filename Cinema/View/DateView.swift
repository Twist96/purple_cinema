//
//  DateView.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct DateView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 18) {
                HStack(spacing: 16) {
                    Image("calendar")
                    Text("2018")
                }
                
                HStack(spacing: 16) {
                    Image("globe")
                    Text("USA")
                }
                
                HStack(spacing: 16) {
                    Image("clock")
                    Text("125 Мин")
                }
                
                HStack(spacing: 16) {
                    Image("sound")
                    Text("Rus | En")
                }
            }
            .font(.system(size: 20))
            .foregroundColor(Color("text_off_white"))
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 24) {
                Image("ultra_hd")
                Image("dolby_audio")
            }
        }
        .padding(32)
        .background(Color("background2"))
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}
