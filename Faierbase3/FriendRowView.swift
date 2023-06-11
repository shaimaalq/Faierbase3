//
//  FriendRowView.swift
//  Faierbase3
//
//  Created by shaima on 19/11/1444 AH.
//

import SwiftUI

struct FriendRowView: View {
    var frind: Friend
    var body: some View {
        HStack(spacing: 15){
            Image(frind.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 8, content: {
                Text(frind.name)
                    .fontWeight(.bold)
                Text(frind.detail)
                    .font(.caption)
                    .foregroundColor(.gray)
                
            })
            .frame(maxWidth: .infinity,alignment: .leading)
            Button(action: {}, label: {
                Image(systemName: "message.fill")
                    .foregroundColor(Color("yellow"))
                    .padding()
                    .background(Color("yellow").opacity(0.2))
                    .clipShape(Circle())
        }
        .padding(.horizontal)
    }
}
struct FriendRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
