//
//  CallItem.swift
//  ChatUI
//
//  Created by Shezad Ahamed on 6/08/21.
//

import SwiftUI

struct CallItem: View {
    
    var userImage: String = ""
    var userName: String = ""
    var status: String = ""
    var time: String = ""
    
    var body: some View {
        HStack{
            Image(userImage)
                .resizable()
                .background( Color("color_bg_inverted").opacity(0.05))
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 6){
                HStack{
                    Text(userImage)
                        .fontWeight(.semibold)
                        .padding(.top, 3)
                    Spacer()
                    Text(time)
                        .foregroundColor(Color("color_primary"))
                        .padding(.top, 3)
                }
                
                HStack{
                    Image(systemName: status == "Outgoing" ? "arrow.up.right" : "arrow.down.left")
                        .foregroundColor(Color("color_primary"))
                    Text(status)
                        .foregroundColor(Color("color_bg_inverted").opacity(0.5))
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                }
                
                Divider()
                    .padding(.top, 8)
            }
            .padding(.horizontal, 10)
        }
    }
}
