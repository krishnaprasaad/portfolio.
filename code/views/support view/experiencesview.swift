//
//  experiencesview.swift
//  portfolio.
//
//  Created by Ramana Raj on 30/04/23.
//
import SwiftUI

struct experiencesview: View {
    var experiences: [Experience]
    @State var showExperiences = true
    
    var body: some View {
        VStack(alignment: .leading,spacing: 24)
        {
            HStack(spacing: 16)
            {
                Text("Experiences")
                    .font(.title)
                    .fontWeight(.bold)
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showExperiences.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom,14)
            
            if(showExperiences){
                ForEach(experiences) { experience in
                    ExperienceRow(experience: experience)
                }
            }
        }
    }
}

struct ExperienceRow: View {
    var experience: Experience
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(experience.companyName)
                .font(.headline)
                .fontWeight(.medium)
            
            Text(experience.duration)
                .foregroundColor(.gray)
                .font(.caption)
            
            Text(experience.role)
                .foregroundColor(.secondary)
                .font(.body)
        }
    }
}

struct experiencesview_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            experiencesview(experiences: AppModel().portfolio.experiences)
                .padding(24)
        }
    }
}
