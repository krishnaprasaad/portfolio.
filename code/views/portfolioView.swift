//
//  ContentView.swift
//  portfolio.
//
//  Created by Ramana Raj on 30/04/23.
//
import SwiftUI

struct portfolioView: View {
    
    var appmodel: AppModel = AppModel()
    
    var body: some View {
        TabView {
            NavigationView {
                ScrollView(.vertical, showsIndicators: false){
                    VStack(alignment: .leading) {
                        headerview(appModel: appmodel)

                        skillsview(skills: appmodel.portfolio.skills, width: UIScreen.main.bounds.width - 48)
                            .padding(.top,32)
                        
                        Text("Experience")
                            .font(.title)
                            .fontWeight(.bold)
                            //.font(Montserrat..font(size: 30))
                            .padding(.top,41)
                        
                        ForEach(appmodel.portfolio.experiences) { experience in
                            experienceview(experience: experience)
                                .padding(.top,42)
                        }
                    }
                    .padding(24)
                    .navigationTitle("Portfolio")
                }
            }
            .tabItem {
                Label("Portfolio", systemImage: "briefcase.fill")
            }
            
            NavigationView {
                Text("since 2023")
                    .padding()
                    .navigationTitle("About")
            }
            .tabItem {
                Label("About", systemImage: "person.fill")
            }
        }
    }
}

struct portfolioView_Previews: PreviewProvider {
    static var previews: some View {
        portfolioView()
            .colorScheme(.dark)
    }
}
