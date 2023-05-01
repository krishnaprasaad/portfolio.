//
//  skillsview.swift
//  portfolio.
//
//  Created by Ramana Raj on 30/04/23.
//

import SwiftUI

struct skillsview: View {
    
    var skills:[Skill]
    var width: CGFloat
    
    @State var showskills = true
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16){
                Text(" skills")
                    //.font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                    .fontWeight(.bold)
                    .font(.title)
                
                Button{
                    withAnimation(.easeInOut(duration: 0.35)){
                        showskills.toggle()
                    }
                } label: {
                Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showskills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
                
            }
            if(showskills){
                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()], alignment: .leading,spacing:12){
                    ForEach(skills) { skill in
                        skillview(skill:skill, width: width/3-15)
                    }
                }.padding(.top,3)
            }
        }
    }
}

struct skillsview_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            skillsview(skills: AppModel().portfolio.skills,width: 400)
                .padding(10)
        }
    }
}
