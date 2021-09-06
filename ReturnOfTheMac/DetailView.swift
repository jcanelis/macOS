//
//  DetailView.swift
//  ReturnOfTheMac
//
//  Created by John Canelis on 5/10/21.
//

import SwiftUI
import Contentful

struct DetailView: View {
    
    var item: Product!
    
    @State var showingModal: Bool = false
    
    init(item: Product) {
        self.item = item
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                AsyncImage(url: item.mainPhoto!.url!) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color("Grey")
                }
                .frame(width: 400.0, height: 400.0)
                
                Button("wowza") {
                    showingModal.toggle()
                }
                
                Text("\(item.price!)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.all, 24.0)
                
                Text("\(item.id)")
                    .font(.subheadline)
                    .padding(.all, 24.0)
                
                Text(item.description!)
                    .font(.body)
                    .padding(.all, 24.0)
                
            }
            
            SwitchView(item: item)
        }
        .padding(.all, 24.0)
        .sheet(isPresented: $showingModal) {
            VStack {
                AsyncImage(url: item.mainPhoto!.url!) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color("Grey")
                }
                .frame(width: 200.0, height: 200.0)
                
                Button("Add to Cart") {
                    showingModal.toggle()
                }
            }
            .frame(width: 400.0, height: 400.0)
        }
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button("Add to Cart") {
                    print("Clicked cart button")
                }
            }
        }
    }
}
