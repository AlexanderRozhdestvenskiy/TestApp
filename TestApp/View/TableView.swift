//
//  TableView.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI

struct TableView: View {
    
    @StateObject private var viewModel = TableViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("AppColor")
                GeometryReader { geometry in
                    ScrollView {
                        LazyVGrid(columns: viewModel.columns, spacing: 16) {
                            ForEach(viewModel.table) { i in
                                NavigationLink(destination: CardView(card: i)) {
                                    TableSubView(table: i)
                                        .aspectRatio(3/4, contentMode: .fit)
                                }
                            }
                        }
                        .padding()
                    }
                    .navigationTitle("Table")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TableView()
            
            TableView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone SE (1st generation)")
                
        }
    }
}
