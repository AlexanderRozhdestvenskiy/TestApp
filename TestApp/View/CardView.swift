//
//  CardView.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 16.11.2021.
//

import SwiftUI

struct CardView: View {
    
    var card: TableModel
    
    var body: some View {
        ZStack {
            Color("AppColor")
            
            VStack {
                Text("ID Card: \(card.id)")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                Image(systemName: card.systemName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 256, maxHeight: 256, alignment: .center)
                
                Spacer()
                
                Text("System Name: \(card.name)")
                    .font(.title)
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Card")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: TableModel.example)
    }
}
