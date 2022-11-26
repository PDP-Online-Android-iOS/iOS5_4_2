//
//  HomeScreen.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 26/11/22.
//

import SwiftUI

struct HomeScreen: View, SendData {
    
    @State var data = "No Data"
    @State var showDetails = false
    
    func onSend(value: String) {
        data = value
    }
    
    var body: some View {
        VStack {
            Text(data)
                .padding()
            
            Button(action: {
                showDetails.toggle()
            }, label: {
                Text("Screen Present")
            }).sheet(isPresented: $showDetails, content: {
                PresentScreen(data: "Android & iOS Developer", sendData: self)
            })
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
