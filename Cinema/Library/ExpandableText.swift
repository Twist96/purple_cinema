//
//  ExpandableText.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct ExpandableText: View {
    let text: String
    @State var showMore = false
    
    internal init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        
        if showMore || text.count < 120 {
            Text(text)
                .foregroundColor(Color("text_color"))
        }else{
            Text(text.prefix(120))
                .foregroundColor(Color("text_color"))
                + Text("... ")
                .foregroundColor(Color("text_color"))
                + Text("More")
                .fontWeight(.semibold)
                .foregroundColor(Color("secondry 2"))
                .onClick(){showMore = true}
        }
    }
}

struct ExpandableText_Previews: PreviewProvider {
    static var previews: some View {
        ExpandableText("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.")
    }
}

extension Text{
    func onClick(action: @escaping () -> Void) -> Text{
        _ = self.onTapGesture(perform: action)
        return self
    }
}
