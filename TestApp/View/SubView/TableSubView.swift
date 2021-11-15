//
//  TableSubView.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI

struct TableSubView: View {
    
    var table: TableModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.pink)
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 4)
                .foregroundColor(.white)
            VStack(alignment: .center) {
                Spacer()
                Image(systemName: table.systemName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Spacer()
                HStack {
                    Text(table.name)
                    Spacer()
                    Text("\(table.id)")
                }
                .frame(alignment: .center)
                .padding()
            }
            .foregroundColor(.primary)
        }
        .padding(10)
    }
}

struct TableSubView_Previews: PreviewProvider {
    static var previews: some View {
        TableSubView(table: TableModel.example)
            .preferredColorScheme(.dark)
    }
}
