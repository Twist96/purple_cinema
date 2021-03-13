//
//  VideoQualityItem.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct VideoQualityItem: View {
    var name: String
    var active: Bool
    let onClick: () -> Void
    
    var body: some View {
        Text(name)
            .font(.system(size: 18, weight: .semibold))
            .foregroundColor(Color("text_color"))
            .frame(width: 89, height: 145)
            .background(Color("background2"))
            .overlay(
                overlay
            )
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .onTapGesture {
                self.onClick()
            }
    }
    
    @ViewBuilder
    var overlay: some View{
        if active {
            ZStack(alignment: .topTrailing) {
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .stroke(Color("secondry"), lineWidth: 5)
                
                
                Triangle()
                    .frame(width: 60, height: 30)
                    .foregroundColor(Color("secondry"))
                    .rotationEffect(.degrees(45))
                    .offset(x: 18, y: -4)
                    .overlay(
                        Image("check")
                            .resizable()
                            .frame(width: 10, height: 7)
                            .offset(x: 13, y: 0)
                    )
            }
        }else{
            EmptyView()
        }
    }
}

struct VideoQualityItem_Previews: PreviewProvider {
    static var previews: some View {
        VideoQualityItem(name: "720p", active: false){}
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

                path.move(to: CGPoint(x: rect.midX, y: rect.minY))
                path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
                path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
                path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
                return path
    }
}
