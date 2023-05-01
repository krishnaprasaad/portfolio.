//
//  skillview.swift
//  portfolio.
//
//  Created by Ramana Raj on 30/04/23.
//

import SwiftUI

struct skillview: View {
    var skill: Skill
    var width: CGFloat = 120
    
    var body: some View
    {
        VStack{
            Image(systemName: skill.image)
                .font(.system(size: 35,weight: .medium))
                //.opacity(0.8)
            
            Text(skill.skillName)
                //.font(Montserrat.semibold.font(size: 13.5))
                .padding(.top,10)
                .fontWeight(.bold)
            
            
        }.padding()
            .frame(width: width,height: 100.0)
            .background(
                RoundedRectangle(cornerRadius: 12))
            .opacity(0.3)
        
       
            
    }
}

struct skillview_Previews: PreviewProvider {
    static var previews: some View {
        skillview(skill: AppModel().portfolio.skills[0])
    }
}
