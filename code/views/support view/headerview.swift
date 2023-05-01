//
//  headerview.swift
//  portfolio.
//
//  Created by Ramana Raj on 30/04/23.
//

import SwiftUI

struct headerview: View {

    var appModel: AppModel

    var body: some View {
        VStack{
            HStack {
                Spacer()
                Image ("images")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .padding(23)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                        .opacity(0.7)
                        .shadow(radius: 30)
                )
                Spacer()
            }
            Text(appModel.portfolio.name)
                //.font(Montserrat.bold.font(size : 20))
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top,8)
            
            Text(appModel.portfolio.reg)
               // .font(Montserrat.bold.font(size : 10))
                .fontWeight(.bold)
                .font(.title2)
                .opacity(0.50)
                .padding(.top,0)
            HStack {
                //Text(appModel.portfolio.location)
                Image(systemName: "location.fill")
                    .font(.system(size: 18 ,weight: .semibold))
                    .opacity(0.7)
                Text(appModel.portfolio.location)
            }
            .padding(.top,0.3)
            .fontWeight(.bold)
            .font(.title3)
            .opacity(0.6)
            
            Text(appModel.portfolio.description)
                .fontWeight(.medium)
                .opacity(0.4)
        }
    }
}

struct headerview_Previews: PreviewProvider {
    static var previews: some View {
        headerview(appModel: AppModel())
    }
}
