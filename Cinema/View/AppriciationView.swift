//
//  AppriciationView.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct AppriciationView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Appreciate the movie")
                .font(.system(size: 23, weight: .semibold))
                .foregroundColor(Color("text_color"))
            Rating(rate: 4) { (rate) in
                
            }
        }
        .padding(.vertical, 32)
        .padding(.horizontal, 24)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color("background2"))
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
    }
}

struct AppriciationView_Previews: PreviewProvider {
    static var previews: some View {
        AppriciationView()
    }
}
