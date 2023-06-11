//
//  Home.swift
//  Faierbase3
//
//  Created by shaima on 19/11/1444 AH.
//

import SwiftUI

struct Home: View {
    @State var searchQuery = ""
    var body: some View {
        VStack{
            VStack{
            HStack{
                
                Button(action: {}, label: {
                    Image(systemName: "star")
                        .font(.title2)
                        .foregroundColor(.primary)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "plus")
                        .font(.title2)
                        .foregroundColor(.primary)
                    
                })}
                /************************************/
                .padding()
                
                HStack{
                    (
                   Text("My")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                   +
                    Text("friends")
                        .foregroundColor(.gray)
                   )
                    .font(.largeTitle)
                    Spacer()
                }
                //**************************
                .padding()
               
            HStack(spacing: 15){
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 23, weight: .bold))
                    .foregroundColor(.gray)
                TextField("Seach", text: $searchQuery)
            }
            .padding(.vertical,10)
            .padding(.horizontal)
            .background(Color.primary.opacity(0.05))
            .cornerRadius(8)
            .padding()
            //*****************
            
            HStack{
                Text("RECENTS")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                Rectangle()
 .fill(Color.gray.opacity((0.6))
    .frame(height: 0.5)
       
       }
    .padding()
       
       }
       
        }
       ScrollView(.vertical, showsIndicators: false,
                  content:  {
     VStack(spacing: 15){
         ForEach(friends){Friend in
             FriendRowView(Friend: friend)
     }
         .padding()
 }
     .padding(.top,10)
     .overlay(
        GeometryReader{proxy -> Color in
            let miny =
            return Color.clear
        }
        }}
        
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
     
