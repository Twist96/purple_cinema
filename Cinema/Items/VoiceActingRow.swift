//
//  VoiceActingItem.swift
//  Cinema
//
//  Created by Tochi on 23/02/2021.
//

import SwiftUI

struct VoiceActingRow: View {
    
    let title: String
    let isActive: Bool
    let action: () -> Void
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(Color("text_color"))
            Spacer()
            Checkbox(active: isActive, action: action)
        }
    }
}

struct VoiceActingRow_Previews: PreviewProvider {
    static var previews: some View {
        VoiceActingRow(title: "Russian", isActive: true){}
            .previewLayout(.sizeThatFits)
    }
}
