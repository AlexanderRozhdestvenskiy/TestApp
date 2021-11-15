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
                    LazyVGrid(columns: viewModel.columns, spacing: 0) {
                            ForEach(viewModel.table) { i in
                                TableSubView(table: i)
                                    .frame(width: geometry.size.width / 2.3, height: geometry.size.width / 2.3)
                                   
                            }
                           
                        }
                    }
                }
                .navigationTitle("Table")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TableView()
                
            TableView()
                .previewDevice("iPhone SE (1st generation)")
                .preferredColorScheme(.dark)
        }
    }
}
