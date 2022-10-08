//
//  TypeCard.swift
//  dife
//
//  Created by Ria Baxi on 2022-10-08.
//


import SwiftUI

struct ProductCard: View {
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing){
        ZStack (alignment:.bottom){
            Image(product.image)
                .resizable()
                .cornerRadius(20)
                .frame(width:180)
                .scaledToFit ()
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.headline)
                    
                
            }
            .padding()
            .frame(width: 180, alignment: .leading)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
             
            
        }
        .frame(width:180, height: 220)
        .shadow(radius: 3)
           
            }
    }
    
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            ProductCard(product: ProductList[0])
        }
    }
}
