//
//  experienceview.swift
//  portfolio.
//
//  Created by Ramana Raj on 30/04/23.
//

import SwiftUI

struct experienceview: View {
    
    var experience: Experience
    var body: some View {
        VStack(alignment: .leading){
            Circle()
                .frame(width: 20,height: 20)
                .opacity(0.65)
            HStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width:3)
                    .padding(.leading, 3)
                VStack(alignment: .leading){
                    Text(experience.role)
                        .font(Montserrat.semibold.font(size:18.5))
                    
                    Text(experience.companyName)
                        .font(Montserrat.medium.font(size: 16.5))
                        .opacity(0.75)
                        .padding(.top,4)
                    
                    Text(experience.duration)
                        .font(Montserrat.mediumItalic.font(size: 16.5))
                        .opacity(0.45)
                        .padding(.top,14)
                }.padding(16)
                
            }.padding(.top,8)
            
        }.fixedSize()
    }
}

struct experienceview_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader {proxy in
            experienceview(experience: AppModel().portfolio.experiences[0])
                .padding(24)
        }
    }
}
