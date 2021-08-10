//
//  CallListView.swift
//  ChatUI
//
//  Created by Shezad Ahamed on 05/08/21.
//

import SwiftUI

struct CallListView: View {
    
    @State var searchText: String = ""
    
    let messages = [
        ["user":"Shezad", "message": "Outgoing", "time": "1:30 PM"],
        ["user":"Catherine", "message":"Incoming", "time": "4:25 PM"],
        ["user":"Shezad", "message":"Incoming", "time": "5:00 PM"],
        ["user":"Afna", "message": "Outgoing", "time": "8:45 PM"],
        ["user":"Mathew", "message": "Outgoing", "time": "9:00 PM"],
        ["user":"Afna", "message": "Incoming", "time": "Yesterday"],
        ["user":"Jerin", "message": "Outgoing", "time": "Yesterday"],
        ["user":"Shezad", "message":"Outgoing", "time": "Tuesday"],
        ["user":"Afna", "message": "Incoming", "time": "Tuesday"],
        ["user":"Mathew", "message": "Outgoing", "time": "Tuesday"],]
    
    var body: some View {
        ZStack{
            Color("color_bg").edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text("Calls")
                        .fontWeight(.semibold)
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "phone.badge.plus")
                        .foregroundColor(Color("color_primary"))
                        .font(.title2)
                }
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading, spacing: 5){
                        
                        SearchView(searchText: $searchText)
                        
                        VStack(spacing: 25){
                        ForEach(messages, id: \.self) { message in
         
                            CallItem(
                                userImage: String(describing: message["user"]!),
                                userName: String(describing: message["user"]!),
                                status: String(describing: message["message"]!),
                                time: String(describing: message["time"]!)
                            )
                            
                            }
                        }
                       
                    }
                }
            }
            .padding(.top)
            .padding(.horizontal)
        }
    }
}

struct CallListView_Previews: PreviewProvider {
    static var previews: some View {
        CallListView()
    }
}
