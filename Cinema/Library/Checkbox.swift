//
//  Checkbox.swift
//  Cinema
//
//  Created by Tochi on 23/02/2021.
//

import SwiftUI

struct Checkbox: View {
    
    var active = false
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image("check")
                .opacity(active ? 1 : 0)
        }
        .padding()
        .background(background)
        .cornerRadius(11)
    }
    
    @ViewBuilder
    var background: some View{
        if active{
            Color("primary")
        }else{
            RoundedRectangle(cornerRadius: 11)
                .stroke(Color.white.opacity(0.1), lineWidth: 1)
        }
    }
}

struct Checkbox_Previews: PreviewProvider {
    static var previews: some View {
        Checkbox(active: true){}
    }
}
