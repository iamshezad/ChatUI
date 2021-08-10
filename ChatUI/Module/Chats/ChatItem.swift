//
//  ChatItem.swift
//  ChatUI
//
//  Created by Shezad Ahamed on 6/08/21.
//

import SwiftUI

struct ChatItem: View {
    
    var userImage: String = ""
    var userName: String = ""
    var message: String = ""
    var time: String = ""
    
    var body: some View {
        HStack{
            Image(userImage)
                .resizable()
                .background( Color("color_bg_inverted").opacity(0.05))
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 8){
                HStack{
                    Text(userName)
                        .fontWeight(.semibold)
                        .padding(.top, 3)
                    Spacer()
                    Text(time)
                        .foregroundColor(Color("color_primary"))
                        .padding(.top, 3)
                }
                
                
                Text(message)
                    .foregroundColor(Color("color_bg_inverted").opacity(0.5))
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                Divider()
                    .padding(.top, 8)
            }
            .padding(.horizontal, 10)
        }
    }
}
