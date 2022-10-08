//
//  ContentView.swift
//  dife
//
//  Created by Ria Baxi on 2022-10-08.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem (.adaptive(minimum: 160), spacing:30)]
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid<<#Content: View#>>(columns: columns, spacing:30){
                    ForEach(ProductList, id: \.id) { product in ProductCard(product: product)
                    }
                    
                }
                .padding()
            }
            .navigationTitle(Text("Safety Tips"))
            }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
                    
                            }
