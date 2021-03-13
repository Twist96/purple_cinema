//
//  MovieDetailsView.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct MovieDetailsView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Description")
                    .foregroundColor(.white)
                    .font(.system(size: 23, weight: .semibold))
                
                ExpandableText("Honoring Queen, their music and their outstanding vocalist Freddie Mercury, who defied stereotypes and defeated conventio")
                    .font(.system(size: 18, weight: .regular))
                    .foregroundColor(Color("text_color"))
                    .opacity(0.8)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            VStack(alignment: .leading, spacing: 4)  {
                Text("Director")
                    .foregroundColor(.white)
                    .font(.system(size: 23, weight: .semibold))
                Text("Brian Singer")
                    .chipStyle()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            VStack(alignment: .leading, spacing: 4)  {
                Text("Cast")
                    .foregroundColor(.white)
                    .font(.system(size: 23, weight: .semibold))
                ChipCollection(items: ["Brian Singer", "Gwilym Lee", "Lucy Boynton", "Joseph Mazzello"])
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 4)  {
                Text("Genre")
                    .foregroundColor(.white)
                    .font(.system(size: 23, weight: .semibold))
                ChipCollection(items: ["Dramas", "Biographies", "Musical film"])
            }
        }
        .padding()
        .background(Color("background2"))
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView()
    }
}
