//
//  PresentScreen.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 26/11/22.
//

import SwiftUI

protocol SendData {
    func onSend(value: String)
}

struct PresentScreen: View {
    
    @Environment(\.presentationMode) var screen
    
    var data = "No Data"
    
    var sendData: SendData?
    
    var body: some View {
        VStack {
            Text(data)
                .padding()
            
            Button(action: {
                sendData?.onSend(value: "OgabekDev")
                screen.wrappedValue.dismiss()
            }, label: {
                Text("Back to Home")
            })
        }
    }
}

struct PresentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PresentScreen()
    }
}
